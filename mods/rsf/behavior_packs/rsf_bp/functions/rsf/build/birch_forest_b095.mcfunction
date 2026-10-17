# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0351/4224 | 主题内编号: b095/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·双子灯笼守卫神龛 (birch_forest_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x9 | 地上高度 6格 | 地下深度 2格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air [] replace log2
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 birch_planks [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 birch_planks [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 birch_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 cobblestone []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~7 ~3 birch_planks []
fill ~2 ~1 ~-3 ~6 ~7 ~3 birch_planks []
fill ~-5 ~1 ~-2 ~-3 ~6 ~2 air []
fill ~3 ~1 ~-2 ~5 ~6 ~2 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 stone_bricks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 birch_slab []
fill ~-5 ~7 ~-2 ~5 ~8 ~2 stone_bricks []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 stone_brick_slab []
setblock ~0 ~10 ~0 chiseled_stone_bricks []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-5 ~-8 ~3 ~-5 birch_log []
setblock ~-8 ~4 ~-5 lantern []
fill ~-8 ~0 ~5 ~-8 ~3 ~5 birch_log []
setblock ~-8 ~4 ~5 lantern []
fill ~8 ~0 ~-5 ~8 ~3 ~-5 birch_log []
setblock ~8 ~4 ~-5 lantern []
fill ~8 ~0 ~5 ~8 ~3 ~5 birch_log []
setblock ~8 ~4 ~5 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 mossy_stone_bricks []
fill ~8 ~1 ~-2 ~8 ~6 ~-2 birch_log []
fill ~8 ~1 ~2 ~8 ~6 ~2 birch_log []
fill ~7 ~7 ~-2 ~8 ~7 ~2 birch_slab []
setblock ~7 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 phantom_membrane 9
replaceitem block ~5 ~1 ~1 slot.container 1 rotten_flesh 10
replaceitem block ~5 ~1 ~1 slot.container 2 bone 9
replaceitem block ~5 ~1 ~1 slot.container 3 string 10
replaceitem block ~5 ~1 ~1 slot.container 4 gunpowder 9
replaceitem block ~5 ~1 ~1 slot.container 5 arrow 20
replaceitem block ~5 ~1 ~1 slot.container 9 cooked_chicken 9
replaceitem block ~5 ~1 ~1 slot.container 10 iron_ingot 7
replaceitem block ~5 ~1 ~1 slot.container 11 coal 13
replaceitem block ~5 ~1 ~1 slot.container 12 golden_carrot 8
replaceitem block ~5 ~1 ~1 slot.container 13 iron_sword 1
replaceitem block ~5 ~1 ~1 slot.container 14 shears 1
loot insert ~5 ~1 ~1 loot "rsf/birch_forest"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~2 slot.container 1 string 13
replaceitem block ~-5 ~1 ~2 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~2 slot.container 3 arrow 23
replaceitem block ~-5 ~1 ~2 slot.container 4 spider_eye 4
replaceitem block ~-5 ~1 ~2 slot.container 5 feather 9
replaceitem block ~-5 ~1 ~2 slot.container 9 cooked_chicken 14
replaceitem block ~-5 ~1 ~2 slot.container 10 iron_ingot 5
replaceitem block ~-5 ~1 ~2 slot.container 11 coal 11
replaceitem block ~-5 ~1 ~2 slot.container 12 golden_carrot 6
replaceitem block ~-5 ~1 ~2 slot.container 13 iron_sword 1
replaceitem block ~-5 ~1 ~2 slot.container 14 shears 1
loot insert ~-5 ~1 ~2 loot "rsf/birch_forest"
loot insert ~-5 ~1 ~2 loot "chests/village/village_taiga_house"
summon pillager ~0 ~1 ~-1
summon bee ~-1 ~1 ~1
