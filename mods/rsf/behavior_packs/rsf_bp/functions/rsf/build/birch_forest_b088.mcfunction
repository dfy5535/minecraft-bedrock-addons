# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0344/4224 | 主题内编号: b088/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·矿车铁轨转运仓库 (birch_forest_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 calcite []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 arrow 17
replaceitem block ~3 ~-3 ~4 slot.container 1 spider_eye 6
replaceitem block ~3 ~-3 ~4 slot.container 2 feather 11
replaceitem block ~3 ~-3 ~4 slot.container 3 phantom_membrane 6
replaceitem block ~3 ~-3 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~3 ~-3 ~4 slot.container 5 bone 14
replaceitem block ~3 ~-3 ~4 slot.container 9 golden_carrot 8
replaceitem block ~3 ~-3 ~4 slot.container 10 iron_sword 1
replaceitem block ~3 ~-3 ~4 slot.container 11 shears 1
replaceitem block ~3 ~-3 ~4 slot.container 12 torch 16
replaceitem block ~3 ~-3 ~4 slot.container 13 honeycomb 7
replaceitem block ~3 ~-3 ~4 slot.container 14 honey_bottle 5
loot insert ~3 ~-3 ~4 loot "rsf/birch_forest"
loot insert ~3 ~-3 ~4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-6 ~5 ~5 ~6 stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~4 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~5 ~-6 stripped_birch_log []
fill ~-5 ~1 ~6 ~-5 ~5 ~6 stripped_birch_log []
fill ~5 ~1 ~-6 ~5 ~5 ~-6 stripped_birch_log []
fill ~5 ~1 ~6 ~5 ~5 ~6 stripped_birch_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~6 ~-7 ~-6 ~6 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~6 ~-7 ~6 ~6 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-6 ~-5 ~7 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-6 ~5 ~7 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-6 ~4 ~7 ~6 stone_brick_slab []
fill ~0 ~8 ~-7 ~0 ~8 ~7 birch_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 birch_planks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 torch []
setblock ~2 ~4 ~-9 torch []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 6x8x3) ---
fill ~6 ~0 ~-2 ~7 ~0 ~2 stone_bricks []
fill ~7 ~1 ~-2 ~7 ~4 ~-2 stripped_birch_log []
fill ~7 ~1 ~2 ~7 ~4 ~2 stripped_birch_log []
fill ~6 ~5 ~-2 ~7 ~5 ~2 stone_brick_slab []
setblock ~6 ~1 ~0 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~3 smithing_table []
setblock ~-4 ~1 ~3 anvil []
setblock ~4 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 rotten_flesh 10
replaceitem block ~-4 ~1 ~4 slot.container 1 bone 9
replaceitem block ~-4 ~1 ~4 slot.container 2 string 10
replaceitem block ~-4 ~1 ~4 slot.container 3 gunpowder 9
replaceitem block ~-4 ~1 ~4 slot.container 4 arrow 20
replaceitem block ~-4 ~1 ~4 slot.container 5 spider_eye 9
replaceitem block ~-4 ~1 ~4 slot.container 9 birch_log 17
replaceitem block ~-4 ~1 ~4 slot.container 10 cooked_chicken 10
replaceitem block ~-4 ~1 ~4 slot.container 11 iron_ingot 8
replaceitem block ~-4 ~1 ~4 slot.container 12 coal 14
replaceitem block ~-4 ~1 ~4 slot.container 13 golden_carrot 9
replaceitem block ~-4 ~1 ~4 slot.container 14 iron_sword 1
loot insert ~-4 ~1 ~4 loot "rsf/birch_forest"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon bee ~1 ~1 ~1
summon witch ~0 ~-3 ~0
