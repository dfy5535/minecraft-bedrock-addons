# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3699/4224 | 主题内编号: b115/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·阶梯立体生态种植台 (crimson_forest_conservatory_terrace_farm)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace fire
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 red_nether_brick [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 red_nether_brick [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 crimson_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 crimson_planks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 lava []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-2 ~3 slot.container 0 ghast_tear 5
replaceitem block ~-4 ~-2 ~3 slot.container 1 string 13
replaceitem block ~-4 ~-2 ~3 slot.container 2 ender_pearl 8
replaceitem block ~-4 ~-2 ~3 slot.container 3 leather 17
replaceitem block ~-4 ~-2 ~3 slot.container 4 cooked_porkchop 16
replaceitem block ~-4 ~-2 ~3 slot.container 5 gold_ingot 17
replaceitem block ~-4 ~-2 ~3 slot.container 9 shroomlight 10
replaceitem block ~-4 ~-2 ~3 slot.container 10 crying_obsidian 11
replaceitem block ~-4 ~-2 ~3 slot.container 11 obsidian 14
replaceitem block ~-4 ~-2 ~3 slot.container 12 netherite_scrap 1
replaceitem block ~-4 ~-2 ~3 slot.container 13 golden_helmet 1
replaceitem block ~-4 ~-2 ~3 slot.container 14 crossbow 1
loot insert ~-4 ~-2 ~3 loot "rsf/crimson_forest"
loot insert ~-4 ~-2 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 red_nether_brick []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 crimson_planks []
fill ~-4 ~5 ~-3 ~4 ~7 ~3 blackstone []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 red_nether_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 stripped_crimson_stem []
setblock ~-6 ~10 ~-5 lantern []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 stripped_crimson_stem []
setblock ~-6 ~10 ~5 lantern []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 stripped_crimson_stem []
setblock ~6 ~10 ~-5 lantern []
fill ~6 ~7 ~5 ~6 ~9 ~5 stripped_crimson_stem []
setblock ~6 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 nether_brick_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x6x6) ---
fill ~9 ~0 ~-6 ~9 ~9 ~-6 gilded_blackstone []
setblock ~9 ~10 ~-6 gold_block []
setblock ~9 ~11 ~-6 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 shroomlight []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 blaze_rod 7
replaceitem block ~5 ~1 ~3 slot.container 1 magma_cream 10
replaceitem block ~5 ~1 ~3 slot.container 2 ghast_tear 8
replaceitem block ~5 ~1 ~3 slot.container 3 string 16
replaceitem block ~5 ~1 ~3 slot.container 4 ender_pearl 11
replaceitem block ~5 ~1 ~3 slot.container 5 leather 12
replaceitem block ~5 ~1 ~3 slot.container 9 golden_helmet 1
replaceitem block ~5 ~1 ~3 slot.container 10 crossbow 1
replaceitem block ~5 ~1 ~3 slot.container 11 arrow 29
replaceitem block ~5 ~1 ~3 slot.container 12 golden_apple 8
replaceitem block ~5 ~1 ~3 slot.container 13 golden_carrot 8
replaceitem block ~5 ~1 ~3 slot.container 14 crimson_stem 17
loot insert ~5 ~1 ~3 loot "rsf/crimson_forest"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ghast_tear 3
replaceitem block ~-5 ~1 ~4 slot.container 1 string 11
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 6
replaceitem block ~-5 ~1 ~4 slot.container 3 leather 15
replaceitem block ~-5 ~1 ~4 slot.container 4 cooked_porkchop 14
replaceitem block ~-5 ~1 ~4 slot.container 5 gold_ingot 15
replaceitem block ~-5 ~1 ~4 slot.container 9 golden_helmet 1
replaceitem block ~-5 ~1 ~4 slot.container 10 crossbow 1
replaceitem block ~-5 ~1 ~4 slot.container 11 arrow 27
replaceitem block ~-5 ~1 ~4 slot.container 12 golden_apple 6
replaceitem block ~-5 ~1 ~4 slot.container 13 golden_carrot 13
replaceitem block ~-5 ~1 ~4 slot.container 14 crimson_stem 22
loot insert ~-5 ~1 ~4 loot "rsf/crimson_forest"
loot insert ~-5 ~1 ~4 loot "chests/bastion_treasure"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
