# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1926/4224 | 主题内编号: b006/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·重檐飞角四方神龛 (meadow_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 cobblestone []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 arrow 23
replaceitem block ~2 ~-2 ~3 slot.container 1 string 8
replaceitem block ~2 ~-2 ~3 slot.container 2 gunpowder 7
replaceitem block ~2 ~-2 ~3 slot.container 3 leather 10
replaceitem block ~2 ~-2 ~3 slot.container 4 emerald 7
replaceitem block ~2 ~-2 ~3 slot.container 5 ender_pearl 6
replaceitem block ~2 ~-2 ~3 slot.container 9 honey_bottle 7
replaceitem block ~2 ~-2 ~3 slot.container 10 emerald 11
replaceitem block ~2 ~-2 ~3 slot.container 11 iron_ingot 12
replaceitem block ~2 ~-2 ~3 slot.container 12 coal 12
replaceitem block ~2 ~-2 ~3 slot.container 13 saddle 1
replaceitem block ~2 ~-2 ~3 slot.container 14 golden_apple 3
loot insert ~2 ~-2 ~3 loot "rsf/meadow"
loot insert ~2 ~-2 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 spruce_log []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 spruce_log []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 spruce_log []
fill ~4 ~1 ~5 ~4 ~8 ~5 spruce_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 stone_brick_slab []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 cobblestone []
fill ~-4 ~11 ~-5 ~4 ~11 ~5 oak_slab []
setblock ~0 ~12 ~0 emerald_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~8 ~-2 spruce_log []
fill ~-4 ~0 ~2 ~-4 ~8 ~2 spruce_log []
fill ~4 ~0 ~-2 ~4 ~8 ~-2 spruce_log []
fill ~4 ~0 ~2 ~4 ~8 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~6 ~0 ~-2 ~6 ~5 ~0 calcite []
setblock ~6 ~6 ~-1 emerald_block []
setblock ~6 ~7 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 crafting_table []
setblock ~-3 ~1 ~5 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 emerald 10
replaceitem block ~-3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 2 bone 10
replaceitem block ~-3 ~1 ~4 slot.container 3 rotten_flesh 11
replaceitem block ~-3 ~1 ~4 slot.container 4 arrow 18
replaceitem block ~-3 ~1 ~4 slot.container 5 string 11
replaceitem block ~-3 ~1 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~-3 ~1 ~4 slot.container 10 lantern 6
replaceitem block ~-3 ~1 ~4 slot.container 11 cooked_mutton 13
replaceitem block ~-3 ~1 ~4 slot.container 12 bread 14
replaceitem block ~-3 ~1 ~4 slot.container 13 honey_bottle 8
replaceitem block ~-3 ~1 ~4 slot.container 14 emerald 12
loot insert ~-3 ~1 ~4 loot "rsf/meadow"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 13
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 14
replaceitem block ~3 ~1 ~4 slot.container 2 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 3 string 14
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 13
replaceitem block ~3 ~1 ~4 slot.container 5 leather 8
replaceitem block ~3 ~1 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 10 lantern 4
replaceitem block ~3 ~1 ~4 slot.container 11 cooked_mutton 11
replaceitem block ~3 ~1 ~4 slot.container 12 bread 12
replaceitem block ~3 ~1 ~4 slot.container 13 honey_bottle 6
replaceitem block ~3 ~1 ~4 slot.container 14 emerald 10
loot insert ~3 ~1 ~4 loot "rsf/meadow"
loot insert ~3 ~1 ~4 loot "chests/pillager_outpost"
summon pillager ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
