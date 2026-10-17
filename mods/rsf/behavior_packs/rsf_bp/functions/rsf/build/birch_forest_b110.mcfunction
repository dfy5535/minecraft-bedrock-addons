# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0366/4224 | 主题内编号: b110/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·双子附魔与酿造实验楼 (birch_forest_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log2
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 mossy_cobblestone [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 mossy_cobblestone [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 birch_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 stone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 birch_planks []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~2 slot.container 0 string 15
replaceitem block ~5 ~-3 ~2 slot.container 1 gunpowder 6
replaceitem block ~5 ~-3 ~2 slot.container 2 arrow 17
replaceitem block ~5 ~-3 ~2 slot.container 3 spider_eye 6
replaceitem block ~5 ~-3 ~2 slot.container 4 feather 11
replaceitem block ~5 ~-3 ~2 slot.container 5 phantom_membrane 6
replaceitem block ~5 ~-3 ~2 slot.container 9 birch_log 21
replaceitem block ~5 ~-3 ~2 slot.container 10 cooked_chicken 14
replaceitem block ~5 ~-3 ~2 slot.container 11 iron_ingot 5
replaceitem block ~5 ~-3 ~2 slot.container 12 coal 11
replaceitem block ~5 ~-3 ~2 slot.container 13 golden_carrot 6
replaceitem block ~5 ~-3 ~2 slot.container 14 iron_sword 1
loot insert ~5 ~-3 ~2 loot "rsf/birch_forest"
loot insert ~5 ~-3 ~2 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~7 ~4 mossy_cobblestone []
fill ~2 ~1 ~-4 ~7 ~7 ~4 mossy_cobblestone []
fill ~-6 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 birch_planks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~6 ~-5 ~8 ~6 ~5 birch_slab []
fill ~-6 ~7 ~-3 ~6 ~8 ~3 birch_planks []
fill ~-7 ~9 ~-4 ~7 ~9 ~4 birch_slab []
setblock ~0 ~10 ~0 gold_block []
setblock ~0 ~11 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 birch_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 campfire []
setblock ~2 ~4 ~-7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~8 ~0 ~-2 ~9 ~0 ~2 cobblestone []
fill ~9 ~1 ~-2 ~9 ~6 ~-2 birch_log []
fill ~9 ~1 ~2 ~9 ~6 ~2 birch_log []
fill ~8 ~7 ~-2 ~9 ~7 ~2 birch_slab []
setblock ~8 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 feather 14
replaceitem block ~-6 ~1 ~2 slot.container 1 phantom_membrane 9
replaceitem block ~-6 ~1 ~2 slot.container 2 rotten_flesh 10
replaceitem block ~-6 ~1 ~2 slot.container 3 bone 9
replaceitem block ~-6 ~1 ~2 slot.container 4 string 10
replaceitem block ~-6 ~1 ~2 slot.container 5 gunpowder 9
replaceitem block ~-6 ~1 ~2 slot.container 9 shears 1
replaceitem block ~-6 ~1 ~2 slot.container 10 torch 19
replaceitem block ~-6 ~1 ~2 slot.container 11 honeycomb 10
replaceitem block ~-6 ~1 ~2 slot.container 12 honey_bottle 8
replaceitem block ~-6 ~1 ~2 slot.container 13 birch_log 22
replaceitem block ~-6 ~1 ~2 slot.container 14 cooked_chicken 8
loot insert ~-6 ~1 ~2 loot "rsf/birch_forest"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
