# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0379/4224 | 主题内编号: b123/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·四角塔楼领主城堡复合体 (birch_forest_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 birch_planks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 birch_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 birch_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 birch_planks []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~4 lantern []
setblock ~5 ~-5 ~-4 lantern []
setblock ~5 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~4 slot.container 0 spider_eye 6
replaceitem block ~5 ~-3 ~4 slot.container 1 feather 11
replaceitem block ~5 ~-3 ~4 slot.container 2 phantom_membrane 6
replaceitem block ~5 ~-3 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~5 ~-3 ~4 slot.container 4 bone 14
replaceitem block ~5 ~-3 ~4 slot.container 5 string 15
replaceitem block ~5 ~-3 ~4 slot.container 9 torch 19
replaceitem block ~5 ~-3 ~4 slot.container 10 honeycomb 10
replaceitem block ~5 ~-3 ~4 slot.container 11 honey_bottle 8
replaceitem block ~5 ~-3 ~4 slot.container 12 birch_log 22
replaceitem block ~5 ~-3 ~4 slot.container 13 cooked_chicken 8
replaceitem block ~5 ~-3 ~4 slot.container 14 iron_ingot 6
loot insert ~5 ~-3 ~4 loot "rsf/birch_forest"
loot insert ~5 ~-3 ~4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 birch_planks []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~9 ~-5 stone_bricks []
setblock ~-7 ~10 ~-6 lantern []
fill ~-7 ~1 ~5 ~-6 ~9 ~6 stone_bricks []
setblock ~-7 ~10 ~5 lantern []
fill ~6 ~1 ~-6 ~7 ~9 ~-5 stone_bricks []
setblock ~6 ~10 ~-6 lantern []
fill ~6 ~1 ~5 ~7 ~9 ~6 stone_bricks []
setblock ~6 ~10 ~5 lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 stone_bricks []
fill ~-7 ~8 ~-6 ~7 ~8 ~6 birch_fence []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 air []
setblock ~-7 ~8 ~-6 birch_log []
setblock ~-7 ~9 ~-6 lantern []
setblock ~-7 ~8 ~6 birch_log []
setblock ~-7 ~9 ~6 lantern []
setblock ~7 ~8 ~-6 birch_log []
setblock ~7 ~9 ~-6 lantern []
setblock ~7 ~8 ~6 birch_log []
setblock ~7 ~9 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 birch_fence []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~8 ~0 ~-2 ~9 ~0 ~2 mossy_stone_bricks []
fill ~9 ~1 ~-2 ~9 ~4 ~-2 birch_log []
fill ~9 ~1 ~2 ~9 ~4 ~2 birch_log []
fill ~8 ~5 ~-2 ~9 ~5 ~2 birch_slab []
setblock ~8 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 gunpowder 9
replaceitem block ~6 ~1 ~4 slot.container 1 arrow 20
replaceitem block ~6 ~1 ~4 slot.container 2 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 3 feather 14
replaceitem block ~6 ~1 ~4 slot.container 4 phantom_membrane 9
replaceitem block ~6 ~1 ~4 slot.container 5 rotten_flesh 10
replaceitem block ~6 ~1 ~4 slot.container 9 iron_sword 1
replaceitem block ~6 ~1 ~4 slot.container 10 shears 1
replaceitem block ~6 ~1 ~4 slot.container 11 torch 19
replaceitem block ~6 ~1 ~4 slot.container 12 honeycomb 10
replaceitem block ~6 ~1 ~4 slot.container 13 honey_bottle 8
replaceitem block ~6 ~1 ~4 slot.container 14 birch_log 22
loot insert ~6 ~1 ~4 loot "rsf/birch_forest"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 spider_eye 4
replaceitem block ~-6 ~1 ~5 slot.container 1 feather 9
replaceitem block ~-6 ~1 ~5 slot.container 2 phantom_membrane 4
replaceitem block ~-6 ~1 ~5 slot.container 3 rotten_flesh 13
replaceitem block ~-6 ~1 ~5 slot.container 4 bone 12
replaceitem block ~-6 ~1 ~5 slot.container 5 string 13
replaceitem block ~-6 ~1 ~5 slot.container 9 iron_sword 1
replaceitem block ~-6 ~1 ~5 slot.container 10 shears 1
replaceitem block ~-6 ~1 ~5 slot.container 11 torch 17
replaceitem block ~-6 ~1 ~5 slot.container 12 honeycomb 8
replaceitem block ~-6 ~1 ~5 slot.container 13 honey_bottle 6
replaceitem block ~-6 ~1 ~5 slot.container 14 birch_log 20
loot insert ~-6 ~1 ~5 loot "rsf/birch_forest"
loot insert ~-6 ~1 ~5 loot "chests/village/village_taiga_house"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
