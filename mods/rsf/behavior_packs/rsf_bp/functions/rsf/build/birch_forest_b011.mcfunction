# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0267/4224 | 主题内编号: b011/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·深渊困兽角斗地牢 (birch_forest_dungeon_pit_gladiator)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 birch_planks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 birch_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 birch_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 birch_planks []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
setblock ~-4 ~-5 ~-3 lantern []
setblock ~4 ~-5 ~3 lantern []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 gunpowder 6
replaceitem block ~0 ~-3 ~3 slot.container 1 arrow 17
replaceitem block ~0 ~-3 ~3 slot.container 2 spider_eye 6
replaceitem block ~0 ~-3 ~3 slot.container 3 feather 11
replaceitem block ~0 ~-3 ~3 slot.container 4 phantom_membrane 6
replaceitem block ~0 ~-3 ~3 slot.container 5 rotten_flesh 15
replaceitem block ~0 ~-3 ~3 slot.container 9 cooked_chicken 13
replaceitem block ~0 ~-3 ~3 slot.container 10 iron_ingot 11
replaceitem block ~0 ~-3 ~3 slot.container 11 coal 10
replaceitem block ~0 ~-3 ~3 slot.container 12 golden_carrot 5
replaceitem block ~0 ~-3 ~3 slot.container 13 iron_sword 1
replaceitem block ~0 ~-3 ~3 slot.container 14 shears 1
loot insert ~0 ~-3 ~3 loot "rsf/birch_forest"
loot insert ~0 ~-3 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-5 ~6 ~5 ~5 birch_planks []
fill ~-5 ~1 ~-4 ~5 ~4 ~4 air []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 air []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 air []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 air []
fill ~6 ~1 ~5 ~6 ~6 ~5 air []
fill ~-5 ~1 ~-4 ~-5 ~5 ~-4 birch_log []
fill ~5 ~1 ~-4 ~5 ~5 ~-4 birch_log []
fill ~-5 ~1 ~4 ~-5 ~5 ~4 birch_log []
fill ~5 ~1 ~4 ~5 ~5 ~4 birch_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~5 ~-5 ~-6 ~7 ~-5 birch_log []
setblock ~-6 ~8 ~-5 lantern []
fill ~-6 ~5 ~5 ~-6 ~7 ~5 birch_log []
setblock ~-6 ~8 ~5 lantern []
fill ~6 ~5 ~-5 ~6 ~7 ~-5 birch_log []
setblock ~6 ~8 ~-5 lantern []
fill ~6 ~5 ~5 ~6 ~7 ~5 birch_log []
setblock ~6 ~8 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 birch_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 mossy_stone_bricks []
fill ~8 ~1 ~-2 ~8 ~7 ~-2 birch_log []
fill ~8 ~1 ~2 ~8 ~7 ~2 birch_log []
fill ~7 ~8 ~-2 ~8 ~8 ~2 birch_slab []
setblock ~7 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 gunpowder 9
replaceitem block ~5 ~1 ~3 slot.container 1 arrow 20
replaceitem block ~5 ~1 ~3 slot.container 2 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 3 feather 14
replaceitem block ~5 ~1 ~3 slot.container 4 phantom_membrane 9
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 10
replaceitem block ~5 ~1 ~3 slot.container 9 honey_bottle 4
replaceitem block ~5 ~1 ~3 slot.container 10 birch_log 18
replaceitem block ~5 ~1 ~3 slot.container 11 cooked_chicken 11
replaceitem block ~5 ~1 ~3 slot.container 12 iron_ingot 9
replaceitem block ~5 ~1 ~3 slot.container 13 coal 15
replaceitem block ~5 ~1 ~3 slot.container 14 golden_carrot 10
loot insert ~5 ~1 ~3 loot "rsf/birch_forest"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 spider_eye 4
replaceitem block ~-5 ~1 ~4 slot.container 1 feather 9
replaceitem block ~-5 ~1 ~4 slot.container 2 phantom_membrane 4
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 13
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 5 string 13
replaceitem block ~-5 ~1 ~4 slot.container 9 honey_bottle 9
replaceitem block ~-5 ~1 ~4 slot.container 10 birch_log 16
replaceitem block ~-5 ~1 ~4 slot.container 11 cooked_chicken 9
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_ingot 7
replaceitem block ~-5 ~1 ~4 slot.container 13 coal 13
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_carrot 8
loot insert ~-5 ~1 ~4 loot "rsf/birch_forest"
loot insert ~-5 ~1 ~4 loot "chests/village/village_taiga_house"
summon pillager ~0 ~1 ~-1
summon bee ~-1 ~1 ~1
