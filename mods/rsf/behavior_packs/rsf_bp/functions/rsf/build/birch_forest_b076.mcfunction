# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0332/4224 | 主题内编号: b076/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·阶梯高台图腾战阵 (birch_forest_totem_stepped_altar_ring)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 honeycomb_block []
setblock ~-4 ~-5 ~-3 torch []
setblock ~4 ~-5 ~3 torch []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 arrow 17
replaceitem block ~0 ~-3 ~3 slot.container 1 spider_eye 6
replaceitem block ~0 ~-3 ~3 slot.container 2 feather 11
replaceitem block ~0 ~-3 ~3 slot.container 3 phantom_membrane 6
replaceitem block ~0 ~-3 ~3 slot.container 4 rotten_flesh 15
replaceitem block ~0 ~-3 ~3 slot.container 5 bone 14
replaceitem block ~0 ~-3 ~3 slot.container 9 shears 1
replaceitem block ~0 ~-3 ~3 slot.container 10 torch 17
replaceitem block ~0 ~-3 ~3 slot.container 11 honeycomb 8
replaceitem block ~0 ~-3 ~3 slot.container 12 honey_bottle 6
replaceitem block ~0 ~-3 ~3 slot.container 13 birch_log 20
replaceitem block ~0 ~-3 ~3 slot.container 14 cooked_chicken 13
loot insert ~0 ~-3 ~3 loot "rsf/birch_forest"
loot insert ~0 ~-3 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 stone_bricks []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 birch_planks []
fill ~-4 ~5 ~-3 ~4 ~7 ~3 calcite []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 birch_planks []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 stone_bricks []
fill ~0 ~13 ~0 ~0 ~16 ~0 honeycomb_block []
setblock ~0 ~17 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 stripped_birch_log []
setblock ~0 ~4 ~-7 bookshelf []
setblock ~0 ~5 ~-7 torch []
fill ~0 ~0 ~7 ~0 ~3 ~7 stripped_birch_log []
setblock ~0 ~4 ~7 bookshelf []
setblock ~0 ~5 ~7 torch []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 stripped_birch_log []
setblock ~-8 ~4 ~0 bookshelf []
setblock ~-8 ~5 ~0 torch []
fill ~8 ~0 ~0 ~8 ~3 ~0 stripped_birch_log []
setblock ~8 ~4 ~0 bookshelf []
setblock ~8 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 stone_bricks []
fill ~8 ~1 ~-2 ~8 ~7 ~-2 stripped_birch_log []
fill ~8 ~1 ~2 ~8 ~7 ~2 stripped_birch_log []
fill ~7 ~8 ~-2 ~8 ~8 ~2 stone_brick_slab []
setblock ~7 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 1 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 2 feather 14
replaceitem block ~-5 ~1 ~3 slot.container 3 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 10
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 9
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_carrot 7
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_sword 1
replaceitem block ~-5 ~1 ~3 slot.container 11 shears 1
replaceitem block ~-5 ~1 ~3 slot.container 12 torch 22
replaceitem block ~-5 ~1 ~3 slot.container 13 honeycomb 6
replaceitem block ~-5 ~1 ~3 slot.container 14 honey_bottle 4
loot insert ~-5 ~1 ~3 loot "rsf/birch_forest"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon bee ~1 ~1 ~1
summon witch ~0 ~-3 ~0
