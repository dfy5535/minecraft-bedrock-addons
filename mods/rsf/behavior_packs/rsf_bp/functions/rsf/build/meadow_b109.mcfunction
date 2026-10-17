# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2029/4224 | 主题内编号: b109/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·环柱能量矩阵奥术厅 (meadow_arcane_rotunda_nexus)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 spruce_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 rotten_flesh 16
replaceitem block ~3 ~-3 ~4 slot.container 1 arrow 23
replaceitem block ~3 ~-3 ~4 slot.container 2 string 8
replaceitem block ~3 ~-3 ~4 slot.container 3 gunpowder 7
replaceitem block ~3 ~-3 ~4 slot.container 4 leather 10
replaceitem block ~3 ~-3 ~4 slot.container 5 emerald 7
replaceitem block ~3 ~-3 ~4 slot.container 9 bread 12
replaceitem block ~3 ~-3 ~4 slot.container 10 honey_bottle 6
replaceitem block ~3 ~-3 ~4 slot.container 11 emerald 10
replaceitem block ~3 ~-3 ~4 slot.container 12 iron_ingot 11
replaceitem block ~3 ~-3 ~4 slot.container 13 coal 18
replaceitem block ~3 ~-3 ~4 slot.container 14 saddle 1
loot insert ~3 ~-3 ~4 loot "rsf/meadow"
loot insert ~3 ~-3 ~4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 spruce_planks []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 stripped_spruce_log []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 stripped_spruce_log []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 stripped_spruce_log []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 stripped_spruce_log []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 stripped_spruce_log []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 stripped_spruce_log []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 stripped_spruce_log []
fill ~1 ~1 ~6 ~1 ~7 ~6 stripped_spruce_log []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 stripped_spruce_log []
fill ~3 ~1 ~6 ~3 ~7 ~6 stripped_spruce_log []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 stripped_spruce_log []
fill ~5 ~1 ~6 ~5 ~7 ~6 stripped_spruce_log []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 stripped_spruce_log []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 stripped_spruce_log []
fill ~-5 ~1 ~-2 ~-5 ~7 ~-2 stripped_spruce_log []
fill ~5 ~1 ~-2 ~5 ~7 ~-2 stripped_spruce_log []
fill ~-5 ~1 ~0 ~-5 ~7 ~0 stripped_spruce_log []
fill ~5 ~1 ~0 ~5 ~7 ~0 stripped_spruce_log []
fill ~-5 ~1 ~2 ~-5 ~7 ~2 stripped_spruce_log []
fill ~5 ~1 ~2 ~5 ~7 ~2 stripped_spruce_log []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 stripped_spruce_log []
fill ~5 ~1 ~4 ~5 ~7 ~4 stripped_spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 spruce_planks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 mossy_stone_bricks []
fill ~0 ~14 ~0 ~0 ~14 ~0 chiseled_stone_bricks []
setblock ~0 ~15 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 stripped_spruce_log []
setblock ~0 ~4 ~-8 emerald_block []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 stripped_spruce_log []
setblock ~0 ~4 ~8 emerald_block []
setblock ~0 ~5 ~8 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 stripped_spruce_log []
setblock ~-7 ~4 ~0 emerald_block []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 stripped_spruce_log []
setblock ~7 ~4 ~0 emerald_block []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x9x2) ---
fill ~7 ~0 ~-1 ~7 ~3 ~1 calcite []
setblock ~7 ~4 ~0 emerald_block []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 leather 13
replaceitem block ~4 ~1 ~5 slot.container 1 emerald 10
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 bone 10
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 11
replaceitem block ~4 ~1 ~5 slot.container 5 arrow 18
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 7
replaceitem block ~4 ~1 ~5 slot.container 10 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 11 lantern 5
replaceitem block ~4 ~1 ~5 slot.container 12 cooked_mutton 12
replaceitem block ~4 ~1 ~5 slot.container 13 bread 13
replaceitem block ~4 ~1 ~5 slot.container 14 honey_bottle 7
loot insert ~4 ~1 ~5 loot "rsf/meadow"
summon vindicator ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
