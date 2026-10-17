# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3708/4224 | 主题内编号: b124/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·三层重檐帝王阁楼与秘库 (crimson_forest_grand_pagoda_imperial)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x15 | 地上高度 11格 | 地下深度 5格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-8 ~8 ~14 ~8 air [] replace lava
fill ~-8 ~0 ~-8 ~8 ~14 ~8 air [] replace fire
fill ~-7 ~-6 ~-7 ~7 ~-1 ~7 blackstone [] replace air
fill ~-7 ~-6 ~-7 ~7 ~-1 ~7 blackstone [] replace lava
fill ~-7 ~0 ~-7 ~7 ~0 ~7 blackstone_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 polished_blackstone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 red_nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 crimson_planks []
fill ~-4 ~-6 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~4 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-4 ~4 slot.container 0 leather 17
replaceitem block ~4 ~-4 ~4 slot.container 1 cooked_porkchop 16
replaceitem block ~4 ~-4 ~4 slot.container 2 gold_ingot 17
replaceitem block ~4 ~-4 ~4 slot.container 3 blaze_rod 4
replaceitem block ~4 ~-4 ~4 slot.container 4 magma_cream 7
replaceitem block ~4 ~-4 ~4 slot.container 5 ghast_tear 5
replaceitem block ~4 ~-4 ~4 slot.container 9 crossbow 1
replaceitem block ~4 ~-4 ~4 slot.container 10 arrow 26
replaceitem block ~4 ~-4 ~4 slot.container 11 golden_apple 5
replaceitem block ~4 ~-4 ~4 slot.container 12 golden_carrot 12
replaceitem block ~4 ~-4 ~4 slot.container 13 crimson_stem 21
replaceitem block ~4 ~-4 ~4 slot.container 14 shroomlight 12
loot insert ~4 ~-4 ~4 loot "rsf/crimson_forest"
loot insert ~4 ~-4 ~4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-6 ~6 ~5 ~6 blackstone []
fill ~-5 ~1 ~-5 ~5 ~4 ~5 air []
fill ~-7 ~5 ~-7 ~7 ~5 ~7 blackstone_slab []
fill ~-5 ~6 ~-5 ~5 ~11 ~5 crimson_planks []
fill ~-4 ~6 ~-4 ~4 ~10 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~6 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~11 ~-7 ~7 ~11 ~7 blackstone_slab []
fill ~-5 ~12 ~-5 ~5 ~13 ~5 crimson_planks []
fill ~-6 ~14 ~-6 ~6 ~14 ~6 crimson_slab []
setblock ~0 ~15 ~0 gold_block []
setblock ~0 ~16 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 crimson_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 shroomlight []
setblock ~2 ~4 ~-7 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x7x5) ---
fill ~9 ~0 ~-7 ~9 ~8 ~-7 gilded_blackstone []
setblock ~9 ~9 ~-7 gold_block []
setblock ~9 ~10 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~10 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~5 bookshelf []
setblock ~5 ~1 ~5 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 magma_cream 10
replaceitem block ~-5 ~1 ~4 slot.container 1 ghast_tear 8
replaceitem block ~-5 ~1 ~4 slot.container 2 string 16
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 11
replaceitem block ~-5 ~1 ~4 slot.container 4 leather 12
replaceitem block ~-5 ~1 ~4 slot.container 5 cooked_porkchop 11
replaceitem block ~-5 ~1 ~4 slot.container 9 crying_obsidian 11
replaceitem block ~-5 ~1 ~4 slot.container 10 obsidian 14
replaceitem block ~-5 ~1 ~4 slot.container 11 netherite_scrap 1
replaceitem block ~-5 ~1 ~4 slot.container 12 golden_helmet 1
replaceitem block ~-5 ~1 ~4 slot.container 13 crossbow 1
replaceitem block ~-5 ~1 ~4 slot.container 14 arrow 27
loot insert ~-5 ~1 ~4 loot "rsf/crimson_forest"
summon piglin ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
