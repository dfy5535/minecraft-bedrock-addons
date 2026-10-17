# ============================================================================
# rsf_config —— ★★ 配置区 ★★
# 语法要点（踩过的坑）：Bedrock 是 `scoreboard players set <假玩家> <计分板> <值>`，
#   所以这里**用假玩家名当变量名**，全部存在同一个计分板 rsf_cfg 里。
#   ❌ scoreboard players set RSF_CFG period 6000   （period 会被当成计分板名）
#   ✅ scoreboard players set period rsf_cfg 6000
# 好处：可游戏内热改，不用重新打包 —— /scoreboard players set period rsf_cfg 2400
# ============================================================================

# ---- 时间与节流（可热改）----
scoreboard players set period    rsf_cfg 6000
# 探测周期（刻）6000=5分钟 2400=2分钟 600=30秒
scoreboard players set retry     rsf_cfg  100
# 条件不满足时的重试间隔（刻）100=5秒
scoreboard players set enabled   rsf_cfg    1
# 总开关 1=开 0=关

# ---- 生成模式（可热改）----
scoreboard players set build_mode rsf_cfg   1
# 1 = 逐块建造（每 4 刻一步，看得见长出来；默认示例：哨塔 / 旅人小屋）
# 2 = 瞬时生成（一 tick 内成型 —— 借鉴幸运方块的做法）
# 0 = 只放一个地点标记（旧行为）

# ---- 回执（不要手改）----
scoreboard players set count     rsf_cfg    0

# ---- 派生值（必须放最后；改完 period/retry 后重跑 function rsf_config）----
scoreboard players operation retry_at rsf_cfg = period rsf_cfg
scoreboard players operation retry_at rsf_cfg += retry rsf_cfg
