# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0380/4224 | 主题内编号: b124/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·三层重檐帝王阁楼与秘库 (birch_forest_grand_pagoda_imperial)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x15 | 地上高度 9格 | 地下深度 5格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~13 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~13 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~13 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~13 ~8 air [] replace log2
fill ~-7 ~-6 ~-7 ~7 ~-1 ~7 stone_bricks [] replace air
fill ~-7 ~-6 ~-7 ~7 ~-1 ~7 stone_bricks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mossy_stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 calcite []
fill ~-4 ~-6 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-4 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~-4 ~4 slot.container 1 bone 14
replaceitem block ~4 ~-4 ~4 slot.container 2 string 15
replaceitem block ~4 ~-4 ~4 slot.container 3 gunpowder 6
replaceitem block ~4 ~-4 ~4 slot.container 4 arrow 17
replaceitem block ~4 ~-4 ~4 slot.container 5 spider_eye 6
replaceitem block ~4 ~-4 ~4 slot.container 9 iron_ingot 10
replaceitem block ~4 ~-4 ~4 slot.container 10 coal 16
replaceitem block ~4 ~-4 ~4 slot.container 11 golden_carrot 4
replaceitem block ~4 ~-4 ~4 slot.container 12 iron_sword 1
replaceitem block ~4 ~-4 ~4 slot.container 13 shears 1
replaceitem block ~4 ~-4 ~4 slot.container 14 torch 19
loot insert ~4 ~-4 ~4 loot "rsf/birch_forest"
loot insert ~4 ~-4 ~4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-6 ~6 ~4 ~6 stone_bricks []
fill ~-5 ~1 ~-5 ~5 ~3 ~5 air []
fill ~-7 ~4 ~-7 ~7 ~4 ~7 stone_brick_slab []
fill ~-5 ~5 ~-5 ~5 ~9 ~5 calcite []
fill ~-4 ~5 ~-4 ~4 ~8 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~5 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~9 ~-7 ~7 ~9 ~7 stone_brick_slab []
fill ~-5 ~10 ~-5 ~5 ~11 ~5 calcite []
fill ~-6 ~12 ~-6 ~6 ~12 ~6 stone_brick_slab []
setblock ~0 ~13 ~0 honeycomb_block []
setblock ~0 ~14 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~3 ~-8 stripped_birch_log []
setblock ~-8 ~4 ~-8 torch []
fill ~-8 ~0 ~8 ~-8 ~3 ~8 stripped_birch_log []
setblock ~-8 ~4 ~8 torch []
fill ~8 ~0 ~-8 ~8 ~3 ~-8 stripped_birch_log []
setblock ~8 ~4 ~-8 torch []
fill ~8 ~0 ~8 ~8 ~3 ~8 stripped_birch_log []
setblock ~8 ~4 ~8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 stone_bricks []
fill ~8 ~1 ~-2 ~8 ~5 ~-2 stripped_birch_log []
fill ~8 ~1 ~2 ~8 ~5 ~2 stripped_birch_log []
fill ~7 ~6 ~-2 ~8 ~6 ~2 stone_brick_slab []
setblock ~7 ~1 ~0 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 arrow 20
replaceitem block ~-5 ~1 ~4 slot.container 1 spider_eye 9
replaceitem block ~-5 ~1 ~4 slot.container 2 feather 14
replaceitem block ~-5 ~1 ~4 slot.container 3 phantom_membrane 9
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 10
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 9
replaceitem block ~-5 ~1 ~4 slot.container 9 honeycomb 8
replaceitem block ~-5 ~1 ~4 slot.container 10 honey_bottle 6
replaceitem block ~-5 ~1 ~4 slot.container 11 birch_log 20
replaceitem block ~-5 ~1 ~4 slot.container 12 cooked_chicken 13
replaceitem block ~-5 ~1 ~4 slot.container 13 iron_ingot 11
replaceitem block ~-5 ~1 ~4 slot.container 14 coal 10
loot insert ~-5 ~1 ~4 loot "rsf/birch_forest"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon bee ~1 ~1 ~1
summon witch ~0 ~-4 ~0
