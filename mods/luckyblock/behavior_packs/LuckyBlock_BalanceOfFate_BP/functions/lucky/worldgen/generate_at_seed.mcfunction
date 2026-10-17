# ==========================================================================
# 遗落之地 · 地形识别与建筑生成（种子的落地回调）
# 由 lg/scan 每秒刻对「已落地(lg_ready=1)」的 lucky:wild_seed 调用
#
# 计分板 lucky_bldg_id / lucky_roll 已统一在 lg/init 里注册
# （原先写在这里 = "用到才建"，每生成一次就重跑一遍建板命令，属于放错位置）
# ==========================================================================

## 1. 防重叠守卫：72 格内已有**永久遗迹地标**则放弃本次
##    ⚠️ 原先判据是 `@e[type=lucky:wild_marker,r=72]` —— 但标记只活 0.5 秒
##       （脚本每 10 刻就把它换成方块并删掉），这个判据几乎永远为空，等于没有防线。
##       换成长期存在的 `lg_mark` 地标才真正拦得住。
##    ⚠️ 不能再判 `lg_site` —— 种子自己就带 lg_site（见 lg/spawn），会永远自杀。
execute if entity @e[tag=lg_mark,r=72] run event entity @s lucky:despawn
execute if entity @e[tag=lg_mark,r=72] run kill @s

## 2. Detect Terrain Surface / Dimension Block & Build 1 of 3 Biome-Matched Structures
# --- The End ---
execute if block ~ ~-1 ~ end_stone run tag @s add lucky_matched
execute if block ~ ~-1 ~ end_stone run function lucky/build/the_end/dispatch

# --- The Nether ---
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ netherrack run tag @s add lucky_nether
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ crimson_nylium run tag @s add lucky_nether
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ warped_nylium run tag @s add lucky_nether
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ basalt run tag @s add lucky_nether
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ blackstone run tag @s add lucky_nether
execute if entity @s[tag=lucky_nether] run tag @s add lucky_matched
execute if entity @s[tag=lucky_nether] run function lucky/build/nether/dispatch

# --- Underground Caves & Deep Dark (No sky access / deepslate / sculk) ---
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ deepslate run tag @s add lucky_cave
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ cobbled_deepslate run tag @s add lucky_cave
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ sculk run tag @s add lucky_cave
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ amethyst_block run tag @s add lucky_cave
execute if entity @s[tag=lucky_cave] run tag @s add lucky_matched
execute if entity @s[tag=lucky_cave] run function lucky/build/underground/dispatch

# --- Ocean & Deep Ocean ---
execute unless entity @s[tag=lucky_matched] if block ~ ~ ~ water run tag @s add lucky_ocean
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ prismarine run tag @s add lucky_ocean
execute if entity @s[tag=lucky_ocean] run tag @s add lucky_matched
execute if entity @s[tag=lucky_ocean] run function lucky/build/ocean/dispatch

# --- Snowy Plains & Ice Spikes ---
execute unless entity @s[tag=lucky_matched] if block ~ ~ ~ snow_layer run tag @s add lucky_snow
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ snow run tag @s add lucky_snow
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ ice run tag @s add lucky_snow
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ packed_ice run tag @s add lucky_snow
execute if entity @s[tag=lucky_snow] run tag @s add lucky_matched
execute if entity @s[tag=lucky_snow] run function lucky/build/snowy/dispatch

# --- Desert ---
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ sand run tag @s add lucky_desert
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ sandstone run tag @s add lucky_desert
execute if entity @s[tag=lucky_desert] run tag @s add lucky_matched
execute if entity @s[tag=lucky_desert] run function lucky/build/desert/dispatch

# --- Savanna & Badlands ---
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ red_sand run tag @s add lucky_badlands
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ hardened_clay run tag @s add lucky_badlands
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ stained_hardened_clay run tag @s add lucky_badlands
execute if entity @s[tag=lucky_badlands] run tag @s add lucky_matched
execute if entity @s[tag=lucky_badlands] run function lucky/build/savanna_badlands/dispatch

# --- Swamp & Mangrove Swamp ---
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ mud run tag @s add lucky_swamp
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ mangrove_roots run tag @s add lucky_swamp
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ clay run tag @s add lucky_swamp
execute if entity @s[tag=lucky_swamp] run tag @s add lucky_matched
execute if entity @s[tag=lucky_swamp] run function lucky/build/swamp/dispatch

# --- Jungle ---
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ moss_block run tag @s add lucky_jungle
execute unless entity @s[tag=lucky_matched] if block ~ ~1 ~ bamboo run tag @s add lucky_jungle
execute if entity @s[tag=lucky_jungle] run tag @s add lucky_matched
execute if entity @s[tag=lucky_jungle] run function lucky/build/jungle/dispatch

# --- Mountains & High Altitude (Stone / Calcite) ---
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ stone run tag @s add lucky_mountain
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ calcite run tag @s add lucky_mountain
execute if entity @s[tag=lucky_mountain] run tag @s add lucky_matched
execute if entity @s[tag=lucky_mountain] run function lucky/build/mountains/dispatch

# --- Forest & Plains (Grass Block -> 50% Plains, 50% Forest if trees nearby) ---
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ podzol run tag @s add lucky_forest
execute if entity @s[tag=lucky_forest] run tag @s add lucky_matched
execute if entity @s[tag=lucky_forest] run function lucky/build/forest/dispatch

execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ grass_block run scoreboard players random @s lucky_roll 1 2
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ grass_block if score @s lucky_roll matches 1 run function lucky/build/plains/dispatch
execute unless entity @s[tag=lucky_matched] if block ~ ~-1 ~ grass_block if score @s lucky_roll matches 2 run function lucky/build/forest/dispatch

## 2b. 兜底地面判定（非空气 + 非液体 → 平原）
execute unless entity @s[tag=lucky_matched] unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water unless block ~ ~-1 ~ flowing_water unless block ~ ~-1 ~ lava run function lucky/build/plains/dispatch
execute unless entity @s[tag=lucky_matched] unless block ~ ~-1 ~ air run tag @s add lucky_matched

## 3. ★ 留下永久「遗迹地标」（反重叠的唯一长期判据）★
##    ⚠️ 踩过的坑：种子建完就 kill 的话，lg_scan 的 `@e[tag=lg_site,r=180]` 防重叠
##       与玩家 40/48 格滞回**全部失效**（"已有生成物"的证据随种子一起消失），
##       结果是遗迹会在同一片区域反复堆叠。
##    做法：在遗址上方召唤隐形盔甲架，让它自己落到屋顶/地面上。
##    标签分工：
##      lg_site —— 供 lg/scan 做「玩家是否已在生成区内」的滞回判定（种子也带）
##      lg_mark —— 只给**永久地标**打，专门做「这里已经有遗迹了」的长期判据
##                （种子的 lg_site 会随种子消失，不能拿来判长期重叠）
##    抗性 V 让它免疫伤害（玩家打不掉），否则判据会被人为破坏。
##    ⚠️ 定位必须用 `positioned ~ ~8 ~`：用裸 `c=1` 会串到别的旧地标。
summon armor_stand ~ ~8 ~ ~ ~ lg_site_event "LG_Site"
execute positioned ~ ~8 ~ run tag @e[type=armor_stand,name="LG_Site",r=4,c=1] add lg_site
execute positioned ~ ~8 ~ run tag @e[type=armor_stand,name="LG_Site",r=4,c=1] add lg_mark
execute positioned ~ ~8 ~ as @e[type=armor_stand,name="LG_Site",r=4,c=1] run effect @s invisibility 999999 1 true
execute positioned ~ ~8 ~ as @e[type=armor_stand,name="LG_Site",r=4,c=1] run effect @s resistance 999999 4 true
execute positioned ~ ~8 ~ as @e[type=armor_stand,name="LG_Site",r=4,c=1] run effect @s fire_resistance 999999 1 true

## 4. 种子退场
event entity @s lucky:despawn
kill @s
