# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0296/4224 | 主题内编号: b040/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·崩裂远古符文石碑 (birch_forest_obelisk_fractured_relic)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 calcite []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 arrow 17
replaceitem block ~3 ~-3 ~2 slot.container 1 spider_eye 6
replaceitem block ~3 ~-3 ~2 slot.container 2 feather 11
replaceitem block ~3 ~-3 ~2 slot.container 3 phantom_membrane 6
replaceitem block ~3 ~-3 ~2 slot.container 4 rotten_flesh 15
replaceitem block ~3 ~-3 ~2 slot.container 5 bone 14
replaceitem block ~3 ~-3 ~2 slot.container 9 birch_log 21
replaceitem block ~3 ~-3 ~2 slot.container 10 cooked_chicken 14
replaceitem block ~3 ~-3 ~2 slot.container 11 iron_ingot 5
replaceitem block ~3 ~-3 ~2 slot.container 12 coal 11
replaceitem block ~3 ~-3 ~2 slot.container 13 golden_carrot 6
replaceitem block ~3 ~-3 ~2 slot.container 14 iron_sword 1
loot insert ~3 ~-3 ~2 loot "rsf/birch_forest"
loot insert ~3 ~-3 ~2 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 stone_bricks []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 birch_planks []
fill ~-3 ~5 ~-2 ~3 ~7 ~2 calcite []
fill ~-3 ~1 ~-2 ~3 ~6 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 stone_brick_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-5 ~6 ~-1 ~-5 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~6 ~-2 stripped_birch_log []
fill ~-6 ~0 ~2 ~-6 ~6 ~2 stripped_birch_log []
fill ~6 ~0 ~-2 ~6 ~6 ~-2 stripped_birch_log []
fill ~6 ~0 ~2 ~6 ~6 ~2 stripped_birch_log []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 6x6x5) ---
fill ~6 ~0 ~-2 ~7 ~0 ~2 stone_bricks []
fill ~7 ~1 ~-2 ~7 ~6 ~-2 stripped_birch_log []
fill ~7 ~1 ~2 ~7 ~6 ~2 stripped_birch_log []
fill ~6 ~7 ~-2 ~7 ~7 ~2 stone_brick_slab []
setblock ~6 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 rotten_flesh 10
replaceitem block ~-4 ~1 ~2 slot.container 1 bone 9
replaceitem block ~-4 ~1 ~2 slot.container 2 string 10
replaceitem block ~-4 ~1 ~2 slot.container 3 gunpowder 9
replaceitem block ~-4 ~1 ~2 slot.container 4 arrow 20
replaceitem block ~-4 ~1 ~2 slot.container 5 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 9 shears 1
replaceitem block ~-4 ~1 ~2 slot.container 10 torch 19
replaceitem block ~-4 ~1 ~2 slot.container 11 honeycomb 10
replaceitem block ~-4 ~1 ~2 slot.container 12 honey_bottle 8
replaceitem block ~-4 ~1 ~2 slot.container 13 birch_log 22
replaceitem block ~-4 ~1 ~2 slot.container 14 cooked_chicken 8
loot insert ~-4 ~1 ~2 loot "rsf/birch_forest"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon bee ~1 ~1 ~1
summon witch ~0 ~-3 ~0
