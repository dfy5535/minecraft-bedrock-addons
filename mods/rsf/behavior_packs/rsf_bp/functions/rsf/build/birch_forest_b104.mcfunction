# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0360/4224 | 主题内编号: b104/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·双层指挥台卫戍堡 (birch_forest_bunker_terrace_command)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_lectern]
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

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 calcite []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 arrow 17
replaceitem block ~4 ~-3 ~3 slot.container 1 spider_eye 6
replaceitem block ~4 ~-3 ~3 slot.container 2 feather 11
replaceitem block ~4 ~-3 ~3 slot.container 3 phantom_membrane 6
replaceitem block ~4 ~-3 ~3 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~-3 ~3 slot.container 5 bone 14
replaceitem block ~4 ~-3 ~3 slot.container 9 iron_ingot 11
replaceitem block ~4 ~-3 ~3 slot.container 10 coal 10
replaceitem block ~4 ~-3 ~3 slot.container 11 golden_carrot 5
replaceitem block ~4 ~-3 ~3 slot.container 12 iron_sword 1
replaceitem block ~4 ~-3 ~3 slot.container 13 shears 1
replaceitem block ~4 ~-3 ~3 slot.container 14 torch 20
loot insert ~4 ~-3 ~3 loot "rsf/birch_forest"
loot insert ~4 ~-3 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-5 ~6 ~3 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~2 ~4 air []
fill ~-7 ~3 ~-6 ~7 ~3 ~6 stone_brick_slab []
fill ~-5 ~4 ~-4 ~5 ~7 ~4 calcite []
fill ~-4 ~4 ~-3 ~4 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~4 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 birch_planks []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 cobblestone_wall []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 air []
setblock ~-6 ~8 ~-5 stripped_birch_log []
setblock ~-6 ~9 ~-5 torch []
setblock ~-6 ~8 ~5 stripped_birch_log []
setblock ~-6 ~9 ~5 torch []
setblock ~6 ~8 ~-5 stripped_birch_log []
setblock ~6 ~9 ~-5 torch []
setblock ~6 ~8 ~5 stripped_birch_log []
setblock ~6 ~9 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 stone_bricks []
fill ~8 ~1 ~-2 ~8 ~5 ~-2 stripped_birch_log []
fill ~8 ~1 ~2 ~8 ~5 ~2 stripped_birch_log []
fill ~7 ~6 ~-2 ~8 ~6 ~2 stone_brick_slab []
setblock ~7 ~1 ~0 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 10
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 9
replaceitem block ~-5 ~1 ~3 slot.container 2 string 10
replaceitem block ~-5 ~1 ~3 slot.container 3 gunpowder 9
replaceitem block ~-5 ~1 ~3 slot.container 4 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 9 honeycomb 9
replaceitem block ~-5 ~1 ~3 slot.container 10 honey_bottle 7
replaceitem block ~-5 ~1 ~3 slot.container 11 birch_log 21
replaceitem block ~-5 ~1 ~3 slot.container 12 cooked_chicken 14
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_ingot 5
replaceitem block ~-5 ~1 ~3 slot.container 14 coal 11
loot insert ~-5 ~1 ~3 loot "rsf/birch_forest"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
