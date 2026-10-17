# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0297/4224 | 主题内编号: b041/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·八角看台古罗马斗技场 (birch_forest_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x15 | 地上高度 5格 | 地下深度 3格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace log2
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 calcite [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 calcite [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 calcite []
fill ~-6 ~-4 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 bookshelf []
setblock ~-5 ~-4 ~-4 lantern []
setblock ~5 ~-4 ~4 lantern []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 bone 14
replaceitem block ~0 ~-2 ~4 slot.container 1 string 15
replaceitem block ~0 ~-2 ~4 slot.container 2 gunpowder 6
replaceitem block ~0 ~-2 ~4 slot.container 3 arrow 17
replaceitem block ~0 ~-2 ~4 slot.container 4 spider_eye 6
replaceitem block ~0 ~-2 ~4 slot.container 5 feather 11
replaceitem block ~0 ~-2 ~4 slot.container 9 cooked_chicken 8
replaceitem block ~0 ~-2 ~4 slot.container 10 iron_ingot 6
replaceitem block ~0 ~-2 ~4 slot.container 11 coal 12
replaceitem block ~0 ~-2 ~4 slot.container 12 golden_carrot 7
replaceitem block ~0 ~-2 ~4 slot.container 13 iron_sword 1
replaceitem block ~0 ~-2 ~4 slot.container 14 shears 1
loot insert ~0 ~-2 ~4 loot "rsf/birch_forest"
loot insert ~0 ~-2 ~4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-7 ~1 ~-6 ~7 ~5 ~6 calcite []
fill ~-6 ~1 ~-5 ~6 ~4 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~6 ~-6 air []
fill ~7 ~1 ~-6 ~7 ~6 ~-6 air []
fill ~-7 ~1 ~6 ~-7 ~6 ~6 air []
fill ~7 ~1 ~6 ~7 ~6 ~6 air []
fill ~-6 ~1 ~-5 ~-6 ~5 ~-5 birch_log []
fill ~6 ~1 ~-5 ~6 ~5 ~-5 birch_log []
fill ~-6 ~1 ~5 ~-6 ~5 ~5 birch_log []
fill ~6 ~1 ~5 ~6 ~5 ~5 birch_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~5 ~-6 ~-7 ~7 ~-6 birch_log []
setblock ~-7 ~8 ~-6 lantern []
fill ~-7 ~5 ~6 ~-7 ~7 ~6 birch_log []
setblock ~-7 ~8 ~6 lantern []
fill ~7 ~5 ~-6 ~7 ~7 ~-6 birch_log []
setblock ~7 ~8 ~-6 lantern []
fill ~7 ~5 ~6 ~7 ~7 ~6 birch_log []
setblock ~7 ~8 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~3 ~-8 birch_log []
setblock ~-9 ~4 ~-8 lantern []
fill ~-9 ~0 ~8 ~-9 ~3 ~8 birch_log []
setblock ~-9 ~4 ~8 lantern []
fill ~9 ~0 ~-8 ~9 ~3 ~-8 birch_log []
setblock ~9 ~4 ~-8 lantern []
fill ~9 ~0 ~8 ~9 ~3 ~8 birch_log []
setblock ~9 ~4 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 8x9x6) ---
fill ~8 ~0 ~-2 ~9 ~0 ~2 stone_bricks []
fill ~9 ~1 ~-2 ~9 ~7 ~-2 birch_log []
fill ~9 ~1 ~2 ~9 ~7 ~2 birch_log []
fill ~8 ~8 ~-2 ~9 ~8 ~2 stone_brick_slab []
setblock ~8 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 bone 9
replaceitem block ~6 ~1 ~4 slot.container 1 string 10
replaceitem block ~6 ~1 ~4 slot.container 2 gunpowder 9
replaceitem block ~6 ~1 ~4 slot.container 3 arrow 20
replaceitem block ~6 ~1 ~4 slot.container 4 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 5 feather 14
replaceitem block ~6 ~1 ~4 slot.container 9 honey_bottle 6
replaceitem block ~6 ~1 ~4 slot.container 10 birch_log 20
replaceitem block ~6 ~1 ~4 slot.container 11 cooked_chicken 13
replaceitem block ~6 ~1 ~4 slot.container 12 iron_ingot 11
replaceitem block ~6 ~1 ~4 slot.container 13 coal 10
replaceitem block ~6 ~1 ~4 slot.container 14 golden_carrot 5
loot insert ~6 ~1 ~4 loot "rsf/birch_forest"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 gunpowder 12
replaceitem block ~-6 ~1 ~5 slot.container 1 arrow 23
replaceitem block ~-6 ~1 ~5 slot.container 2 spider_eye 4
replaceitem block ~-6 ~1 ~5 slot.container 3 feather 9
replaceitem block ~-6 ~1 ~5 slot.container 4 phantom_membrane 4
replaceitem block ~-6 ~1 ~5 slot.container 5 rotten_flesh 13
replaceitem block ~-6 ~1 ~5 slot.container 9 honey_bottle 4
replaceitem block ~-6 ~1 ~5 slot.container 10 birch_log 18
replaceitem block ~-6 ~1 ~5 slot.container 11 cooked_chicken 11
replaceitem block ~-6 ~1 ~5 slot.container 12 iron_ingot 9
replaceitem block ~-6 ~1 ~5 slot.container 13 coal 15
replaceitem block ~-6 ~1 ~5 slot.container 14 golden_carrot 10
loot insert ~-6 ~1 ~5 loot "rsf/birch_forest"
loot insert ~-6 ~1 ~5 loot "chests/village/village_taiga_house"
summon pillager ~0 ~1 ~-1
summon bee ~-1 ~1 ~1
