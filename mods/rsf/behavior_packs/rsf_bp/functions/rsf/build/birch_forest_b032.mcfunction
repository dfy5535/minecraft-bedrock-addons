# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0288/4224 | 主题内编号: b032/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·断顶残垣古哨塔 (birch_forest_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 11x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-6 ~6 ~12 ~6 air [] replace leaves
fill ~-6 ~1 ~-6 ~6 ~12 ~6 air [] replace leaves2
fill ~-6 ~1 ~-6 ~6 ~12 ~6 air [] replace log
fill ~-6 ~1 ~-6 ~6 ~12 ~6 air [] replace log2
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 stone_bricks [] replace air
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 stone_bricks [] replace water
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_brick_slab [] replace air
fill ~-4 ~0 ~-4 ~4 ~0 ~4 mossy_stone_bricks []
fill ~-3 ~0 ~-3 ~3 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 calcite []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 birch_planks []
setblock ~0 ~-6 ~0 bookshelf []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 string 15
replaceitem block ~0 ~-3 ~-2 slot.container 1 gunpowder 6
replaceitem block ~0 ~-3 ~-2 slot.container 2 arrow 17
replaceitem block ~0 ~-3 ~-2 slot.container 3 spider_eye 6
replaceitem block ~0 ~-3 ~-2 slot.container 4 feather 11
replaceitem block ~0 ~-3 ~-2 slot.container 5 phantom_membrane 6
replaceitem block ~0 ~-3 ~-2 slot.container 9 honeycomb 10
replaceitem block ~0 ~-3 ~-2 slot.container 10 honey_bottle 8
replaceitem block ~0 ~-3 ~-2 slot.container 11 birch_log 22
replaceitem block ~0 ~-3 ~-2 slot.container 12 cooked_chicken 8
replaceitem block ~0 ~-3 ~-2 slot.container 13 iron_ingot 6
replaceitem block ~0 ~-3 ~-2 slot.container 14 coal 12
loot insert ~0 ~-3 ~-2 loot "rsf/birch_forest"
loot insert ~0 ~-3 ~-2 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-4 ~4 ~8 ~4 stone_bricks []
fill ~-3 ~1 ~-3 ~3 ~7 ~3 air []
fill ~-4 ~1 ~-4 ~-4 ~8 ~-4 stripped_birch_log []
fill ~-4 ~1 ~4 ~-4 ~8 ~4 stripped_birch_log []
fill ~4 ~1 ~-4 ~4 ~8 ~-4 stripped_birch_log []
fill ~4 ~1 ~4 ~4 ~8 ~4 stripped_birch_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~8 ~-4 ~4 ~8 ~4 stone_brick_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-4 ~7 ~-1 ~-4 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~7 ~-2 stripped_birch_log []
fill ~-5 ~0 ~2 ~-5 ~7 ~2 stripped_birch_log []
fill ~5 ~0 ~-2 ~5 ~7 ~-2 stripped_birch_log []
fill ~5 ~0 ~2 ~5 ~7 ~2 stripped_birch_log []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 5x7x2) ---
fill ~5 ~0 ~-2 ~6 ~0 ~2 stone_bricks []
fill ~6 ~1 ~-2 ~6 ~3 ~-2 stripped_birch_log []
fill ~6 ~1 ~2 ~6 ~3 ~2 stripped_birch_log []
fill ~5 ~4 ~-2 ~6 ~4 ~2 stone_brick_slab []
setblock ~5 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 rotten_flesh 10
replaceitem block ~-3 ~1 ~2 slot.container 1 bone 9
replaceitem block ~-3 ~1 ~2 slot.container 2 string 10
replaceitem block ~-3 ~1 ~2 slot.container 3 gunpowder 9
replaceitem block ~-3 ~1 ~2 slot.container 4 arrow 20
replaceitem block ~-3 ~1 ~2 slot.container 5 spider_eye 9
replaceitem block ~-3 ~1 ~2 slot.container 9 iron_ingot 6
replaceitem block ~-3 ~1 ~2 slot.container 10 coal 12
replaceitem block ~-3 ~1 ~2 slot.container 11 golden_carrot 7
replaceitem block ~-3 ~1 ~2 slot.container 12 iron_sword 1
replaceitem block ~-3 ~1 ~2 slot.container 13 shears 1
replaceitem block ~-3 ~1 ~2 slot.container 14 torch 22
loot insert ~-3 ~1 ~2 loot "rsf/birch_forest"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
