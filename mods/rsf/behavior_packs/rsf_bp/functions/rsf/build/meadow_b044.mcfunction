# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1964/4224 | 主题内编号: b044/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·双子祭台勇士角斗场 (meadow_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 calcite [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 calcite [] replace water
fill ~-7 ~1 ~-7 ~7 ~8 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mossy_cobblestone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 mossy_stone_bricks []
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~4 slot.container 0 bone 15
replaceitem block ~4 ~-2 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~-2 ~4 slot.container 2 arrow 23
replaceitem block ~4 ~-2 ~4 slot.container 3 string 8
replaceitem block ~4 ~-2 ~4 slot.container 4 gunpowder 7
replaceitem block ~4 ~-2 ~4 slot.container 5 leather 10
replaceitem block ~4 ~-2 ~4 slot.container 9 saddle 1
replaceitem block ~4 ~-2 ~4 slot.container 10 golden_apple 2
replaceitem block ~4 ~-2 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~4 ~-2 ~4 slot.container 12 lantern 7
replaceitem block ~4 ~-2 ~4 slot.container 13 cooked_mutton 14
replaceitem block ~4 ~-2 ~4 slot.container 14 bread 15
loot insert ~4 ~-2 ~4 loot "rsf/meadow"
loot insert ~4 ~-2 ~4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~7 ~6 calcite []
fill ~2 ~1 ~-6 ~6 ~7 ~6 calcite []
fill ~-5 ~1 ~-5 ~-3 ~6 ~5 air []
fill ~3 ~1 ~-5 ~5 ~6 ~5 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 stone_bricks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 spruce_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 stone_bricks []
fill ~0 ~16 ~0 ~0 ~16 ~0 emerald_block []
setblock ~0 ~17 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~4 ~-8 spruce_log []
setblock ~-8 ~5 ~-8 torch []
fill ~-8 ~0 ~8 ~-8 ~4 ~8 spruce_log []
setblock ~-8 ~5 ~8 torch []
fill ~8 ~0 ~-8 ~8 ~4 ~-8 spruce_log []
setblock ~8 ~5 ~-8 torch []
fill ~8 ~0 ~8 ~8 ~4 ~8 spruce_log []
setblock ~8 ~5 ~8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~8 ~0 ~0 ~8 ~3 ~2 calcite []
setblock ~8 ~4 ~1 emerald_block []
setblock ~8 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 gunpowder 10
replaceitem block ~-5 ~1 ~5 slot.container 1 leather 13
replaceitem block ~-5 ~1 ~5 slot.container 2 emerald 10
replaceitem block ~-5 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~5 slot.container 4 bone 10
replaceitem block ~-5 ~1 ~5 slot.container 5 rotten_flesh 11
replaceitem block ~-5 ~1 ~5 slot.container 9 honey_bottle 7
replaceitem block ~-5 ~1 ~5 slot.container 10 emerald 11
replaceitem block ~-5 ~1 ~5 slot.container 11 iron_ingot 12
replaceitem block ~-5 ~1 ~5 slot.container 12 coal 12
replaceitem block ~-5 ~1 ~5 slot.container 13 saddle 1
replaceitem block ~-5 ~1 ~5 slot.container 14 golden_apple 3
loot insert ~-5 ~1 ~5 loot "rsf/meadow"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 emerald 5
replaceitem block ~5 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~5 ~1 ~5 slot.container 2 bone 13
replaceitem block ~5 ~1 ~5 slot.container 3 rotten_flesh 14
replaceitem block ~5 ~1 ~5 slot.container 4 arrow 21
replaceitem block ~5 ~1 ~5 slot.container 5 string 14
replaceitem block ~5 ~1 ~5 slot.container 9 honey_bottle 5
replaceitem block ~5 ~1 ~5 slot.container 10 emerald 9
replaceitem block ~5 ~1 ~5 slot.container 11 iron_ingot 10
replaceitem block ~5 ~1 ~5 slot.container 12 coal 17
replaceitem block ~5 ~1 ~5 slot.container 13 saddle 1
replaceitem block ~5 ~1 ~5 slot.container 14 golden_apple 1
loot insert ~5 ~1 ~5 loot "rsf/meadow"
loot insert ~5 ~1 ~5 loot "chests/pillager_outpost"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon sheep ~1 ~1 ~1
summon donkey ~0 ~-2 ~0
