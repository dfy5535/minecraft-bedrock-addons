# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0257/4224 | 主题内编号: b001/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·三层阶梯圣火祭坛 (birch_forest_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 5格 | 地下深度 3格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 calcite [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 calcite [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 mossy_cobblestone []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~2 slot.container 0 spider_eye 6
replaceitem block ~3 ~-2 ~2 slot.container 1 feather 11
replaceitem block ~3 ~-2 ~2 slot.container 2 phantom_membrane 6
replaceitem block ~3 ~-2 ~2 slot.container 3 rotten_flesh 15
replaceitem block ~3 ~-2 ~2 slot.container 4 bone 14
replaceitem block ~3 ~-2 ~2 slot.container 5 string 15
replaceitem block ~3 ~-2 ~2 slot.container 9 coal 11
replaceitem block ~3 ~-2 ~2 slot.container 10 golden_carrot 6
replaceitem block ~3 ~-2 ~2 slot.container 11 iron_sword 1
replaceitem block ~3 ~-2 ~2 slot.container 12 shears 1
replaceitem block ~3 ~-2 ~2 slot.container 13 torch 21
replaceitem block ~3 ~-2 ~2 slot.container 14 honeycomb 12
loot insert ~3 ~-2 ~2 loot "rsf/birch_forest"
loot insert ~3 ~-2 ~2 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 calcite []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 birch_planks []
fill ~-3 ~5 ~-2 ~3 ~5 ~2 mossy_cobblestone []
fill ~-3 ~1 ~-2 ~3 ~4 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 birch_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~5 ~-4 ~-5 ~7 ~-4 birch_log []
setblock ~-5 ~8 ~-4 lantern []
fill ~-5 ~5 ~4 ~-5 ~7 ~4 birch_log []
setblock ~-5 ~8 ~4 lantern []
fill ~5 ~5 ~-4 ~5 ~7 ~-4 birch_log []
setblock ~5 ~8 ~-4 lantern []
fill ~5 ~5 ~4 ~5 ~7 ~4 birch_log []
setblock ~5 ~8 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 birch_log []
setblock ~-7 ~4 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 birch_log []
setblock ~-7 ~4 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 birch_log []
setblock ~7 ~4 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~3 ~6 birch_log []
setblock ~7 ~4 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 6x6x6) ---
fill ~6 ~0 ~-2 ~7 ~0 ~2 stone_bricks []
fill ~7 ~1 ~-2 ~7 ~7 ~-2 birch_log []
fill ~7 ~1 ~2 ~7 ~7 ~2 birch_log []
fill ~6 ~8 ~-2 ~7 ~8 ~2 stone_brick_slab []
setblock ~6 ~1 ~0 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 bone 9
replaceitem block ~4 ~1 ~2 slot.container 1 string 10
replaceitem block ~4 ~1 ~2 slot.container 2 gunpowder 9
replaceitem block ~4 ~1 ~2 slot.container 3 arrow 20
replaceitem block ~4 ~1 ~2 slot.container 4 spider_eye 9
replaceitem block ~4 ~1 ~2 slot.container 5 feather 14
replaceitem block ~4 ~1 ~2 slot.container 9 honey_bottle 8
replaceitem block ~4 ~1 ~2 slot.container 10 birch_log 22
replaceitem block ~4 ~1 ~2 slot.container 11 cooked_chicken 8
replaceitem block ~4 ~1 ~2 slot.container 12 iron_ingot 6
replaceitem block ~4 ~1 ~2 slot.container 13 coal 12
replaceitem block ~4 ~1 ~2 slot.container 14 golden_carrot 7
loot insert ~4 ~1 ~2 loot "rsf/birch_forest"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~3 slot.container 1 arrow 23
replaceitem block ~-4 ~1 ~3 slot.container 2 spider_eye 4
replaceitem block ~-4 ~1 ~3 slot.container 3 feather 9
replaceitem block ~-4 ~1 ~3 slot.container 4 phantom_membrane 4
replaceitem block ~-4 ~1 ~3 slot.container 5 rotten_flesh 13
replaceitem block ~-4 ~1 ~3 slot.container 9 honey_bottle 6
replaceitem block ~-4 ~1 ~3 slot.container 10 birch_log 20
replaceitem block ~-4 ~1 ~3 slot.container 11 cooked_chicken 13
replaceitem block ~-4 ~1 ~3 slot.container 12 iron_ingot 11
replaceitem block ~-4 ~1 ~3 slot.container 13 coal 10
replaceitem block ~-4 ~1 ~3 slot.container 14 golden_carrot 5
loot insert ~-4 ~1 ~3 loot "rsf/birch_forest"
loot insert ~-4 ~1 ~3 loot "chests/village/village_taiga_house"
summon witch ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-2 ~0
