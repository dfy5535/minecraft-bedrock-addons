# ============================================================================
# ★ v2.0.1 修正：追加「锚点落点必须是开阔空气」的守卫 —— 否则锚点会钻进山体里长出看不见的建筑
# rsf_scan —— 选址核心（时钟已上移到 rsf_main）
# 职责：区域标记 → 六条件筛选 → 调用生成钩子 → 成功门控 → 重试窗口
# ============================================================================

# ---------- 1. 记录本 tick 前的回执计数 ----------
scoreboard players operation RSF_GLOBAL rsf_last = RSF_GLOBAL rsf_count

# ---------- 2. 玩家区域标记（40 进 / 48 出，滞回防抖）----------
# ⚠️ 选择器半径必须是字面量，不能用计分板
execute as @a at @s if entity @e[tag=rsf_site,r=40] run tag @s add rsf_in_zone
execute as @a[tag=rsf_in_zone] at @s unless entity @e[tag=rsf_site,r=48] run tag @s remove rsf_in_zone

# ---------- 3. 六条件筛选链 ----------
# ① 时钟到点（周期可热改）  ② 总开关  ③ 随机挑一名不在生成区内的玩家
# ④⑤ 脚下是实心地面（非空气/非水/非岩浆，三世界通用）
# ⑥ 防重叠半径内没有已有生成物
execute if score RSF_GLOBAL rsf_cd >= period rsf_cfg if score enabled rsf_cfg matches 1 as @r[tag=!rsf_in_zone] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water unless block ~ ~-1 ~ lava unless entity @e[tag=rsf_site,r=180] if block ~25 ~ ~25 air run function rsf_spawn

# ---------- 4. 成功门控：只有"真的生成了"才把时钟归零 ----------
# 用回执计数是否变化判断，绝不能用"条件成立就归零"（召唤静默失败时会误判成功→永不重试）
execute if score RSF_GLOBAL rsf_count > RSF_GLOBAL rsf_last run scoreboard players set RSF_GLOBAL rsf_cd 0

# ---------- 5. 重试窗口：到 retry_at 仍未成功 → 退回 (period - retry) ----------
execute if score RSF_GLOBAL rsf_cd >= retry_at rsf_cfg run scoreboard players operation RSF_GLOBAL rsf_cd = period rsf_cfg
execute if score RSF_GLOBAL rsf_cd >= retry_at rsf_cfg run scoreboard players operation RSF_GLOBAL rsf_cd -= retry rsf_cfg
