# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1968/4224 | 主题内编号: b048/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·阶梯王座巅峰试炼台 (meadow_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 calcite [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 calcite [] replace water
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_cobblestone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 lantern []
setblock ~4 ~-6 ~0 lantern []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 bone 15
replaceitem block ~0 ~-4 ~5 slot.container 1 rotten_flesh 16
replaceitem block ~0 ~-4 ~5 slot.container 2 arrow 23
replaceitem block ~0 ~-4 ~5 slot.container 3 string 8
replaceitem block ~0 ~-4 ~5 slot.container 4 gunpowder 7
replaceitem block ~0 ~-4 ~5 slot.container 5 leather 10
replaceitem block ~0 ~-4 ~5 slot.container 9 honey_bottle 7
replaceitem block ~0 ~-4 ~5 slot.container 10 emerald 11
replaceitem block ~0 ~-4 ~5 slot.container 11 iron_ingot 12
replaceitem block ~0 ~-4 ~5 slot.container 12 coal 12
replaceitem block ~0 ~-4 ~5 slot.container 13 saddle 1
replaceitem block ~0 ~-4 ~5 slot.container 14 golden_apple 3
loot insert ~0 ~-4 ~5 loot "rsf/meadow"
loot insert ~0 ~-4 ~5 loot "chests/pillager_outpost"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 bone 13
replaceitem block ~0 ~-4 ~-5 slot.container 1 rotten_flesh 14
replaceitem block ~0 ~-4 ~-5 slot.container 2 arrow 21
replaceitem block ~0 ~-4 ~-5 slot.container 3 string 14
replaceitem block ~0 ~-4 ~-5 slot.container 4 gunpowder 13
replaceitem block ~0 ~-4 ~-5 slot.container 5 leather 8
replaceitem block ~0 ~-4 ~-5 slot.container 9 honey_bottle 6
replaceitem block ~0 ~-4 ~-5 slot.container 10 emerald 10
replaceitem block ~0 ~-4 ~-5 slot.container 11 iron_ingot 11
replaceitem block ~0 ~-4 ~-5 slot.container 12 coal 18
replaceitem block ~0 ~-4 ~-5 slot.container 13 saddle 1
replaceitem block ~0 ~-4 ~-5 slot.container 14 golden_apple 2
loot insert ~0 ~-4 ~-5 loot "rsf/meadow"
loot insert ~0 ~-4 ~-5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 calcite []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 stone_bricks []
fill ~-4 ~5 ~-5 ~4 ~7 ~5 mossy_stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 spruce_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-7 ~-6 ~9 ~-7 spruce_log []
setblock ~-6 ~10 ~-7 torch []
fill ~-6 ~7 ~7 ~-6 ~9 ~7 spruce_log []
setblock ~-6 ~10 ~7 torch []
fill ~6 ~7 ~-7 ~6 ~9 ~-7 spruce_log []
setblock ~6 ~10 ~-7 torch []
fill ~6 ~7 ~7 ~6 ~9 ~7 spruce_log []
setblock ~6 ~10 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 spruce_log []
setblock ~0 ~4 ~-9 chiseled_stone_bricks []
setblock ~0 ~5 ~-9 torch []
fill ~0 ~0 ~9 ~0 ~3 ~9 spruce_log []
setblock ~0 ~4 ~9 chiseled_stone_bricks []
setblock ~0 ~5 ~9 torch []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 spruce_log []
setblock ~-8 ~4 ~0 chiseled_stone_bricks []
setblock ~-8 ~5 ~0 torch []
fill ~8 ~0 ~0 ~8 ~3 ~0 spruce_log []
setblock ~8 ~4 ~0 chiseled_stone_bricks []
setblock ~8 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 8x9x6) ---
fill ~8 ~0 ~-2 ~8 ~7 ~0 calcite []
setblock ~8 ~8 ~-1 emerald_block []
setblock ~8 ~9 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 bone 10
replaceitem block ~-5 ~1 ~6 slot.container 1 rotten_flesh 11
replaceitem block ~-5 ~1 ~6 slot.container 2 arrow 18
replaceitem block ~-5 ~1 ~6 slot.container 3 string 11
replaceitem block ~-5 ~1 ~6 slot.container 4 gunpowder 10
replaceitem block ~-5 ~1 ~6 slot.container 5 leather 13
replaceitem block ~-5 ~1 ~6 slot.container 9 iron_ingot 7
replaceitem block ~-5 ~1 ~6 slot.container 10 coal 14
replaceitem block ~-5 ~1 ~6 slot.container 11 saddle 1
replaceitem block ~-5 ~1 ~6 slot.container 12 golden_apple 5
replaceitem block ~-5 ~1 ~6 slot.container 13 iron_pickaxe 1
replaceitem block ~-5 ~1 ~6 slot.container 14 lantern 10
loot insert ~-5 ~1 ~6 loot "rsf/meadow"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 arrow 21
replaceitem block ~5 ~1 ~6 slot.container 1 string 14
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 13
replaceitem block ~5 ~1 ~6 slot.container 3 leather 8
replaceitem block ~5 ~1 ~6 slot.container 4 emerald 5
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 9 iron_ingot 12
replaceitem block ~5 ~1 ~6 slot.container 10 coal 12
replaceitem block ~5 ~1 ~6 slot.container 11 saddle 1
replaceitem block ~5 ~1 ~6 slot.container 12 golden_apple 3
replaceitem block ~5 ~1 ~6 slot.container 13 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 14 lantern 8
loot insert ~5 ~1 ~6 loot "rsf/meadow"
loot insert ~5 ~1 ~6 loot "chests/pillager_outpost"
summon pillager ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
