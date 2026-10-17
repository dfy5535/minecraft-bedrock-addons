# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0289/4224 | 主题内编号: b033/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·太阳金顶高耸方尖碑 (birch_forest_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 11x9 | 地上高度 10格 | 地下深度 3格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace log2
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 calcite [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 calcite [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 stone_bricks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 mossy_cobblestone []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 birch_planks []
setblock ~0 ~-5 ~0 gold_block []
fill ~0 ~-4 ~2 ~0 ~0 ~2 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-1 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-1 slot.container 0 gunpowder 6
replaceitem block ~0 ~-2 ~-1 slot.container 1 arrow 17
replaceitem block ~0 ~-2 ~-1 slot.container 2 spider_eye 6
replaceitem block ~0 ~-2 ~-1 slot.container 3 feather 11
replaceitem block ~0 ~-2 ~-1 slot.container 4 phantom_membrane 6
replaceitem block ~0 ~-2 ~-1 slot.container 5 rotten_flesh 15
replaceitem block ~0 ~-2 ~-1 slot.container 9 cooked_chicken 13
replaceitem block ~0 ~-2 ~-1 slot.container 10 iron_ingot 11
replaceitem block ~0 ~-2 ~-1 slot.container 11 coal 10
replaceitem block ~0 ~-2 ~-1 slot.container 12 golden_carrot 5
replaceitem block ~0 ~-2 ~-1 slot.container 13 iron_sword 1
replaceitem block ~0 ~-2 ~-1 slot.container 14 shears 1
loot insert ~0 ~-2 ~-1 loot "rsf/birch_forest"
loot insert ~0 ~-2 ~-1 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-3 ~4 ~2 ~3 calcite []
fill ~-3 ~3 ~-2 ~3 ~4 ~2 birch_planks []
fill ~-2 ~5 ~-1 ~2 ~10 ~1 mossy_cobblestone []
fill ~-2 ~1 ~-1 ~2 ~9 ~1 air []
fill ~0 ~1 ~-3 ~0 ~4 ~-3 birch_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-2 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 birch_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 calcite []
fill ~0 ~16 ~0 ~0 ~19 ~0 bookshelf []
setblock ~0 ~20 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-5 ~-6 ~3 ~-5 birch_log []
setblock ~-6 ~4 ~-5 lantern []
fill ~-6 ~0 ~5 ~-6 ~3 ~5 birch_log []
setblock ~-6 ~4 ~5 lantern []
fill ~6 ~0 ~-5 ~6 ~3 ~-5 birch_log []
setblock ~6 ~4 ~-5 lantern []
fill ~6 ~0 ~5 ~6 ~3 ~5 birch_log []
setblock ~6 ~4 ~5 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 5x4x3) ---
fill ~5 ~0 ~-2 ~6 ~0 ~2 stone_bricks []
fill ~6 ~1 ~-2 ~6 ~4 ~-2 birch_log []
fill ~6 ~1 ~2 ~6 ~4 ~2 birch_log []
fill ~5 ~5 ~-2 ~6 ~5 ~2 stone_brick_slab []
setblock ~5 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 bone 9
replaceitem block ~3 ~1 ~1 slot.container 1 string 10
replaceitem block ~3 ~1 ~1 slot.container 2 gunpowder 9
replaceitem block ~3 ~1 ~1 slot.container 3 arrow 20
replaceitem block ~3 ~1 ~1 slot.container 4 spider_eye 9
replaceitem block ~3 ~1 ~1 slot.container 5 feather 14
replaceitem block ~3 ~1 ~1 slot.container 9 iron_sword 1
replaceitem block ~3 ~1 ~1 slot.container 10 shears 1
replaceitem block ~3 ~1 ~1 slot.container 11 torch 20
replaceitem block ~3 ~1 ~1 slot.container 12 honeycomb 11
replaceitem block ~3 ~1 ~1 slot.container 13 honey_bottle 9
replaceitem block ~3 ~1 ~1 slot.container 14 birch_log 16
loot insert ~3 ~1 ~1 loot "rsf/birch_forest"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 gunpowder 12
replaceitem block ~-3 ~1 ~2 slot.container 1 arrow 23
replaceitem block ~-3 ~1 ~2 slot.container 2 spider_eye 4
replaceitem block ~-3 ~1 ~2 slot.container 3 feather 9
replaceitem block ~-3 ~1 ~2 slot.container 4 phantom_membrane 4
replaceitem block ~-3 ~1 ~2 slot.container 5 rotten_flesh 13
replaceitem block ~-3 ~1 ~2 slot.container 9 iron_sword 1
replaceitem block ~-3 ~1 ~2 slot.container 10 shears 1
replaceitem block ~-3 ~1 ~2 slot.container 11 torch 18
replaceitem block ~-3 ~1 ~2 slot.container 12 honeycomb 9
replaceitem block ~-3 ~1 ~2 slot.container 13 honey_bottle 7
replaceitem block ~-3 ~1 ~2 slot.container 14 birch_log 21
loot insert ~-3 ~1 ~2 loot "rsf/birch_forest"
loot insert ~-3 ~1 ~2 loot "chests/village/village_taiga_house"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
