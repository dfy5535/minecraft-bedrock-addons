# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0324/4224 | 主题内编号: b068/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·断裂凯旋高架拱廊 (birch_forest_ruin_broken_aqueduct)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log2
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 stone_bricks [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 stone_bricks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 stone_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 mossy_stone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 birch_planks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-7 ~1 ~-4 ~7 ~6 ~4 stone_bricks []
fill ~-6 ~1 ~-3 ~6 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 stone_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-7 ~5 ~-1 ~-7 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 birch_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 torch []
setblock ~2 ~4 ~-7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~8 ~0 ~-2 ~9 ~0 ~2 stone_bricks []
fill ~9 ~1 ~-2 ~9 ~4 ~-2 stripped_birch_log []
fill ~9 ~1 ~2 ~9 ~4 ~2 stripped_birch_log []
fill ~8 ~5 ~-2 ~9 ~5 ~2 stone_brick_slab []
setblock ~8 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~3 smithing_table []
setblock ~-4 ~1 ~3 anvil []
setblock ~4 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 arrow 20
replaceitem block ~-6 ~1 ~2 slot.container 1 spider_eye 9
replaceitem block ~-6 ~1 ~2 slot.container 2 feather 14
replaceitem block ~-6 ~1 ~2 slot.container 3 phantom_membrane 9
replaceitem block ~-6 ~1 ~2 slot.container 4 rotten_flesh 10
replaceitem block ~-6 ~1 ~2 slot.container 5 bone 9
replaceitem block ~-6 ~1 ~2 slot.container 9 birch_log 18
replaceitem block ~-6 ~1 ~2 slot.container 10 cooked_chicken 11
replaceitem block ~-6 ~1 ~2 slot.container 11 iron_ingot 9
replaceitem block ~-6 ~1 ~2 slot.container 12 coal 15
replaceitem block ~-6 ~1 ~2 slot.container 13 golden_carrot 10
replaceitem block ~-6 ~1 ~2 slot.container 14 iron_sword 1
loot insert ~-6 ~1 ~2 loot "rsf/birch_forest"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
