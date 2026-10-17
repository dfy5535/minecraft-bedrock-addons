# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0283/4224 | 主题内编号: b027/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·双子连廊警戒塔楼 (birch_forest_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x9 | 地上高度 8格 | 地下深度 2格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~12 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~12 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~12 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~12 ~5 air [] replace log2
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 birch_planks [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 birch_planks [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 birch_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 cobblestone []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~9 ~3 birch_planks []
fill ~2 ~1 ~-3 ~6 ~9 ~3 birch_planks []
fill ~-5 ~1 ~-2 ~-3 ~8 ~2 air []
fill ~3 ~1 ~-2 ~5 ~8 ~2 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 stone_bricks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-3 ~6 ~8 ~3 stone_bricks []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 birch_fence []
fill ~-5 ~9 ~-2 ~5 ~9 ~2 air []
setblock ~-6 ~9 ~-3 birch_log []
setblock ~-6 ~10 ~-3 lantern []
setblock ~-6 ~9 ~3 birch_log []
setblock ~-6 ~10 ~3 lantern []
setblock ~6 ~9 ~-3 birch_log []
setblock ~6 ~10 ~-3 lantern []
setblock ~6 ~9 ~3 birch_log []
setblock ~6 ~10 ~3 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 stone_bricks []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 lantern []
setblock ~2 ~4 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x4x2) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 mossy_stone_bricks []
fill ~8 ~1 ~-2 ~8 ~3 ~-2 birch_log []
fill ~8 ~1 ~2 ~8 ~3 ~2 birch_log []
fill ~7 ~4 ~-2 ~8 ~4 ~2 birch_slab []
setblock ~7 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~2 bookshelf []
setblock ~5 ~1 ~2 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 gunpowder 9
replaceitem block ~5 ~1 ~1 slot.container 1 arrow 20
replaceitem block ~5 ~1 ~1 slot.container 2 spider_eye 9
replaceitem block ~5 ~1 ~1 slot.container 3 feather 14
replaceitem block ~5 ~1 ~1 slot.container 4 phantom_membrane 9
replaceitem block ~5 ~1 ~1 slot.container 5 rotten_flesh 10
replaceitem block ~5 ~1 ~1 slot.container 9 torch 19
replaceitem block ~5 ~1 ~1 slot.container 10 honeycomb 10
replaceitem block ~5 ~1 ~1 slot.container 11 honey_bottle 8
replaceitem block ~5 ~1 ~1 slot.container 12 birch_log 22
replaceitem block ~5 ~1 ~1 slot.container 13 cooked_chicken 8
replaceitem block ~5 ~1 ~1 slot.container 14 iron_ingot 6
loot insert ~5 ~1 ~1 loot "rsf/birch_forest"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 spider_eye 4
replaceitem block ~-5 ~1 ~2 slot.container 1 feather 9
replaceitem block ~-5 ~1 ~2 slot.container 2 phantom_membrane 4
replaceitem block ~-5 ~1 ~2 slot.container 3 rotten_flesh 13
replaceitem block ~-5 ~1 ~2 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~2 slot.container 5 string 13
replaceitem block ~-5 ~1 ~2 slot.container 9 torch 17
replaceitem block ~-5 ~1 ~2 slot.container 10 honeycomb 8
replaceitem block ~-5 ~1 ~2 slot.container 11 honey_bottle 6
replaceitem block ~-5 ~1 ~2 slot.container 12 birch_log 20
replaceitem block ~-5 ~1 ~2 slot.container 13 cooked_chicken 13
replaceitem block ~-5 ~1 ~2 slot.container 14 iron_ingot 11
loot insert ~-5 ~1 ~2 loot "rsf/birch_forest"
loot insert ~-5 ~1 ~2 loot "chests/village/village_taiga_house"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
