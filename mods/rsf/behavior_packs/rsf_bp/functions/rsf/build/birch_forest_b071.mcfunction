# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0327/4224 | 主题内编号: b071/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·残破双子哨所遗迹 (birch_forest_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 2格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace log2
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 birch_planks [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 birch_planks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 birch_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 cobblestone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-4 ~6 ~-1 ~4 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~7 ~4 birch_planks []
fill ~2 ~1 ~-4 ~6 ~7 ~4 birch_planks []
fill ~-5 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 stone_bricks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-4 ~6 ~6 ~4 birch_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 mossy_stone_bricks []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 mossy_stone_bricks []
fill ~8 ~1 ~-2 ~8 ~7 ~-2 birch_log []
fill ~8 ~1 ~2 ~8 ~7 ~2 birch_log []
fill ~7 ~8 ~-2 ~8 ~8 ~2 birch_slab []
setblock ~7 ~1 ~0 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 phantom_membrane 9
replaceitem block ~5 ~1 ~2 slot.container 1 rotten_flesh 10
replaceitem block ~5 ~1 ~2 slot.container 2 bone 9
replaceitem block ~5 ~1 ~2 slot.container 3 string 10
replaceitem block ~5 ~1 ~2 slot.container 4 gunpowder 9
replaceitem block ~5 ~1 ~2 slot.container 5 arrow 20
replaceitem block ~5 ~1 ~2 slot.container 9 honey_bottle 8
replaceitem block ~5 ~1 ~2 slot.container 10 birch_log 22
replaceitem block ~5 ~1 ~2 slot.container 11 cooked_chicken 8
replaceitem block ~5 ~1 ~2 slot.container 12 iron_ingot 6
replaceitem block ~5 ~1 ~2 slot.container 13 coal 12
replaceitem block ~5 ~1 ~2 slot.container 14 golden_carrot 7
loot insert ~5 ~1 ~2 loot "rsf/birch_forest"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 1 string 13
replaceitem block ~-5 ~1 ~3 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 3 arrow 23
replaceitem block ~-5 ~1 ~3 slot.container 4 spider_eye 4
replaceitem block ~-5 ~1 ~3 slot.container 5 feather 9
replaceitem block ~-5 ~1 ~3 slot.container 9 honey_bottle 6
replaceitem block ~-5 ~1 ~3 slot.container 10 birch_log 20
replaceitem block ~-5 ~1 ~3 slot.container 11 cooked_chicken 13
replaceitem block ~-5 ~1 ~3 slot.container 12 iron_ingot 11
replaceitem block ~-5 ~1 ~3 slot.container 13 coal 10
replaceitem block ~-5 ~1 ~3 slot.container 14 golden_carrot 5
loot insert ~-5 ~1 ~3 loot "rsf/birch_forest"
loot insert ~-5 ~1 ~3 loot "chests/village/village_taiga_house"
summon pillager ~0 ~1 ~-1
summon bee ~-1 ~1 ~1
