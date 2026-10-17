# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3676/4224 | 主题内编号: b092/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·双层重檐供奉宝塔 (crimson_forest_shrine_terrace_pagoda)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~13 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~13 ~6 air [] replace fire
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 blackstone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 blackstone [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 red_nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 crimson_planks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 leather 17
replaceitem block ~3 ~-3 ~2 slot.container 1 cooked_porkchop 16
replaceitem block ~3 ~-3 ~2 slot.container 2 gold_ingot 17
replaceitem block ~3 ~-3 ~2 slot.container 3 blaze_rod 4
replaceitem block ~3 ~-3 ~2 slot.container 4 magma_cream 7
replaceitem block ~3 ~-3 ~2 slot.container 5 ghast_tear 5
replaceitem block ~3 ~-3 ~2 slot.container 9 crimson_stem 20
replaceitem block ~3 ~-3 ~2 slot.container 10 shroomlight 11
replaceitem block ~3 ~-3 ~2 slot.container 11 crying_obsidian 12
replaceitem block ~3 ~-3 ~2 slot.container 12 obsidian 8
replaceitem block ~3 ~-3 ~2 slot.container 13 netherite_scrap 2
replaceitem block ~3 ~-3 ~2 slot.container 14 golden_helmet 1
loot insert ~3 ~-3 ~2 loot "rsf/crimson_forest"
loot insert ~3 ~-3 ~2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~5 ~4 blackstone []
fill ~-4 ~1 ~-3 ~4 ~4 ~3 air []
fill ~-6 ~5 ~-5 ~6 ~5 ~5 blackstone_slab []
fill ~-4 ~6 ~-3 ~4 ~10 ~3 crimson_planks []
fill ~-3 ~6 ~-2 ~3 ~9 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~6 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~10 ~-5 ~6 ~10 ~5 blackstone_slab []
fill ~-4 ~11 ~-3 ~4 ~12 ~3 crimson_planks []
fill ~-5 ~13 ~-4 ~5 ~13 ~4 crimson_slab []
setblock ~0 ~14 ~0 gold_block []
setblock ~0 ~15 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 crimson_stem []
setblock ~-7 ~6 ~-6 shroomlight []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 crimson_stem []
setblock ~-7 ~6 ~6 shroomlight []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 crimson_stem []
setblock ~7 ~6 ~-6 shroomlight []
fill ~7 ~0 ~6 ~7 ~5 ~6 crimson_stem []
setblock ~7 ~6 ~6 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 8x6x3) ---
fill ~8 ~0 ~-6 ~8 ~6 ~-6 gilded_blackstone []
setblock ~8 ~7 ~-6 gold_block []
setblock ~8 ~8 ~-6 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-4 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 magma_cream 10
replaceitem block ~-4 ~1 ~2 slot.container 1 ghast_tear 8
replaceitem block ~-4 ~1 ~2 slot.container 2 string 16
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 11
replaceitem block ~-4 ~1 ~2 slot.container 4 leather 12
replaceitem block ~-4 ~1 ~2 slot.container 5 cooked_porkchop 11
replaceitem block ~-4 ~1 ~2 slot.container 9 crossbow 1
replaceitem block ~-4 ~1 ~2 slot.container 10 arrow 26
replaceitem block ~-4 ~1 ~2 slot.container 11 golden_apple 5
replaceitem block ~-4 ~1 ~2 slot.container 12 golden_carrot 12
replaceitem block ~-4 ~1 ~2 slot.container 13 crimson_stem 21
replaceitem block ~-4 ~1 ~2 slot.container 14 shroomlight 12
loot insert ~-4 ~1 ~2 loot "rsf/crimson_forest"
summon blaze ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon piglin ~1 ~1 ~1
