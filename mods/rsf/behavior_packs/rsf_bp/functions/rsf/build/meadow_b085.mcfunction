# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2005/4224 | 主题内编号: b085/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·双子烟囱砖石窑厂 (meadow_mine_twin_kiln)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-6 ~1 ~-6 ~6 ~10 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 spruce_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 mossy_stone_bricks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 rotten_flesh 16
replaceitem block ~3 ~-3 ~3 slot.container 1 arrow 23
replaceitem block ~3 ~-3 ~3 slot.container 2 string 8
replaceitem block ~3 ~-3 ~3 slot.container 3 gunpowder 7
replaceitem block ~3 ~-3 ~3 slot.container 4 leather 10
replaceitem block ~3 ~-3 ~3 slot.container 5 emerald 7
replaceitem block ~3 ~-3 ~3 slot.container 9 bread 12
replaceitem block ~3 ~-3 ~3 slot.container 10 honey_bottle 6
replaceitem block ~3 ~-3 ~3 slot.container 11 emerald 10
replaceitem block ~3 ~-3 ~3 slot.container 12 iron_ingot 11
replaceitem block ~3 ~-3 ~3 slot.container 13 coal 18
replaceitem block ~3 ~-3 ~3 slot.container 14 saddle 1
loot insert ~3 ~-3 ~3 loot "rsf/meadow"
loot insert ~3 ~-3 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~9 ~5 mossy_stone_bricks []
fill ~2 ~1 ~-5 ~5 ~9 ~5 mossy_stone_bricks []
fill ~-4 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~4 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 spruce_planks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 spruce_planks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 mossy_stone_bricks []
fill ~0 ~14 ~0 ~0 ~14 ~0 chiseled_stone_bricks []
setblock ~0 ~15 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 spruce_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 stripped_spruce_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 stripped_spruce_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 spruce_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~7 ~0 ~-3 ~7 ~4 ~-1 calcite []
setblock ~7 ~5 ~-2 emerald_block []
setblock ~7 ~6 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 leather 13
replaceitem block ~4 ~1 ~4 slot.container 1 emerald 10
replaceitem block ~4 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~4 slot.container 3 bone 10
replaceitem block ~4 ~1 ~4 slot.container 4 rotten_flesh 11
replaceitem block ~4 ~1 ~4 slot.container 5 arrow 18
replaceitem block ~4 ~1 ~4 slot.container 9 coal 15
replaceitem block ~4 ~1 ~4 slot.container 10 saddle 1
replaceitem block ~4 ~1 ~4 slot.container 11 golden_apple 6
replaceitem block ~4 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~4 ~1 ~4 slot.container 13 lantern 4
replaceitem block ~4 ~1 ~4 slot.container 14 cooked_mutton 11
loot insert ~4 ~1 ~4 loot "rsf/meadow"
summon vindicator ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
