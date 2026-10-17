# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1953/4224 | 主题内编号: b033/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·太阳金顶高耸方尖碑 (meadow_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 9x11 | 地上高度 11格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-4 ~1 ~-5 ~4 ~13 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 spruce_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 stone_bricks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 spruce_planks []
setblock ~0 ~-6 ~0 emerald_block []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 string 8
replaceitem block ~0 ~-3 ~-2 slot.container 1 gunpowder 7
replaceitem block ~0 ~-3 ~-2 slot.container 2 leather 10
replaceitem block ~0 ~-3 ~-2 slot.container 3 emerald 7
replaceitem block ~0 ~-3 ~-2 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-3 ~-2 slot.container 5 bone 15
replaceitem block ~0 ~-3 ~-2 slot.container 9 coal 15
replaceitem block ~0 ~-3 ~-2 slot.container 10 saddle 1
replaceitem block ~0 ~-3 ~-2 slot.container 11 golden_apple 6
replaceitem block ~0 ~-3 ~-2 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-3 ~-2 slot.container 13 lantern 4
replaceitem block ~0 ~-3 ~-2 slot.container 14 cooked_mutton 11
loot insert ~0 ~-3 ~-2 loot "rsf/meadow"
loot insert ~0 ~-3 ~-2 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-3 ~1 ~-4 ~3 ~2 ~4 mossy_stone_bricks []
fill ~-2 ~3 ~-3 ~2 ~4 ~3 spruce_planks []
fill ~-1 ~5 ~-2 ~1 ~11 ~2 stone_bricks []
fill ~-1 ~1 ~-2 ~1 ~10 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 spruce_planks []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 mossy_stone_bricks []
fill ~0 ~17 ~0 ~0 ~17 ~0 chiseled_stone_bricks []
setblock ~0 ~18 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-5 ~0 ~-6 ~-5 ~4 ~-6 stripped_spruce_log []
setblock ~-5 ~5 ~-6 lantern []
fill ~-5 ~0 ~6 ~-5 ~4 ~6 stripped_spruce_log []
setblock ~-5 ~5 ~6 lantern []
fill ~5 ~0 ~-6 ~5 ~4 ~-6 stripped_spruce_log []
setblock ~5 ~5 ~-6 lantern []
fill ~5 ~0 ~6 ~5 ~4 ~6 stripped_spruce_log []
setblock ~5 ~5 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 5x6x6) ---
fill ~5 ~0 ~-2 ~5 ~7 ~0 calcite []
setblock ~5 ~8 ~-1 emerald_block []
setblock ~5 ~9 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 rotten_flesh 11
replaceitem block ~2 ~1 ~3 slot.container 1 arrow 18
replaceitem block ~2 ~1 ~3 slot.container 2 string 11
replaceitem block ~2 ~1 ~3 slot.container 3 gunpowder 10
replaceitem block ~2 ~1 ~3 slot.container 4 leather 13
replaceitem block ~2 ~1 ~3 slot.container 5 emerald 10
replaceitem block ~2 ~1 ~3 slot.container 9 lantern 4
replaceitem block ~2 ~1 ~3 slot.container 10 cooked_mutton 11
replaceitem block ~2 ~1 ~3 slot.container 11 bread 12
replaceitem block ~2 ~1 ~3 slot.container 12 honey_bottle 6
replaceitem block ~2 ~1 ~3 slot.container 13 emerald 10
replaceitem block ~2 ~1 ~3 slot.container 14 iron_ingot 11
loot insert ~2 ~1 ~3 loot "rsf/meadow"
summon zombie ~0 ~1 ~-1
summon sheep ~-1 ~1 ~1
