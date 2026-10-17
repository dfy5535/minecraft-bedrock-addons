# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0271/4224 | 主题内编号: b015/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·竖井阶梯深渊地牢 (birch_forest_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 5格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log2
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 birch_planks [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 birch_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 birch_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 birch_planks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~2 lantern []
setblock ~3 ~-6 ~-2 lantern []
setblock ~3 ~-4 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~2 slot.container 0 bone 14
replaceitem block ~3 ~-4 ~2 slot.container 1 string 15
replaceitem block ~3 ~-4 ~2 slot.container 2 gunpowder 6
replaceitem block ~3 ~-4 ~2 slot.container 3 arrow 17
replaceitem block ~3 ~-4 ~2 slot.container 4 spider_eye 6
replaceitem block ~3 ~-4 ~2 slot.container 5 feather 11
replaceitem block ~3 ~-4 ~2 slot.container 9 coal 10
replaceitem block ~3 ~-4 ~2 slot.container 10 golden_carrot 5
replaceitem block ~3 ~-4 ~2 slot.container 11 iron_sword 1
replaceitem block ~3 ~-4 ~2 slot.container 12 shears 1
replaceitem block ~3 ~-4 ~2 slot.container 13 torch 20
replaceitem block ~3 ~-4 ~2 slot.container 14 honeycomb 11
loot insert ~3 ~-4 ~2 loot "rsf/birch_forest"
loot insert ~3 ~-4 ~2 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 birch_planks []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 stone_bricks []
fill ~-3 ~5 ~-2 ~3 ~6 ~2 stone_bricks []
fill ~-3 ~1 ~-2 ~3 ~5 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 birch_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~7 ~-2 ~2 ~8 ~2 stone_bricks []
fill ~-1 ~9 ~-1 ~1 ~11 ~1 birch_planks []
fill ~0 ~12 ~0 ~0 ~15 ~0 chiseled_stone_bricks []
setblock ~0 ~16 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 birch_log []
setblock ~-7 ~4 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 birch_log []
setblock ~-7 ~4 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 birch_log []
setblock ~7 ~4 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~3 ~6 birch_log []
setblock ~7 ~4 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 6x5x5) ---
fill ~6 ~0 ~-2 ~7 ~0 ~2 mossy_stone_bricks []
fill ~7 ~1 ~-2 ~7 ~6 ~-2 birch_log []
fill ~7 ~1 ~2 ~7 ~6 ~2 birch_log []
fill ~6 ~7 ~-2 ~7 ~7 ~2 birch_slab []
setblock ~6 ~1 ~0 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 phantom_membrane 9
replaceitem block ~4 ~1 ~2 slot.container 1 rotten_flesh 10
replaceitem block ~4 ~1 ~2 slot.container 2 bone 9
replaceitem block ~4 ~1 ~2 slot.container 3 string 10
replaceitem block ~4 ~1 ~2 slot.container 4 gunpowder 9
replaceitem block ~4 ~1 ~2 slot.container 5 arrow 20
replaceitem block ~4 ~1 ~2 slot.container 9 cooked_chicken 13
replaceitem block ~4 ~1 ~2 slot.container 10 iron_ingot 11
replaceitem block ~4 ~1 ~2 slot.container 11 coal 10
replaceitem block ~4 ~1 ~2 slot.container 12 golden_carrot 5
replaceitem block ~4 ~1 ~2 slot.container 13 iron_sword 1
replaceitem block ~4 ~1 ~2 slot.container 14 shears 1
loot insert ~4 ~1 ~2 loot "rsf/birch_forest"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~3 slot.container 1 string 13
replaceitem block ~-4 ~1 ~3 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~3 slot.container 3 arrow 23
replaceitem block ~-4 ~1 ~3 slot.container 4 spider_eye 4
replaceitem block ~-4 ~1 ~3 slot.container 5 feather 9
replaceitem block ~-4 ~1 ~3 slot.container 9 cooked_chicken 11
replaceitem block ~-4 ~1 ~3 slot.container 10 iron_ingot 9
replaceitem block ~-4 ~1 ~3 slot.container 11 coal 15
replaceitem block ~-4 ~1 ~3 slot.container 12 golden_carrot 10
replaceitem block ~-4 ~1 ~3 slot.container 13 iron_sword 1
replaceitem block ~-4 ~1 ~3 slot.container 14 shears 1
loot insert ~-4 ~1 ~3 loot "rsf/birch_forest"
loot insert ~-4 ~1 ~3 loot "chests/village/village_taiga_house"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
