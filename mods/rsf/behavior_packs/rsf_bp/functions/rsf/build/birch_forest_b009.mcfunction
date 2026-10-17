# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0265/4224 | 主题内编号: b009/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·铁栏双室地下死牢 (birch_forest_dungeon_iron_prison)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 4格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 calcite [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 calcite [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 calcite []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 lantern []
setblock ~4 ~-5 ~-3 lantern []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 gunpowder 6
replaceitem block ~4 ~-3 ~3 slot.container 1 arrow 17
replaceitem block ~4 ~-3 ~3 slot.container 2 spider_eye 6
replaceitem block ~4 ~-3 ~3 slot.container 3 feather 11
replaceitem block ~4 ~-3 ~3 slot.container 4 phantom_membrane 6
replaceitem block ~4 ~-3 ~3 slot.container 5 rotten_flesh 15
replaceitem block ~4 ~-3 ~3 slot.container 9 iron_sword 1
replaceitem block ~4 ~-3 ~3 slot.container 10 shears 1
replaceitem block ~4 ~-3 ~3 slot.container 11 torch 19
replaceitem block ~4 ~-3 ~3 slot.container 12 honeycomb 10
replaceitem block ~4 ~-3 ~3 slot.container 13 honey_bottle 8
replaceitem block ~4 ~-3 ~3 slot.container 14 birch_log 22
loot insert ~4 ~-3 ~3 loot "rsf/birch_forest"
loot insert ~4 ~-3 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 calcite []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 birch_planks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 birch_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~4 ~-5 ~6 ~4 ~5 birch_planks []
fill ~-6 ~5 ~-5 ~6 ~5 ~5 birch_fence []
fill ~-5 ~5 ~-4 ~5 ~5 ~4 air []
setblock ~-6 ~5 ~-5 birch_log []
setblock ~-6 ~6 ~-5 lantern []
setblock ~-6 ~5 ~5 birch_log []
setblock ~-6 ~6 ~5 lantern []
setblock ~6 ~5 ~-5 birch_log []
setblock ~6 ~6 ~-5 lantern []
setblock ~6 ~5 ~5 birch_log []
setblock ~6 ~6 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 birch_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 birch_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 birch_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 stone_bricks []
fill ~8 ~1 ~-2 ~8 ~5 ~-2 birch_log []
fill ~8 ~1 ~2 ~8 ~5 ~2 birch_log []
fill ~7 ~6 ~-2 ~8 ~6 ~2 stone_brick_slab []
setblock ~7 ~1 ~0 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~3 ~0 lantern []
setblock ~-4 ~1 ~3 smithing_table []
setblock ~-3 ~1 ~3 anvil []
setblock ~3 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 bone 9
replaceitem block ~5 ~1 ~3 slot.container 1 string 10
replaceitem block ~5 ~1 ~3 slot.container 2 gunpowder 9
replaceitem block ~5 ~1 ~3 slot.container 3 arrow 20
replaceitem block ~5 ~1 ~3 slot.container 4 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 5 feather 14
replaceitem block ~5 ~1 ~3 slot.container 9 coal 16
replaceitem block ~5 ~1 ~3 slot.container 10 golden_carrot 4
replaceitem block ~5 ~1 ~3 slot.container 11 iron_sword 1
replaceitem block ~5 ~1 ~3 slot.container 12 shears 1
replaceitem block ~5 ~1 ~3 slot.container 13 torch 19
replaceitem block ~5 ~1 ~3 slot.container 14 honeycomb 10
loot insert ~5 ~1 ~3 loot "rsf/birch_forest"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 1 arrow 23
replaceitem block ~-5 ~1 ~4 slot.container 2 spider_eye 4
replaceitem block ~-5 ~1 ~4 slot.container 3 feather 9
replaceitem block ~-5 ~1 ~4 slot.container 4 phantom_membrane 4
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 13
replaceitem block ~-5 ~1 ~4 slot.container 9 coal 14
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_carrot 9
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_sword 1
replaceitem block ~-5 ~1 ~4 slot.container 12 shears 1
replaceitem block ~-5 ~1 ~4 slot.container 13 torch 17
replaceitem block ~-5 ~1 ~4 slot.container 14 honeycomb 8
loot insert ~-5 ~1 ~4 loot "rsf/birch_forest"
loot insert ~-5 ~1 ~4 loot "chests/village/village_taiga_house"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
