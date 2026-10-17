# ============================================================================
# lg_scan —— ★ 框架核心（照抄自实测通过的 RSF v1.0.0，仅改名）★
# 职责：时钟 → 区域标记 → 六条件筛选 → 调用生成钩子 → 成功门控 → 重试窗口
# ============================================================================

# ---------- 1. 全局时钟 ----------
scoreboard players add LG_GLOBAL lg_cd 1

# ---------- 2. 记录本 tick 前的回执计数（第 5 步用它判断"是否真的生成了"）----------
scoreboard players operation LG_GLOBAL lg_last = LG_GLOBAL lg_count

# ---------- 3. 玩家区域标记（带滞回，防边界抖动）----------
# ⚠️ 选择器的半径必须是字面量，不能用计分板；改半径要改这里
execute as @a at @s if entity @e[tag=lg_site,r=40] run tag @s add lg_in_zone
execute as @a[tag=lg_in_zone] at @s unless entity @e[tag=lg_site,r=48] run tag @s remove lg_in_zone

# ---------- 4. 六条件筛选链 ----------
# ① 时钟到点（可热改）② 总开关
# ③ 随机挑一名不在生成区内的玩家  ④⑤ 脚下是实心地面
# ⑥ 防重叠半径内没有已有生成物
execute if score LG_GLOBAL lg_cd >= period lg_cfg if score enabled lg_cfg matches 1 as @r[tag=!lg_in_zone] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water unless entity @e[tag=lg_site,r=180] run function lg/spawn

# ---------- 5. 成功门控：只有"真的生成了"才把时钟归零 ----------
# ⚠️ 绝不能用"条件成立就归零"——召唤静默失败时会误判成功，导致永不重试。
execute if score LG_GLOBAL lg_count > LG_GLOBAL lg_last run scoreboard players set LG_GLOBAL lg_cd 0

# ---------- 6. 重试窗口：到 retry_at 仍未成功 → 退回 (period - retry) ----------
execute if score LG_GLOBAL lg_cd >= retry_at lg_cfg run scoreboard players operation LG_GLOBAL lg_cd = period lg_cfg
execute if score LG_GLOBAL lg_cd >= retry_at lg_cfg run scoreboard players operation LG_GLOBAL lg_cd -= retry lg_cfg

# ---------- 7. 遗迹种子处理：落地门控 + 地形识别 ----------
# ★ 先给"任何来源"的种子补上初始 lg_ready
#   来源不止 lg/spawn：spawn_rules 自然刷出的种子、管理员手动 /summon 的种子，
#   都**没有** lg_ready 分数。而落地门控的条件是 scores={lg_ready=0} ——
#   计分板对"没有分数"的实体是不匹配的，于是这类种子只会一直往下掉、永远不建建筑
#   （实测：手动 /summon 后必须再补一条 scoreboard set 才会生效，这就是那个坑）。
#   惯用法：`unless score @s <obj> matches <范围>` 对"没有分数"的实体成立 → 正好用来补 0。
execute as @e[type=lucky:wild_seed] unless score @s lg_ready matches -100..100 run scoreboard players set @s lg_ready 0

# 落地门控（照抄 rsf_settle 思路）：种子还在半空时不识别地形，
# 落地（脚下非空气）后才置 lg_ready=1，generate_at_seed 以此为前提。
#
# ⚠️ 这里只需要写一遍，**不要**按维度展开成三行（overworld / nether / the_end）：
#   · 基岩版的 `@e` 是**全局**的（跨维度），这一点和 Java 相反 —— Java 里 @e 只筛当前维度。
#     实测：把一颗种子只召唤在下界，从主世界上下文 `testfor @e[type=lucky:wild_seed]`
#     → Found；`execute in the_end if entity @e[type=armor_stand,name="LG_Boot"]`
#     （该哨兵只在主世界存在）→ 同样成立。
#   · 所以写成三行 = 每 tick 把**同一批种子**处理三遍（每行的 @e 都选到全局集合），
#     是纯粹的错误，不会带来任何维度覆盖上的好处。
#   · 维度覆盖靠的是 `at @s`：它会把执行维度切到种子自己所在的维度，
#     于是 `unless block ~ ~-1 ~` 与 generate_at_seed 里的 `setblock ~ ~ ~` 都作用在
#     种子所在的维度。下界 / 末地的地形识别分支在 generate_at_seed 里
#     （netherrack / basalt / blackstone / crimson_nylium / warped_nylium → 下界；
#       end_stone → 末地），已实机验证。
execute as @e[type=lucky:wild_seed,scores={lg_ready=0}] at @s unless block ~ ~-1 ~ air run scoreboard players set @s lg_ready 1

# ★ 自身若被实体方块埋住（种子正好落在山体内部）→ 直接丢弃
#   否则会在山体里长出一座"被埋起来的"建筑：地表看不出来、玩家也钻不进去。
#   水中不算埋住 —— 海洋族的种子会一路沉到海底，它自己那一格是水，属于正常情况。
execute as @e[type=lucky:wild_seed,scores={lg_ready=1}] at @s unless block ~ ~ ~ air unless block ~ ~ ~ water run scoreboard players add LG_GLOBAL lg_discard 1
execute as @e[type=lucky:wild_seed,scores={lg_ready=1}] at @s unless block ~ ~ ~ air unless block ~ ~ ~ water run event entity @s lucky:despawn
execute as @e[type=lucky:wild_seed,scores={lg_ready=1}] at @s unless block ~ ~ ~ air unless block ~ ~ ~ water run kill @s

execute as @e[type=lucky:wild_seed,scores={lg_ready=1}] at @s run function lucky/worldgen/generate_at_seed
