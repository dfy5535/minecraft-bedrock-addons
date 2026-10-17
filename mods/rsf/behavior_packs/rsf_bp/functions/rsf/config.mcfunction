# ============================================================================
# rsf/config —— ★★ 配置区（可游戏内热改，不用重新打包）★★
# 基岩版语法：scoreboard players set <假玩家> <计分板> <值>
#   所以这里**用假玩家名当变量名**，全存在同一个计分板 rsf_cfg 里。
#   ✅ /scoreboard players set period rsf_cfg 2400
#   ❌ /scoreboard players set RSF_CFG period 2400   （period 会被当成计分板名）
# 改完重跑一次 /function rsf/config 让派生值生效。
# ============================================================================
# 探测周期（刻）：600=30秒 / 2400=2分钟 / 6000=5分钟
scoreboard players set period   rsf_cfg  600
# 条件不满足时的重试间隔（刻）
scoreboard players set retry    rsf_cfg   40
# 总开关 1=开 0=关
scoreboard players set enabled  rsf_cfg    1
# 回执（不要手改）
scoreboard players set count    rsf_cfg    0
# 派生值 = period + retry（必须放最后）
scoreboard players set retry_at rsf_cfg    0
scoreboard players operation retry_at rsf_cfg = period rsf_cfg
scoreboard players operation retry_at rsf_cfg += retry rsf_cfg
