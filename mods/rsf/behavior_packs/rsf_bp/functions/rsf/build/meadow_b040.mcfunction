# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1960/4224 | 主题内编号: b040/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·崩裂远古符文石碑 (meadow_obelisk_fractured_relic)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 calcite [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 calcite [] replace water
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air []
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
replaceitem block ~2 ~-2 ~3 slot.container 0 gunpowder 7
replaceitem block ~2 ~-2 ~3 slot.container 1 leather 10
replaceitem block ~2 ~-2 ~3 slot.container 2 emerald 7
replaceitem block ~2 ~-2 ~3 slot.container 3 ender_pearl 6
replaceitem block ~2 ~-2 ~3 slot.container 4 bone 15
replaceitem block ~2 ~-2 ~3 slot.container 5 rotten_flesh 16
replaceitem block ~2 ~-2 ~3 slot.container 9 iron_ingot 9
replaceitem block ~2 ~-2 ~3 slot.container 10 coal 16
replaceitem block ~2 ~-2 ~3 slot.container 11 saddle 1
replaceitem block ~2 ~-2 ~3 slot.container 12 golden_apple 7
replaceitem block ~2 ~-2 ~3 slot.container 13 iron_pickaxe 1
replaceitem block ~2 ~-2 ~3 slot.container 14 lantern 5
loot insert ~2 ~-2 ~3 loot "rsf/meadow"
loot insert ~2 ~-2 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 calcite []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 stone_bricks []
fill ~-2 ~5 ~-3 ~2 ~8 ~3 mossy_stone_bricks []
fill ~-2 ~1 ~-3 ~2 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 spruce_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 stone_brick_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-4 ~7 ~-1 ~-4 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~7 ~-2 spruce_log []
fill ~-5 ~0 ~2 ~-5 ~7 ~2 spruce_log []
fill ~5 ~0 ~-2 ~5 ~7 ~-2 spruce_log []
fill ~5 ~0 ~2 ~5 ~7 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 6x8x3) ---
fill ~6 ~0 ~-3 ~6 ~4 ~-1 calcite []
setblock ~6 ~5 ~-2 emerald_block []
setblock ~6 ~6 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 bone 10
replaceitem block ~-3 ~1 ~4 slot.container 1 rotten_flesh 11
replaceitem block ~-3 ~1 ~4 slot.container 2 arrow 18
replaceitem block ~-3 ~1 ~4 slot.container 3 string 11
replaceitem block ~-3 ~1 ~4 slot.container 4 gunpowder 10
replaceitem block ~-3 ~1 ~4 slot.container 5 leather 13
replaceitem block ~-3 ~1 ~4 slot.container 9 cooked_mutton 10
replaceitem block ~-3 ~1 ~4 slot.container 10 bread 11
replaceitem block ~-3 ~1 ~4 slot.container 11 honey_bottle 5
replaceitem block ~-3 ~1 ~4 slot.container 12 emerald 9
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_ingot 10
replaceitem block ~-3 ~1 ~4 slot.container 14 coal 17
loot insert ~-3 ~1 ~4 loot "rsf/meadow"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 1 string 14
replaceitem block ~3 ~1 ~4 slot.container 2 gunpowder 13
replaceitem block ~3 ~1 ~4 slot.container 3 leather 8
replaceitem block ~3 ~1 ~4 slot.container 4 emerald 5
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 9 cooked_mutton 15
replaceitem block ~3 ~1 ~4 slot.container 10 bread 16
replaceitem block ~3 ~1 ~4 slot.container 11 honey_bottle 3
replaceitem block ~3 ~1 ~4 slot.container 12 emerald 7
replaceitem block ~3 ~1 ~4 slot.container 13 iron_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 14 coal 15
loot insert ~3 ~1 ~4 loot "rsf/meadow"
loot insert ~3 ~1 ~4 loot "chests/pillager_outpost"
summon sheep ~0 ~1 ~-1
summon donkey ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
