# ============================================================================
# lg_init —— 一次性初始化（自举时自动执行，也可手动 function lg/init）
# ============================================================================
# 1) 常加载区：哨兵与全局时钟必须落在常加载区里，否则玩家走远就停摆
tickingarea add circle 0 100 0 4 LG_Core true

# 2) 注册计分板
#    只注册真正用到的：lg_tmp / lucky_wt / lucky_bid / lucky_luck 是历史遗留，
#    全项目 0 处引用（只注册不使用），已删除。
scoreboard objectives add lg_cd    dummy "LG·探测时钟(刻)"
scoreboard objectives add lg_count dummy "LG·累计生成次数(回执)"
scoreboard objectives add lg_last  dummy "LG·上一刻回执计数(内部)"
scoreboard objectives add lg_ready dummy "LG·实体落地门控(0=未落地)"
scoreboard objectives add lg_cfg   dummy "LG·配置(假玩家名=变量名)"
# 建筑分派与地形掷骰（原先散落在 generate_at_seed 里"用到才建"，统一挪到初始化）
scoreboard objectives add lucky_bldg_id dummy "遗落之地·本次建筑编号(1-3)"
scoreboard objectives add lucky_roll    dummy "遗落之地·地形掷骰(草方块→平原/森林)"
scoreboard objectives add lg_discard    dummy "LG·因落在实体方块里被丢弃的种子(诊断)"

# 3) 写入配置默认值
function lg/config

# 4) 时钟与回执归零
scoreboard players set LG_GLOBAL lg_cd 0
scoreboard players set LG_GLOBAL lg_count 0
scoreboard players set LG_GLOBAL lg_last 0

# 5) 自举哨兵
#    ⚠️ summon 的第 6 参是 spawnEvent，不是名字。缺了事件槽，名字会被当事件解析 → 召唤失败。
#    lg_boot_event 是占位事件名（原版盔甲架没有对应事件，会被忽略，属正常）
execute unless entity @e[type=armor_stand,name="LG_Boot"] run summon armor_stand 0 100 0 ~ ~ lg_boot_event "LG_Boot"
execute as @e[type=armor_stand,name="LG_Boot"] at @s run effect @s invisibility 999999 1 true
execute as @e[type=armor_stand,name="LG_Boot"] at @s run effect @s resistance 999999 4 true
