# ============================================================================
# rsf/scan —— 选址核心：时钟 → 区域滞回 → 七条件筛选 → 生成钩子 → 成功门控 → 重试窗口
# ============================================================================

# ---------- 1. 全局时钟 ----------
scoreboard players add RSF_GLOBAL rsf_cd 1

# ---------- 2. 记录本 tick 前的回执计数（第 5 步用它判断"是否真的生成了"）----------
scoreboard players operation RSF_GLOBAL rsf_last = RSF_GLOBAL rsf_count

# ---------- 3. 玩家区域标记（40 进 / 48 出，滞回防抖）----------
# ⚠️ 选择器半径必须是字面量，不能用计分板；改半径要改这里
execute as @a at @s if entity @e[tag=rsf_site,r=40] run tag @s add rsf_in_zone
execute as @a[tag=rsf_in_zone] at @s unless entity @e[tag=rsf_site,r=48] run tag @s remove rsf_in_zone

# ---------- 4. 七条件筛选链 ----------
# ① 时钟到点（可热改） ② 总开关 ③ 随机挑一名不在生成区内的玩家
# ④⑤⑥ 脚下是实心地面（非空气/水/岩浆，三维度通用）
# ⑦ 防重叠半径内没有已有生成物（r= 按维度隔离，不会跨维度误判）
execute if score RSF_GLOBAL rsf_cd >= period rsf_cfg if score enabled rsf_cfg matches 1 as @r[tag=!rsf_in_zone] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water unless block ~ ~-1 ~ lava unless entity @e[tag=rsf_site,r=180] run function rsf/spawn

# ---------- 5. 成功门控：只有"真的生成了"才把时钟归零 ----------
# 用回执计数是否变化判断；绝不能"条件成立就归零"（召唤静默失败时会误判成功 → 永不重试）
execute if score RSF_GLOBAL rsf_count > RSF_GLOBAL rsf_last run scoreboard players set RSF_GLOBAL rsf_cd 0

# ---------- 6. 重试窗口：到 retry_at 仍未成功 → 退回 (period - retry) ----------
execute if score RSF_GLOBAL rsf_cd >= retry_at rsf_cfg run scoreboard players operation RSF_GLOBAL rsf_cd = period rsf_cfg
execute if score RSF_GLOBAL rsf_cd >= retry_at rsf_cfg run scoreboard players operation RSF_GLOBAL rsf_cd -= retry rsf_cfg
