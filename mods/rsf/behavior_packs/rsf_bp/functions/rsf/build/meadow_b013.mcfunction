# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1933/4224 | 主题内编号: b013/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·地底熔炉苦工地牢 (meadow_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x17 | 地上高度 6格 | 地下深度 5格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-6 ~1 ~-8 ~6 ~8 ~8 air []
fill ~-6 ~0 ~-8 ~6 ~0 ~8 spruce_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 stone_bricks []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

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

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-7 ~5 ~6 ~7 mossy_stone_bricks []
fill ~-4 ~1 ~-6 ~4 ~5 ~6 air []
fill ~-5 ~1 ~-7 ~-5 ~6 ~-7 stripped_spruce_log []
fill ~-5 ~1 ~7 ~-5 ~6 ~7 stripped_spruce_log []
fill ~5 ~1 ~-7 ~5 ~6 ~-7 stripped_spruce_log []
fill ~5 ~1 ~7 ~5 ~6 ~7 stripped_spruce_log []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-7 ~5 ~6 ~7 spruce_planks []
fill ~-5 ~7 ~-7 ~5 ~7 ~7 cobblestone_wall []
fill ~-4 ~7 ~-6 ~4 ~7 ~6 air []
setblock ~-5 ~7 ~-7 stripped_spruce_log []
setblock ~-5 ~8 ~-7 lantern []
setblock ~-5 ~7 ~7 stripped_spruce_log []
setblock ~-5 ~8 ~7 lantern []
setblock ~5 ~7 ~-7 stripped_spruce_log []
setblock ~5 ~8 ~-7 lantern []
setblock ~5 ~7 ~7 stripped_spruce_log []
setblock ~5 ~8 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 stone_bricks []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x10x6) ---
fill ~7 ~0 ~-2 ~7 ~7 ~0 calcite []
setblock ~7 ~8 ~-1 emerald_block []
setblock ~7 ~9 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 leather 13
replaceitem block ~4 ~1 ~6 slot.container 1 emerald 10
replaceitem block ~4 ~1 ~6 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~6 slot.container 3 bone 10
replaceitem block ~4 ~1 ~6 slot.container 4 rotten_flesh 11
replaceitem block ~4 ~1 ~6 slot.container 5 arrow 18
replaceitem block ~4 ~1 ~6 slot.container 9 lantern 5
replaceitem block ~4 ~1 ~6 slot.container 10 cooked_mutton 12
replaceitem block ~4 ~1 ~6 slot.container 11 bread 13
replaceitem block ~4 ~1 ~6 slot.container 12 honey_bottle 7
replaceitem block ~4 ~1 ~6 slot.container 13 emerald 11
replaceitem block ~4 ~1 ~6 slot.container 14 iron_ingot 12
loot insert ~4 ~1 ~6 loot "rsf/meadow"
summon vindicator ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
