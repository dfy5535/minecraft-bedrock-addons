# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1948/4224 | 主题内编号: b028/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·重檐挑角古钟楼 (meadow_tower_pagoda_bell)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 2格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 calcite [] replace air
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 calcite [] replace water
fill ~-5 ~1 ~-6 ~5 ~12 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 mossy_stone_bricks []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 rotten_flesh 16
replaceitem block ~3 ~-4 ~5 slot.container 1 arrow 23
replaceitem block ~3 ~-4 ~5 slot.container 2 string 8
replaceitem block ~3 ~-4 ~5 slot.container 3 gunpowder 7
replaceitem block ~3 ~-4 ~5 slot.container 4 leather 10
replaceitem block ~3 ~-4 ~5 slot.container 5 emerald 7
replaceitem block ~3 ~-4 ~5 slot.container 9 coal 12
replaceitem block ~3 ~-4 ~5 slot.container 10 saddle 1
replaceitem block ~3 ~-4 ~5 slot.container 11 golden_apple 3
replaceitem block ~3 ~-4 ~5 slot.container 12 iron_pickaxe 1
replaceitem block ~3 ~-4 ~5 slot.container 13 lantern 8
replaceitem block ~3 ~-4 ~5 slot.container 14 cooked_mutton 15
loot insert ~3 ~-4 ~5 loot "rsf/meadow"
loot insert ~3 ~-4 ~5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~5 ~5 calcite []
fill ~-3 ~1 ~-4 ~3 ~4 ~4 air []
fill ~-5 ~5 ~-6 ~5 ~5 ~6 stone_brick_slab []
fill ~-3 ~6 ~-4 ~3 ~10 ~4 mossy_stone_bricks []
fill ~-2 ~6 ~-3 ~2 ~9 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~6 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~10 ~-6 ~5 ~10 ~6 stone_brick_slab []
fill ~-3 ~11 ~-4 ~3 ~12 ~4 mossy_stone_bricks []
fill ~-4 ~13 ~-5 ~4 ~13 ~5 spruce_slab []
setblock ~0 ~14 ~0 honeycomb_block []
setblock ~0 ~15 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~4 ~-7 spruce_log []
setblock ~-6 ~5 ~-7 torch []
fill ~-6 ~0 ~7 ~-6 ~4 ~7 spruce_log []
setblock ~-6 ~5 ~7 torch []
fill ~6 ~0 ~-7 ~6 ~4 ~-7 spruce_log []
setblock ~6 ~5 ~-7 torch []
fill ~6 ~0 ~7 ~6 ~4 ~7 spruce_log []
setblock ~6 ~5 ~7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 6x8x6) ---
fill ~6 ~0 ~0 ~6 ~7 ~2 calcite []
setblock ~6 ~8 ~1 emerald_block []
setblock ~6 ~9 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gunpowder 10
replaceitem block ~-3 ~1 ~4 slot.container 1 leather 13
replaceitem block ~-3 ~1 ~4 slot.container 2 emerald 10
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 bone 10
replaceitem block ~-3 ~1 ~4 slot.container 5 rotten_flesh 11
replaceitem block ~-3 ~1 ~4 slot.container 9 iron_ingot 8
replaceitem block ~-3 ~1 ~4 slot.container 10 coal 15
replaceitem block ~-3 ~1 ~4 slot.container 11 saddle 1
replaceitem block ~-3 ~1 ~4 slot.container 12 golden_apple 6
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~-3 ~1 ~4 slot.container 14 lantern 4
loot insert ~-3 ~1 ~4 loot "rsf/meadow"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 emerald 5
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 bone 13
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 14
replaceitem block ~3 ~1 ~4 slot.container 4 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 5 string 14
replaceitem block ~3 ~1 ~4 slot.container 9 iron_ingot 6
replaceitem block ~3 ~1 ~4 slot.container 10 coal 13
replaceitem block ~3 ~1 ~4 slot.container 11 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 12 golden_apple 4
replaceitem block ~3 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 14 lantern 9
loot insert ~3 ~1 ~4 loot "rsf/meadow"
loot insert ~3 ~1 ~4 loot "chests/pillager_outpost"
summon sheep ~0 ~1 ~-1
summon donkey ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
