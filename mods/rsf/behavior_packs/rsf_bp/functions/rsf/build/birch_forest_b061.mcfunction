# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0317/4224 | 主题内编号: b061/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·双子封土古墓地宫 (birch_forest_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace log2
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 calcite [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 calcite [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 stone_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 stone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 mossy_cobblestone []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 birch_planks []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 phantom_membrane 6
replaceitem block ~0 ~-3 ~-2 slot.container 1 rotten_flesh 15
replaceitem block ~0 ~-3 ~-2 slot.container 2 bone 14
replaceitem block ~0 ~-3 ~-2 slot.container 3 string 15
replaceitem block ~0 ~-3 ~-2 slot.container 4 gunpowder 6
replaceitem block ~0 ~-3 ~-2 slot.container 5 arrow 17
replaceitem block ~0 ~-3 ~-2 slot.container 9 iron_sword 1
replaceitem block ~0 ~-3 ~-2 slot.container 10 shears 1
replaceitem block ~0 ~-3 ~-2 slot.container 11 torch 16
replaceitem block ~0 ~-3 ~-2 slot.container 12 honeycomb 7
replaceitem block ~0 ~-3 ~-2 slot.container 13 honey_bottle 5
replaceitem block ~0 ~-3 ~-2 slot.container 14 birch_log 19
loot insert ~0 ~-3 ~-2 loot "rsf/birch_forest"
loot insert ~0 ~-3 ~-2 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~6 ~4 calcite []
fill ~2 ~1 ~-4 ~7 ~6 ~4 calcite []
fill ~-6 ~1 ~-3 ~-3 ~5 ~3 air []
fill ~3 ~1 ~-3 ~6 ~5 ~3 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 birch_planks []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 birch_planks []
fill ~-6 ~7 ~-3 ~6 ~7 ~3 mossy_cobblestone []
fill ~-1 ~8 ~-1 ~1 ~8 ~1 bookshelf []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 birch_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 8x6x6) ---
fill ~8 ~0 ~-2 ~9 ~0 ~2 stone_bricks []
fill ~9 ~1 ~-2 ~9 ~7 ~-2 birch_log []
fill ~9 ~1 ~2 ~9 ~7 ~2 birch_log []
fill ~8 ~8 ~-2 ~9 ~8 ~2 stone_brick_slab []
setblock ~8 ~1 ~0 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 spider_eye 9
replaceitem block ~6 ~1 ~2 slot.container 1 feather 14
replaceitem block ~6 ~1 ~2 slot.container 2 phantom_membrane 9
replaceitem block ~6 ~1 ~2 slot.container 3 rotten_flesh 10
replaceitem block ~6 ~1 ~2 slot.container 4 bone 9
replaceitem block ~6 ~1 ~2 slot.container 5 string 10
replaceitem block ~6 ~1 ~2 slot.container 9 honey_bottle 5
replaceitem block ~6 ~1 ~2 slot.container 10 birch_log 19
replaceitem block ~6 ~1 ~2 slot.container 11 cooked_chicken 12
replaceitem block ~6 ~1 ~2 slot.container 12 iron_ingot 10
replaceitem block ~6 ~1 ~2 slot.container 13 coal 16
replaceitem block ~6 ~1 ~2 slot.container 14 golden_carrot 4
loot insert ~6 ~1 ~2 loot "rsf/birch_forest"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 phantom_membrane 4
replaceitem block ~-6 ~1 ~3 slot.container 1 rotten_flesh 13
replaceitem block ~-6 ~1 ~3 slot.container 2 bone 12
replaceitem block ~-6 ~1 ~3 slot.container 3 string 13
replaceitem block ~-6 ~1 ~3 slot.container 4 gunpowder 12
replaceitem block ~-6 ~1 ~3 slot.container 5 arrow 23
replaceitem block ~-6 ~1 ~3 slot.container 9 honey_bottle 3
replaceitem block ~-6 ~1 ~3 slot.container 10 birch_log 17
replaceitem block ~-6 ~1 ~3 slot.container 11 cooked_chicken 10
replaceitem block ~-6 ~1 ~3 slot.container 12 iron_ingot 8
replaceitem block ~-6 ~1 ~3 slot.container 13 coal 14
replaceitem block ~-6 ~1 ~3 slot.container 14 golden_carrot 9
loot insert ~-6 ~1 ~3 loot "rsf/birch_forest"
loot insert ~-6 ~1 ~3 loot "chests/village/village_taiga_house"
summon witch ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0
