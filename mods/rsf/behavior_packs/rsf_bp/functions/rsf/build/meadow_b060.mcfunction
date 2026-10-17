# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1980/4224 | 主题内编号: b060/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·圆形穹顶万骨祠堂 (meadow_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 calcite [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 calcite [] replace water
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 calcite []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 torch []
setblock ~3 ~-5 ~0 torch []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 arrow 23
replaceitem block ~0 ~-3 ~4 slot.container 1 string 8
replaceitem block ~0 ~-3 ~4 slot.container 2 gunpowder 7
replaceitem block ~0 ~-3 ~4 slot.container 3 leather 10
replaceitem block ~0 ~-3 ~4 slot.container 4 emerald 7
replaceitem block ~0 ~-3 ~4 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-3 ~4 slot.container 9 honey_bottle 8
replaceitem block ~0 ~-3 ~4 slot.container 10 emerald 12
replaceitem block ~0 ~-3 ~4 slot.container 11 iron_ingot 6
replaceitem block ~0 ~-3 ~4 slot.container 12 coal 13
replaceitem block ~0 ~-3 ~4 slot.container 13 saddle 1
replaceitem block ~0 ~-3 ~4 slot.container 14 golden_apple 4
loot insert ~0 ~-3 ~4 loot "rsf/meadow"
loot insert ~0 ~-3 ~4 loot "chests/pillager_outpost"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 arrow 21
replaceitem block ~0 ~-3 ~-4 slot.container 1 string 14
replaceitem block ~0 ~-3 ~-4 slot.container 2 gunpowder 13
replaceitem block ~0 ~-3 ~-4 slot.container 3 leather 8
replaceitem block ~0 ~-3 ~-4 slot.container 4 emerald 5
replaceitem block ~0 ~-3 ~-4 slot.container 5 ender_pearl 4
replaceitem block ~0 ~-3 ~-4 slot.container 9 honey_bottle 7
replaceitem block ~0 ~-3 ~-4 slot.container 10 emerald 11
replaceitem block ~0 ~-3 ~-4 slot.container 11 iron_ingot 12
replaceitem block ~0 ~-3 ~-4 slot.container 12 coal 12
replaceitem block ~0 ~-3 ~-4 slot.container 13 saddle 1
replaceitem block ~0 ~-3 ~-4 slot.container 14 golden_apple 3
loot insert ~0 ~-3 ~-4 loot "rsf/meadow"
loot insert ~0 ~-3 ~-4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 stone_bricks []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 spruce_log []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 spruce_log []
fill ~-3 ~1 ~-6 ~-3 ~6 ~-6 spruce_log []
fill ~-3 ~1 ~6 ~-3 ~6 ~6 spruce_log []
fill ~-1 ~1 ~-6 ~-1 ~6 ~-6 spruce_log []
fill ~-1 ~1 ~6 ~-1 ~6 ~6 spruce_log []
fill ~1 ~1 ~-6 ~1 ~6 ~-6 spruce_log []
fill ~1 ~1 ~6 ~1 ~6 ~6 spruce_log []
fill ~3 ~1 ~-6 ~3 ~6 ~-6 spruce_log []
fill ~3 ~1 ~6 ~3 ~6 ~6 spruce_log []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 spruce_log []
fill ~5 ~1 ~6 ~5 ~6 ~6 spruce_log []
fill ~-5 ~1 ~-4 ~-5 ~6 ~-4 spruce_log []
fill ~5 ~1 ~-4 ~5 ~6 ~-4 spruce_log []
fill ~-5 ~1 ~-2 ~-5 ~6 ~-2 spruce_log []
fill ~5 ~1 ~-2 ~5 ~6 ~-2 spruce_log []
fill ~-5 ~1 ~0 ~-5 ~6 ~0 spruce_log []
fill ~5 ~1 ~0 ~5 ~6 ~0 spruce_log []
fill ~-5 ~1 ~2 ~-5 ~6 ~2 spruce_log []
fill ~5 ~1 ~2 ~5 ~6 ~2 spruce_log []
fill ~-5 ~1 ~4 ~-5 ~6 ~4 spruce_log []
fill ~5 ~1 ~4 ~5 ~6 ~4 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 stone_bricks []
fill ~-4 ~8 ~-5 ~4 ~9 ~5 glass []
fill ~-3 ~8 ~-4 ~3 ~8 ~4 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 spruce_log []
setblock ~0 ~4 ~-8 chiseled_stone_bricks []
setblock ~0 ~5 ~-8 torch []
fill ~0 ~0 ~8 ~0 ~3 ~8 spruce_log []
setblock ~0 ~4 ~8 chiseled_stone_bricks []
setblock ~0 ~5 ~8 torch []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 spruce_log []
setblock ~-7 ~4 ~0 chiseled_stone_bricks []
setblock ~-7 ~5 ~0 torch []
fill ~7 ~0 ~0 ~7 ~3 ~0 spruce_log []
setblock ~7 ~4 ~0 chiseled_stone_bricks []
setblock ~7 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~7 ~0 ~-2 ~7 ~4 ~0 calcite []
setblock ~7 ~5 ~-1 emerald_block []
setblock ~7 ~6 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gunpowder 10
replaceitem block ~-4 ~1 ~5 slot.container 1 leather 13
replaceitem block ~-4 ~1 ~5 slot.container 2 emerald 10
replaceitem block ~-4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 4 bone 10
replaceitem block ~-4 ~1 ~5 slot.container 5 rotten_flesh 11
replaceitem block ~-4 ~1 ~5 slot.container 9 cooked_mutton 16
replaceitem block ~-4 ~1 ~5 slot.container 10 bread 10
replaceitem block ~-4 ~1 ~5 slot.container 11 honey_bottle 4
replaceitem block ~-4 ~1 ~5 slot.container 12 emerald 8
replaceitem block ~-4 ~1 ~5 slot.container 13 iron_ingot 9
replaceitem block ~-4 ~1 ~5 slot.container 14 coal 16
loot insert ~-4 ~1 ~5 loot "rsf/meadow"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 emerald 5
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 2 bone 13
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 14
replaceitem block ~4 ~1 ~5 slot.container 4 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 5 string 14
replaceitem block ~4 ~1 ~5 slot.container 9 cooked_mutton 14
replaceitem block ~4 ~1 ~5 slot.container 10 bread 15
replaceitem block ~4 ~1 ~5 slot.container 11 honey_bottle 9
replaceitem block ~4 ~1 ~5 slot.container 12 emerald 6
replaceitem block ~4 ~1 ~5 slot.container 13 iron_ingot 7
replaceitem block ~4 ~1 ~5 slot.container 14 coal 14
loot insert ~4 ~1 ~5 loot "rsf/meadow"
loot insert ~4 ~1 ~5 loot "chests/pillager_outpost"
summon pillager ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
