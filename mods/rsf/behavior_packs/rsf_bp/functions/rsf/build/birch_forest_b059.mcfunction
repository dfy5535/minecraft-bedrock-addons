# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0315/4224 | 主题内编号: b059/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·阶梯金字塔法老墓室 (birch_forest_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 birch_planks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 birch_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 birch_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 stone_bricks []
setblock ~0 ~-6 ~0 honeycomb_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 spider_eye 6
replaceitem block ~0 ~-3 ~-4 slot.container 1 feather 11
replaceitem block ~0 ~-3 ~-4 slot.container 2 phantom_membrane 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 rotten_flesh 15
replaceitem block ~0 ~-3 ~-4 slot.container 4 bone 14
replaceitem block ~0 ~-3 ~-4 slot.container 5 string 15
replaceitem block ~0 ~-3 ~-4 slot.container 9 honey_bottle 6
replaceitem block ~0 ~-3 ~-4 slot.container 10 birch_log 20
replaceitem block ~0 ~-3 ~-4 slot.container 11 cooked_chicken 13
replaceitem block ~0 ~-3 ~-4 slot.container 12 iron_ingot 11
replaceitem block ~0 ~-3 ~-4 slot.container 13 coal 10
replaceitem block ~0 ~-3 ~-4 slot.container 14 golden_carrot 5
loot insert ~0 ~-3 ~-4 loot "rsf/birch_forest"
loot insert ~0 ~-3 ~-4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 birch_planks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 stone_bricks []
fill ~-5 ~5 ~-4 ~5 ~6 ~4 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 birch_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 stone_bricks []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 stone_bricks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 chiseled_stone_bricks []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~3 ~-8 birch_log []
setblock ~-9 ~4 ~-8 lantern []
fill ~-9 ~0 ~8 ~-9 ~3 ~8 birch_log []
setblock ~-9 ~4 ~8 lantern []
fill ~9 ~0 ~-8 ~9 ~3 ~-8 birch_log []
setblock ~9 ~4 ~-8 lantern []
fill ~9 ~0 ~8 ~9 ~3 ~8 birch_log []
setblock ~9 ~4 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 8x9x4) ---
fill ~8 ~0 ~-2 ~9 ~0 ~2 mossy_stone_bricks []
fill ~9 ~1 ~-2 ~9 ~5 ~-2 birch_log []
fill ~9 ~1 ~2 ~9 ~5 ~2 birch_log []
fill ~8 ~6 ~-2 ~9 ~6 ~2 birch_slab []
setblock ~8 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 gunpowder 9
replaceitem block ~6 ~1 ~4 slot.container 1 arrow 20
replaceitem block ~6 ~1 ~4 slot.container 2 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 3 feather 14
replaceitem block ~6 ~1 ~4 slot.container 4 phantom_membrane 9
replaceitem block ~6 ~1 ~4 slot.container 5 rotten_flesh 10
replaceitem block ~6 ~1 ~4 slot.container 9 coal 10
replaceitem block ~6 ~1 ~4 slot.container 10 golden_carrot 5
replaceitem block ~6 ~1 ~4 slot.container 11 iron_sword 1
replaceitem block ~6 ~1 ~4 slot.container 12 shears 1
replaceitem block ~6 ~1 ~4 slot.container 13 torch 20
replaceitem block ~6 ~1 ~4 slot.container 14 honeycomb 11
loot insert ~6 ~1 ~4 loot "rsf/birch_forest"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 spider_eye 4
replaceitem block ~-6 ~1 ~5 slot.container 1 feather 9
replaceitem block ~-6 ~1 ~5 slot.container 2 phantom_membrane 4
replaceitem block ~-6 ~1 ~5 slot.container 3 rotten_flesh 13
replaceitem block ~-6 ~1 ~5 slot.container 4 bone 12
replaceitem block ~-6 ~1 ~5 slot.container 5 string 13
replaceitem block ~-6 ~1 ~5 slot.container 9 coal 15
replaceitem block ~-6 ~1 ~5 slot.container 10 golden_carrot 10
replaceitem block ~-6 ~1 ~5 slot.container 11 iron_sword 1
replaceitem block ~-6 ~1 ~5 slot.container 12 shears 1
replaceitem block ~-6 ~1 ~5 slot.container 13 torch 18
replaceitem block ~-6 ~1 ~5 slot.container 14 honeycomb 9
loot insert ~-6 ~1 ~5 loot "rsf/birch_forest"
loot insert ~-6 ~1 ~5 loot "chests/village/village_taiga_house"
summon pillager ~0 ~1 ~-1
summon bee ~-1 ~1 ~1
