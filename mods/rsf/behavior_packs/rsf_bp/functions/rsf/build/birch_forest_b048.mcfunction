# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0304/4224 | 主题内编号: b048/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·阶梯王座巅峰试炼台 (birch_forest_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mossy_stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 calcite []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 birch_planks []
setblock ~0 ~-6 ~0 bookshelf []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 string 15
replaceitem block ~0 ~-3 ~-4 slot.container 1 gunpowder 6
replaceitem block ~0 ~-3 ~-4 slot.container 2 arrow 17
replaceitem block ~0 ~-3 ~-4 slot.container 3 spider_eye 6
replaceitem block ~0 ~-3 ~-4 slot.container 4 feather 11
replaceitem block ~0 ~-3 ~-4 slot.container 5 phantom_membrane 6
replaceitem block ~0 ~-3 ~-4 slot.container 9 shears 1
replaceitem block ~0 ~-3 ~-4 slot.container 10 torch 16
replaceitem block ~0 ~-3 ~-4 slot.container 11 honeycomb 7
replaceitem block ~0 ~-3 ~-4 slot.container 12 honey_bottle 5
replaceitem block ~0 ~-3 ~-4 slot.container 13 birch_log 19
replaceitem block ~0 ~-3 ~-4 slot.container 14 cooked_chicken 12
loot insert ~0 ~-3 ~-4 loot "rsf/birch_forest"
loot insert ~0 ~-3 ~-4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 stone_bricks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 birch_planks []
fill ~-5 ~5 ~-4 ~5 ~6 ~4 calcite []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~6 ~-6 ~-7 ~8 ~-6 stripped_birch_log []
setblock ~-7 ~9 ~-6 torch []
fill ~-7 ~6 ~6 ~-7 ~8 ~6 stripped_birch_log []
setblock ~-7 ~9 ~6 torch []
fill ~7 ~6 ~-6 ~7 ~8 ~-6 stripped_birch_log []
setblock ~7 ~9 ~-6 torch []
fill ~7 ~6 ~6 ~7 ~8 ~6 stripped_birch_log []
setblock ~7 ~9 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 stripped_birch_log []
setblock ~0 ~4 ~-8 bookshelf []
setblock ~0 ~5 ~-8 torch []
fill ~0 ~0 ~8 ~0 ~3 ~8 stripped_birch_log []
setblock ~0 ~4 ~8 bookshelf []
setblock ~0 ~5 ~8 torch []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 stripped_birch_log []
setblock ~-9 ~4 ~0 bookshelf []
setblock ~-9 ~5 ~0 torch []
fill ~9 ~0 ~0 ~9 ~3 ~0 stripped_birch_log []
setblock ~9 ~4 ~0 bookshelf []
setblock ~9 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~8 ~0 ~-2 ~9 ~0 ~2 stone_bricks []
fill ~9 ~1 ~-2 ~9 ~4 ~-2 stripped_birch_log []
fill ~9 ~1 ~2 ~9 ~4 ~2 stripped_birch_log []
fill ~8 ~5 ~-2 ~9 ~5 ~2 stone_brick_slab []
setblock ~8 ~1 ~0 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 rotten_flesh 10
replaceitem block ~-6 ~1 ~4 slot.container 1 bone 9
replaceitem block ~-6 ~1 ~4 slot.container 2 string 10
replaceitem block ~-6 ~1 ~4 slot.container 3 gunpowder 9
replaceitem block ~-6 ~1 ~4 slot.container 4 arrow 20
replaceitem block ~-6 ~1 ~4 slot.container 5 spider_eye 9
replaceitem block ~-6 ~1 ~4 slot.container 9 birch_log 19
replaceitem block ~-6 ~1 ~4 slot.container 10 cooked_chicken 12
replaceitem block ~-6 ~1 ~4 slot.container 11 iron_ingot 10
replaceitem block ~-6 ~1 ~4 slot.container 12 coal 16
replaceitem block ~-6 ~1 ~4 slot.container 13 golden_carrot 4
replaceitem block ~-6 ~1 ~4 slot.container 14 iron_sword 1
loot insert ~-6 ~1 ~4 loot "rsf/birch_forest"
summon bee ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
