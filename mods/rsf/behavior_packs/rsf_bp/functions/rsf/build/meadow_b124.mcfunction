# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2044/4224 | 主题内编号: b124/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·三层重檐帝王阁楼与秘库 (meadow_grand_pagoda_imperial)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x17 | 地上高度 10格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 calcite [] replace air
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 calcite [] replace water
fill ~-6 ~1 ~-8 ~6 ~12 ~8 air []
fill ~-6 ~0 ~-8 ~6 ~0 ~8 stone_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 mossy_cobblestone []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 mossy_stone_bricks []
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~5 slot.container 0 bone 15
replaceitem block ~3 ~-3 ~5 slot.container 1 rotten_flesh 16
replaceitem block ~3 ~-3 ~5 slot.container 2 arrow 23
replaceitem block ~3 ~-3 ~5 slot.container 3 string 8
replaceitem block ~3 ~-3 ~5 slot.container 4 gunpowder 7
replaceitem block ~3 ~-3 ~5 slot.container 5 leather 10
replaceitem block ~3 ~-3 ~5 slot.container 9 saddle 1
replaceitem block ~3 ~-3 ~5 slot.container 10 golden_apple 5
replaceitem block ~3 ~-3 ~5 slot.container 11 iron_pickaxe 1
replaceitem block ~3 ~-3 ~5 slot.container 12 lantern 10
replaceitem block ~3 ~-3 ~5 slot.container 13 cooked_mutton 10
replaceitem block ~3 ~-3 ~5 slot.container 14 bread 11
loot insert ~3 ~-3 ~5 loot "rsf/meadow"
loot insert ~3 ~-3 ~5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-7 ~5 ~5 ~7 calcite []
fill ~-4 ~1 ~-6 ~4 ~4 ~6 air []
fill ~-6 ~5 ~-8 ~6 ~5 ~8 stone_brick_slab []
fill ~-4 ~6 ~-6 ~4 ~10 ~6 mossy_stone_bricks []
fill ~-3 ~6 ~-5 ~3 ~9 ~5 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~5 ~0 ~6 ~5 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~10 ~-8 ~6 ~10 ~8 stone_brick_slab []
fill ~-4 ~11 ~-6 ~4 ~12 ~6 mossy_stone_bricks []
fill ~-5 ~13 ~-7 ~5 ~13 ~7 spruce_slab []
setblock ~0 ~14 ~0 honeycomb_block []
setblock ~0 ~15 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~5 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x10x2) ---
fill ~7 ~0 ~-3 ~7 ~3 ~-1 calcite []
setblock ~7 ~4 ~-2 emerald_block []
setblock ~7 ~5 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~6 slot.container 0 gunpowder 10
replaceitem block ~-4 ~1 ~6 slot.container 1 leather 13
replaceitem block ~-4 ~1 ~6 slot.container 2 emerald 10
replaceitem block ~-4 ~1 ~6 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~6 slot.container 4 bone 10
replaceitem block ~-4 ~1 ~6 slot.container 5 rotten_flesh 11
replaceitem block ~-4 ~1 ~6 slot.container 9 honey_bottle 3
replaceitem block ~-4 ~1 ~6 slot.container 10 emerald 7
replaceitem block ~-4 ~1 ~6 slot.container 11 iron_ingot 8
replaceitem block ~-4 ~1 ~6 slot.container 12 coal 15
replaceitem block ~-4 ~1 ~6 slot.container 13 saddle 1
replaceitem block ~-4 ~1 ~6 slot.container 14 golden_apple 6
loot insert ~-4 ~1 ~6 loot "rsf/meadow"
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 emerald 5
replaceitem block ~4 ~1 ~6 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~6 slot.container 2 bone 13
replaceitem block ~4 ~1 ~6 slot.container 3 rotten_flesh 14
replaceitem block ~4 ~1 ~6 slot.container 4 arrow 21
replaceitem block ~4 ~1 ~6 slot.container 5 string 14
replaceitem block ~4 ~1 ~6 slot.container 9 honey_bottle 8
replaceitem block ~4 ~1 ~6 slot.container 10 emerald 12
replaceitem block ~4 ~1 ~6 slot.container 11 iron_ingot 6
replaceitem block ~4 ~1 ~6 slot.container 12 coal 13
replaceitem block ~4 ~1 ~6 slot.container 13 saddle 1
replaceitem block ~4 ~1 ~6 slot.container 14 golden_apple 4
loot insert ~4 ~1 ~6 loot "rsf/meadow"
loot insert ~4 ~1 ~6 loot "chests/pillager_outpost"
summon sheep ~0 ~1 ~-1
summon donkey ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
