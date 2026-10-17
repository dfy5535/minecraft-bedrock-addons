# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1935/4224 | 主题内编号: b015/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·竖井阶梯深渊地牢 (meadow_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 6格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-7 ~-6 ~5 ~-1 ~6 cobblestone [] replace air
fill ~-5 ~-7 ~-6 ~5 ~-1 ~6 cobblestone [] replace water
fill ~-5 ~1 ~-6 ~5 ~9 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-7 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-7 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-7 ~3 campfire []
setblock ~2 ~-7 ~-3 campfire []
setblock ~2 ~-5 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-5 ~3 slot.container 0 rotten_flesh 16
replaceitem block ~2 ~-5 ~3 slot.container 1 arrow 23
replaceitem block ~2 ~-5 ~3 slot.container 2 string 8
replaceitem block ~2 ~-5 ~3 slot.container 3 gunpowder 7
replaceitem block ~2 ~-5 ~3 slot.container 4 leather 10
replaceitem block ~2 ~-5 ~3 slot.container 5 emerald 7
replaceitem block ~2 ~-5 ~3 slot.container 9 golden_apple 6
replaceitem block ~2 ~-5 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~2 ~-5 ~3 slot.container 11 lantern 4
replaceitem block ~2 ~-5 ~3 slot.container 12 cooked_mutton 11
replaceitem block ~2 ~-5 ~3 slot.container 13 bread 12
replaceitem block ~2 ~-5 ~3 slot.container 14 honey_bottle 6
loot insert ~2 ~-5 ~3 loot "rsf/meadow"
loot insert ~2 ~-5 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 cobblestone []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 oak_planks []
fill ~-2 ~5 ~-3 ~2 ~7 ~3 calcite []
fill ~-2 ~1 ~-3 ~2 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 oak_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 oak_planks []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 cobblestone []
fill ~0 ~13 ~0 ~0 ~13 ~0 hay_block []
setblock ~0 ~14 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~4 ~-7 oak_log []
setblock ~-6 ~5 ~-7 campfire []
fill ~-6 ~0 ~7 ~-6 ~4 ~7 oak_log []
setblock ~-6 ~5 ~7 campfire []
fill ~6 ~0 ~-7 ~6 ~4 ~-7 oak_log []
setblock ~6 ~5 ~-7 campfire []
fill ~6 ~0 ~7 ~6 ~4 ~7 oak_log []
setblock ~6 ~5 ~7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~6 ~0 ~-3 ~6 ~4 ~-1 calcite []
setblock ~6 ~5 ~-2 emerald_block []
setblock ~6 ~6 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 1 bone 10
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 11
replaceitem block ~3 ~1 ~4 slot.container 3 arrow 18
replaceitem block ~3 ~1 ~4 slot.container 4 string 11
replaceitem block ~3 ~1 ~4 slot.container 5 gunpowder 10
replaceitem block ~3 ~1 ~4 slot.container 9 coal 15
replaceitem block ~3 ~1 ~4 slot.container 10 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 11 golden_apple 6
replaceitem block ~3 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 13 lantern 4
replaceitem block ~3 ~1 ~4 slot.container 14 cooked_mutton 11
loot insert ~3 ~1 ~4 loot "rsf/meadow"
summon zombie ~0 ~1 ~-1
summon sheep ~-1 ~1 ~1
