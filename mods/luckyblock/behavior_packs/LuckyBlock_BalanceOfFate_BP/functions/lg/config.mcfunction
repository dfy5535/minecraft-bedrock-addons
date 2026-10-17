# ============================================================================
# lg_config —— 配置区（可游戏内热改，不用重新打包）
# Bedrock 语法：scoreboard players set <假玩家> <计分板> <值>
#   所以用「假玩家名当变量名」，全部存在同一个计分板 lg_cfg 里。
#   /scoreboard players set period lg_cfg 2400   → 改成 2 分钟一次
# ============================================================================
# 探测周期（刻）6000=5分钟 2400=2分钟 600=30秒
scoreboard players set period  lg_cfg  600
# 条件不满足时的重试间隔（刻）
scoreboard players set retry   lg_cfg   40
# 总开关 1=开 0=关
scoreboard players set enabled lg_cfg    1
# 回执（不要手改，由 lg_receipt 累加）
scoreboard players set count   lg_cfg    0
# 派生值 = period + retry（必须放最后；改完重跑 function lg/config 即可）
scoreboard players set retry_at lg_cfg   0
scoreboard players operation retry_at lg_cfg = period lg_cfg
scoreboard players operation retry_at lg_cfg += retry lg_cfg
