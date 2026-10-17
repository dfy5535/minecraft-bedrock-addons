# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0262/4224 | 主题内编号: b006/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·重檐飞角四方神龛 (birch_forest_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_cobblestone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_cobblestone [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 birch_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 birch_planks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 string 15
replaceitem block ~3 ~-3 ~2 slot.container 1 gunpowder 6
replaceitem block ~3 ~-3 ~2 slot.container 2 arrow 17
replaceitem block ~3 ~-3 ~2 slot.container 3 spider_eye 6
replaceitem block ~3 ~-3 ~2 slot.container 4 feather 11
replaceitem block ~3 ~-3 ~2 slot.container 5 phantom_membrane 6
replaceitem block ~3 ~-3 ~2 slot.container 9 honeycomb 12
replaceitem block ~3 ~-3 ~2 slot.container 10 honey_bottle 3
replaceitem block ~3 ~-3 ~2 slot.container 11 birch_log 17
replaceitem block ~3 ~-3 ~2 slot.container 12 cooked_chicken 10
replaceitem block ~3 ~-3 ~2 slot.container 13 iron_ingot 8
replaceitem block ~3 ~-3 ~2 slot.container 14 coal 14
loot insert ~3 ~-3 ~2 loot "rsf/birch_forest"
loot insert ~3 ~-3 ~2 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 mossy_cobblestone []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 birch_log []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 birch_log []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 birch_log []
fill ~5 ~1 ~4 ~5 ~7 ~4 birch_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-5 ~2 ~0 birch_fence []
setblock ~5 ~2 ~0 birch_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 birch_slab []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 birch_planks []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 birch_slab []
setblock ~0 ~11 ~0 gold_block []
setblock ~0 ~12 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 birch_log []
setblock ~-7 ~4 ~-6 campfire []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 birch_log []
setblock ~-7 ~4 ~6 campfire []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 birch_log []
setblock ~7 ~4 ~-6 campfire []
fill ~7 ~0 ~6 ~7 ~3 ~6 birch_log []
setblock ~7 ~4 ~6 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 6x5x6) ---
fill ~6 ~0 ~-2 ~7 ~0 ~2 cobblestone []
fill ~7 ~1 ~-2 ~7 ~7 ~-2 birch_log []
fill ~7 ~1 ~2 ~7 ~7 ~2 birch_log []
fill ~6 ~8 ~-2 ~7 ~8 ~2 birch_slab []
setblock ~6 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 feather 14
replaceitem block ~-4 ~1 ~2 slot.container 1 phantom_membrane 9
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 10
replaceitem block ~-4 ~1 ~2 slot.container 3 bone 9
replaceitem block ~-4 ~1 ~2 slot.container 4 string 10
replaceitem block ~-4 ~1 ~2 slot.container 5 gunpowder 9
replaceitem block ~-4 ~1 ~2 slot.container 9 golden_carrot 7
replaceitem block ~-4 ~1 ~2 slot.container 10 iron_sword 1
replaceitem block ~-4 ~1 ~2 slot.container 11 shears 1
replaceitem block ~-4 ~1 ~2 slot.container 12 torch 22
replaceitem block ~-4 ~1 ~2 slot.container 13 honeycomb 6
replaceitem block ~-4 ~1 ~2 slot.container 14 honey_bottle 4
loot insert ~-4 ~1 ~2 loot "rsf/birch_forest"
summon bee ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
