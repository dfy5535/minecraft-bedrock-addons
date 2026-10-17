# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0356/4224 | 主题内编号: b100/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·半地下暗堡火力点 (birch_forest_bunker_sunken_pillbox)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x11 | 地上高度 4格 | 地下深度 5格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air [] replace log2
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-6 ~-2 ~3 ~-1 ~2 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~2 anvil []
fill ~0 ~-6 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~2 slot.container 0 rotten_flesh 15
replaceitem block ~3 ~-4 ~2 slot.container 1 bone 14
replaceitem block ~3 ~-4 ~2 slot.container 2 string 15
replaceitem block ~3 ~-4 ~2 slot.container 3 gunpowder 6
replaceitem block ~3 ~-4 ~2 slot.container 4 arrow 17
replaceitem block ~3 ~-4 ~2 slot.container 5 spider_eye 6
replaceitem block ~3 ~-4 ~2 slot.container 9 iron_ingot 10
replaceitem block ~3 ~-4 ~2 slot.container 10 coal 16
replaceitem block ~3 ~-4 ~2 slot.container 11 golden_carrot 4
replaceitem block ~3 ~-4 ~2 slot.container 12 iron_sword 1
replaceitem block ~3 ~-4 ~2 slot.container 13 shears 1
replaceitem block ~3 ~-4 ~2 slot.container 14 torch 19
loot insert ~3 ~-4 ~2 loot "rsf/birch_forest"
loot insert ~3 ~-4 ~2 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 birch_planks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 birch_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~4 ~-4 ~5 ~4 ~4 birch_planks []
fill ~-5 ~5 ~-4 ~5 ~5 ~4 cobblestone_wall []
fill ~-4 ~5 ~-3 ~4 ~5 ~3 air []
setblock ~-5 ~5 ~-4 stripped_birch_log []
setblock ~-5 ~6 ~-4 torch []
setblock ~-5 ~5 ~4 stripped_birch_log []
setblock ~-5 ~6 ~4 torch []
setblock ~5 ~5 ~-4 stripped_birch_log []
setblock ~5 ~6 ~-4 torch []
setblock ~5 ~5 ~4 stripped_birch_log []
setblock ~5 ~6 ~4 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 cobblestone_wall []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 6x6x5) ---
fill ~6 ~0 ~-2 ~7 ~0 ~2 stone_bricks []
fill ~7 ~1 ~-2 ~7 ~6 ~-2 stripped_birch_log []
fill ~7 ~1 ~2 ~7 ~6 ~2 stripped_birch_log []
fill ~6 ~7 ~-2 ~7 ~7 ~2 stone_brick_slab []
setblock ~6 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 arrow 20
replaceitem block ~-4 ~1 ~2 slot.container 1 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 2 feather 14
replaceitem block ~-4 ~1 ~2 slot.container 3 phantom_membrane 9
replaceitem block ~-4 ~1 ~2 slot.container 4 rotten_flesh 10
replaceitem block ~-4 ~1 ~2 slot.container 5 bone 9
replaceitem block ~-4 ~1 ~2 slot.container 9 shears 1
replaceitem block ~-4 ~1 ~2 slot.container 10 torch 16
replaceitem block ~-4 ~1 ~2 slot.container 11 honeycomb 7
replaceitem block ~-4 ~1 ~2 slot.container 12 honey_bottle 5
replaceitem block ~-4 ~1 ~2 slot.container 13 birch_log 19
replaceitem block ~-4 ~1 ~2 slot.container 14 cooked_chicken 12
loot insert ~-4 ~1 ~2 loot "rsf/birch_forest"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon bee ~1 ~1 ~1
summon witch ~0 ~-4 ~0
