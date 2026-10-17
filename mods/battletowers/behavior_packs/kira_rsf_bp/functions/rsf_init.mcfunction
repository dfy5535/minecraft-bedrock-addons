# ============================================================================
# rsf_init —— 一次性初始化（自举时自动执行，也可手动 function rsf_init）
# ============================================================================

# 1) 常加载区：哨兵与全局时钟必须落在常加载区里，否则玩家走远就停摆
tickingarea add circle 0 100 0 4 RSF_Core true

# 2) 注册计分板
scoreboard objectives add rsf_cd    dummy "RSF·探测时钟(刻)"
scoreboard objectives add rsf_count dummy "RSF·累计生成次数(回执)"
scoreboard objectives add rsf_last  dummy "RSF·上一刻回执计数(内部)"
scoreboard objectives add rsf_bstep dummy "RSF·建造步进号(每个锚点独立)"
scoreboard objectives add rsf_bcd   dummy "RSF·建造节流计时(刻)"
scoreboard objectives add rsf_style dummy "RSF·建筑风格(1石砖/2砂岩/3下界/4末地)"
scoreboard objectives add rsf_bldg  dummy "RSF·本风格内的建筑编号(1..2)"
scoreboard objectives add rsf_ready dummy "RSF·实体落地门控(0=未落地)"
scoreboard objectives add rsf_cfg   dummy "RSF·配置(假玩家名=变量名)"
scoreboard objectives add rsf_tmp   dummy "RSF·临时变量"

# 3) 写入配置默认值（假玩家名 = 变量名）
function rsf_config

# 4) 派生值已在 rsf_config 末尾统一计算（保证手改配置后重跑 config 即可生效）

# 5) 时钟与回执归零
scoreboard players set RSF_GLOBAL rsf_cd 0
scoreboard players set RSF_GLOBAL rsf_count 0
scoreboard players set RSF_GLOBAL rsf_last 0

# 6) 自举哨兵（放在常加载区里，永远加载得到）
#    ⚠️ summon 的第 6 参是 spawnEvent，不是名字。缺了事件槽，名字会被当事件解析 -> 召唤失败
#    rsf_boot_event 是占位事件名（原版盔甲架没有对应事件，会被忽略，属正常）
execute unless entity @e[type=armor_stand,name="RSF_Boot"] run summon armor_stand 0 100 0 ~ ~ rsf_boot_event "RSF_Boot"
execute as @e[type=armor_stand,name="RSF_Boot"] at @s run effect @s invisibility 999999 1 true
execute as @e[type=armor_stand,name="RSF_Boot"] at @s run effect @s resistance 999999 4 true
