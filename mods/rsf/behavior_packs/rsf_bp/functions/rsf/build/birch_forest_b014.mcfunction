# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0270/4224 | 主题内编号: b014/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·暗渠蓄水池秘境地牢 (birch_forest_dungeon_flooded_cistern)
# 建筑构造: 主体[u_courtyard] + 屋顶[ruined_skylight] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x13 | 地上高度 4格 | 地下深度 6格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air [] replace log2
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace air
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 birch_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 birch_planks []
fill ~-4 ~-7 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 water []
fill ~0 ~-7 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-5 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-5 ~3 slot.container 0 rotten_flesh 15
replaceitem block ~-4 ~-5 ~3 slot.container 1 bone 14
replaceitem block ~-4 ~-5 ~3 slot.container 2 string 15
replaceitem block ~-4 ~-5 ~3 slot.container 3 gunpowder 6
replaceitem block ~-4 ~-5 ~3 slot.container 4 arrow 17
replaceitem block ~-4 ~-5 ~3 slot.container 5 spider_eye 6
replaceitem block ~-4 ~-5 ~3 slot.container 9 golden_carrot 9
replaceitem block ~-4 ~-5 ~3 slot.container 10 iron_sword 1
replaceitem block ~-4 ~-5 ~3 slot.container 11 shears 1
replaceitem block ~-4 ~-5 ~3 slot.container 12 torch 17
replaceitem block ~-4 ~-5 ~3 slot.container 13 honeycomb 8
replaceitem block ~-4 ~-5 ~3 slot.container 14 honey_bottle 6
loot insert ~-4 ~-5 ~3 loot "rsf/birch_forest"
loot insert ~-4 ~-5 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~4 ~5 mossy_cobblestone []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~4 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 cobblestone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~4 ~-5 ~6 ~4 ~5 birch_slab []
fill ~-1 ~3 ~-1 ~2 ~4 ~2 air []
fill ~-6 ~3 ~-1 ~-6 ~4 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 birch_planks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 campfire []
setblock ~2 ~4 ~-8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 cobblestone []
fill ~8 ~1 ~-2 ~8 ~5 ~-2 birch_log []
fill ~8 ~1 ~2 ~8 ~5 ~2 birch_log []
fill ~7 ~6 ~-2 ~8 ~6 ~2 birch_slab []
setblock ~7 ~1 ~0 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-5 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 feather 14
replaceitem block ~-5 ~1 ~3 slot.container 1 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 10
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 9
replaceitem block ~-5 ~1 ~3 slot.container 4 string 10
replaceitem block ~-5 ~1 ~3 slot.container 5 gunpowder 9
replaceitem block ~-5 ~1 ~3 slot.container 9 honeycomb 10
replaceitem block ~-5 ~1 ~3 slot.container 10 honey_bottle 8
replaceitem block ~-5 ~1 ~3 slot.container 11 birch_log 22
replaceitem block ~-5 ~1 ~3 slot.container 12 cooked_chicken 8
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_ingot 6
replaceitem block ~-5 ~1 ~3 slot.container 14 coal 12
loot insert ~-5 ~1 ~3 loot "rsf/birch_forest"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
