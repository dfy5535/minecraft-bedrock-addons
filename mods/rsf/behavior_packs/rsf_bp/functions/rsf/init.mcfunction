# ============================================================================
# rsf/init —— 一次性初始化（自举时自动执行，也可手动 function rsf/init）
# ============================================================================
# 1) 常加载区：哨兵与全局时钟必须落在常加载区里，否则玩家走远就停摆
tickingarea add circle 0 100 0 4 RSF_Core true

# 2) 注册计分板（只注册真正用到的）
scoreboard objectives add rsf_cd      dummy "RSF·探测时钟(刻)"
scoreboard objectives add rsf_count   dummy "RSF·累计生成次数(回执)"
scoreboard objectives add rsf_last    dummy "RSF·上一刻回执计数(内部)"
scoreboard objectives add rsf_ready   dummy "RSF·种子落地门控(0=未落地)"
scoreboard objectives add rsf_discard dummy "RSF·因卡在方块里被丢弃的种子(诊断)"
scoreboard objectives add rsf_diag    dummy "RSF·自检临时量"
scoreboard objectives add rsf_cfg     dummy "RSF·配置(假玩家名=变量名)"
scoreboard objectives add rsf_rand    dummy "RSF·128建筑随机骰子(1-128)"
scoreboard objectives add rsf_matched dummy "RSF·地形分派命中标记"
scoreboard objectives add rsf_builds  dummy "RSF·累计建成建筑数(回执)"

# 3) 配置默认值
function rsf/config

# 4) 回执归零（★探测时钟不在这里清零★）
#    模板 v2.2.0 每次 init 都把 rsf_cd 清零；若自举哨兵因区块未加载而召唤失败，
#    boot 会每刻重跑 init → 时钟每刻归零 → 建筑永不生成（真机实测踩过）。
#    这里只归零回执，时钟交给 rsf/scan 自己维护。
scoreboard players set RSF_GLOBAL rsf_count 0
scoreboard players set RSF_GLOBAL rsf_last 0
scoreboard players set RSF_GLOBAL rsf_discard 0

# 5) 自举哨兵
#    ⚠️ summon 第 6 参是 spawnEvent 不是名字；缺了事件槽名字会被当事件解析 → 召唤失败
execute if entity @a run execute as @r at @s run summon armor_stand ~ ~1 ~ ~ ~ rsf_boot_event "RSF_Boot"
execute unless entity @a run summon armor_stand 0 100 0 ~ ~ rsf_boot_event "RSF_Boot"
execute as @e[type=armor_stand,name="RSF_Boot"] at @s run effect @s invisibility 999999 1 true
execute as @e[type=armor_stand,name="RSF_Boot"] at @s run effect @s resistance 999999 4 true
tag @e[type=armor_stand,name="RSF_Boot"] add rsf_boot_mark
