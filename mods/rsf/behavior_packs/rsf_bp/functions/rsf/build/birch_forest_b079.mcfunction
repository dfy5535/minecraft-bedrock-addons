# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0335/4224 | 主题内编号: b079/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·四角结界守护柱阵 (birch_forest_totem_citadel_ward)
# 建筑构造: 主体[fortress_citadel] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 birch_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 birch_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 birch_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 gunpowder 6
replaceitem block ~4 ~-2 ~3 slot.container 1 arrow 17
replaceitem block ~4 ~-2 ~3 slot.container 2 spider_eye 6
replaceitem block ~4 ~-2 ~3 slot.container 3 feather 11
replaceitem block ~4 ~-2 ~3 slot.container 4 phantom_membrane 6
replaceitem block ~4 ~-2 ~3 slot.container 5 rotten_flesh 15
replaceitem block ~4 ~-2 ~3 slot.container 9 torch 18
replaceitem block ~4 ~-2 ~3 slot.container 10 honeycomb 9
replaceitem block ~4 ~-2 ~3 slot.container 11 honey_bottle 7
replaceitem block ~4 ~-2 ~3 slot.container 12 birch_log 21
replaceitem block ~4 ~-2 ~3 slot.container 13 cooked_chicken 14
replaceitem block ~4 ~-2 ~3 slot.container 14 iron_ingot 5
loot insert ~4 ~-2 ~3 loot "rsf/birch_forest"
loot insert ~4 ~-2 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 birch_planks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~8 ~-4 stone_bricks []
setblock ~-6 ~9 ~-5 lantern []
fill ~-6 ~1 ~4 ~-5 ~8 ~5 stone_bricks []
setblock ~-6 ~9 ~4 lantern []
fill ~5 ~1 ~-5 ~6 ~8 ~-4 stone_bricks []
setblock ~5 ~9 ~-5 lantern []
fill ~5 ~1 ~4 ~6 ~8 ~5 stone_bricks []
setblock ~5 ~9 ~4 lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-5 ~-6 ~8 ~-5 birch_log []
setblock ~-6 ~9 ~-5 lantern []
fill ~-6 ~6 ~5 ~-6 ~8 ~5 birch_log []
setblock ~-6 ~9 ~5 lantern []
fill ~6 ~6 ~-5 ~6 ~8 ~-5 birch_log []
setblock ~6 ~9 ~-5 lantern []
fill ~6 ~6 ~5 ~6 ~8 ~5 birch_log []
setblock ~6 ~9 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~3 ~-7 birch_log []
setblock ~-8 ~4 ~-7 lantern []
fill ~-8 ~0 ~7 ~-8 ~3 ~7 birch_log []
setblock ~-8 ~4 ~7 lantern []
fill ~8 ~0 ~-7 ~8 ~3 ~-7 birch_log []
setblock ~8 ~4 ~-7 lantern []
fill ~8 ~0 ~7 ~8 ~3 ~7 birch_log []
setblock ~8 ~4 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 mossy_stone_bricks []
fill ~8 ~1 ~-2 ~8 ~5 ~-2 birch_log []
fill ~8 ~1 ~2 ~8 ~5 ~2 birch_log []
fill ~7 ~6 ~-2 ~8 ~6 ~2 birch_slab []
setblock ~7 ~1 ~0 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 phantom_membrane 9
replaceitem block ~5 ~1 ~3 slot.container 1 rotten_flesh 10
replaceitem block ~5 ~1 ~3 slot.container 2 bone 9
replaceitem block ~5 ~1 ~3 slot.container 3 string 10
replaceitem block ~5 ~1 ~3 slot.container 4 gunpowder 9
replaceitem block ~5 ~1 ~3 slot.container 5 arrow 20
replaceitem block ~5 ~1 ~3 slot.container 9 coal 16
replaceitem block ~5 ~1 ~3 slot.container 10 golden_carrot 4
replaceitem block ~5 ~1 ~3 slot.container 11 iron_sword 1
replaceitem block ~5 ~1 ~3 slot.container 12 shears 1
replaceitem block ~5 ~1 ~3 slot.container 13 torch 19
replaceitem block ~5 ~1 ~3 slot.container 14 honeycomb 10
loot insert ~5 ~1 ~3 loot "rsf/birch_forest"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 1 string 13
replaceitem block ~-5 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 3 arrow 23
replaceitem block ~-5 ~1 ~4 slot.container 4 spider_eye 4
replaceitem block ~-5 ~1 ~4 slot.container 5 feather 9
replaceitem block ~-5 ~1 ~4 slot.container 9 coal 14
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_carrot 9
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_sword 1
replaceitem block ~-5 ~1 ~4 slot.container 12 shears 1
replaceitem block ~-5 ~1 ~4 slot.container 13 torch 17
replaceitem block ~-5 ~1 ~4 slot.container 14 honeycomb 8
loot insert ~-5 ~1 ~4 loot "rsf/birch_forest"
loot insert ~-5 ~1 ~4 loot "chests/village/village_taiga_house"
summon witch ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-2 ~0
