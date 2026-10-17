# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2012/4224 | 主题内编号: b092/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·双层重檐供奉宝塔 (meadow_shrine_terrace_pagoda)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 calcite [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 calcite [] replace water
fill ~-5 ~1 ~-6 ~5 ~11 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 mossy_stone_bricks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 bone 15
replaceitem block ~2 ~-2 ~3 slot.container 1 rotten_flesh 16
replaceitem block ~2 ~-2 ~3 slot.container 2 arrow 23
replaceitem block ~2 ~-2 ~3 slot.container 3 string 8
replaceitem block ~2 ~-2 ~3 slot.container 4 gunpowder 7
replaceitem block ~2 ~-2 ~3 slot.container 5 leather 10
replaceitem block ~2 ~-2 ~3 slot.container 9 cooked_mutton 16
replaceitem block ~2 ~-2 ~3 slot.container 10 bread 10
replaceitem block ~2 ~-2 ~3 slot.container 11 honey_bottle 4
replaceitem block ~2 ~-2 ~3 slot.container 12 emerald 8
replaceitem block ~2 ~-2 ~3 slot.container 13 iron_ingot 9
replaceitem block ~2 ~-2 ~3 slot.container 14 coal 16
loot insert ~2 ~-2 ~3 loot "rsf/meadow"
loot insert ~2 ~-2 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~4 ~5 calcite []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-5 ~4 ~-6 ~5 ~4 ~6 stone_brick_slab []
fill ~-3 ~5 ~-4 ~3 ~9 ~4 mossy_stone_bricks []
fill ~-2 ~5 ~-3 ~2 ~8 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 stone_brick_slab []
fill ~-3 ~10 ~-4 ~3 ~11 ~4 mossy_stone_bricks []
fill ~-4 ~12 ~-5 ~4 ~12 ~5 spruce_slab []
setblock ~0 ~13 ~0 honeycomb_block []
setblock ~0 ~14 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~5 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 6x6x5) ---
fill ~6 ~0 ~-1 ~6 ~6 ~1 calcite []
setblock ~6 ~7 ~0 emerald_block []
setblock ~6 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~4 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 chiseled_stone_bricks []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gunpowder 10
replaceitem block ~-3 ~1 ~4 slot.container 1 leather 13
replaceitem block ~-3 ~1 ~4 slot.container 2 emerald 10
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 bone 10
replaceitem block ~-3 ~1 ~4 slot.container 5 rotten_flesh 11
replaceitem block ~-3 ~1 ~4 slot.container 9 saddle 1
replaceitem block ~-3 ~1 ~4 slot.container 10 golden_apple 5
replaceitem block ~-3 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~-3 ~1 ~4 slot.container 12 lantern 10
replaceitem block ~-3 ~1 ~4 slot.container 13 cooked_mutton 10
replaceitem block ~-3 ~1 ~4 slot.container 14 bread 11
loot insert ~-3 ~1 ~4 loot "rsf/meadow"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 emerald 5
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 bone 13
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 14
replaceitem block ~3 ~1 ~4 slot.container 4 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 5 string 14
replaceitem block ~3 ~1 ~4 slot.container 9 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 10 golden_apple 3
replaceitem block ~3 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 12 lantern 8
replaceitem block ~3 ~1 ~4 slot.container 13 cooked_mutton 15
replaceitem block ~3 ~1 ~4 slot.container 14 bread 16
loot insert ~3 ~1 ~4 loot "rsf/meadow"
loot insert ~3 ~1 ~4 loot "chests/pillager_outpost"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon sheep ~1 ~1 ~1
summon donkey ~0 ~-2 ~0
