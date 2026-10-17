# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0377/4224 | 主题内编号: b121/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·卫城廊柱王座大殿与地宫 (birch_forest_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 calcite [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 calcite [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 calcite []
fill ~-6 ~-5 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-5 ~0 lantern []
setblock ~5 ~-5 ~0 lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 phantom_membrane 6
replaceitem block ~0 ~-3 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~0 ~-3 ~4 slot.container 2 bone 14
replaceitem block ~0 ~-3 ~4 slot.container 3 string 15
replaceitem block ~0 ~-3 ~4 slot.container 4 gunpowder 6
replaceitem block ~0 ~-3 ~4 slot.container 5 arrow 17
replaceitem block ~0 ~-3 ~4 slot.container 9 cooked_chicken 13
replaceitem block ~0 ~-3 ~4 slot.container 10 iron_ingot 11
replaceitem block ~0 ~-3 ~4 slot.container 11 coal 10
replaceitem block ~0 ~-3 ~4 slot.container 12 golden_carrot 5
replaceitem block ~0 ~-3 ~4 slot.container 13 iron_sword 1
replaceitem block ~0 ~-3 ~4 slot.container 14 shears 1
loot insert ~0 ~-3 ~4 loot "rsf/birch_forest"
loot insert ~0 ~-3 ~4 loot "chests/village/village_taiga_house"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 phantom_membrane 4
replaceitem block ~0 ~-3 ~-4 slot.container 1 rotten_flesh 13
replaceitem block ~0 ~-3 ~-4 slot.container 2 bone 12
replaceitem block ~0 ~-3 ~-4 slot.container 3 string 13
replaceitem block ~0 ~-3 ~-4 slot.container 4 gunpowder 12
replaceitem block ~0 ~-3 ~-4 slot.container 5 arrow 23
replaceitem block ~0 ~-3 ~-4 slot.container 9 cooked_chicken 12
replaceitem block ~0 ~-3 ~-4 slot.container 10 iron_ingot 10
replaceitem block ~0 ~-3 ~-4 slot.container 11 coal 16
replaceitem block ~0 ~-3 ~-4 slot.container 12 golden_carrot 4
replaceitem block ~0 ~-3 ~-4 slot.container 13 iron_sword 1
replaceitem block ~0 ~-3 ~-4 slot.container 14 shears 1
loot insert ~0 ~-3 ~-4 loot "rsf/birch_forest"
loot insert ~0 ~-3 ~-4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-7 ~1 ~-1 ~7 ~7 ~6 calcite []
fill ~-6 ~1 ~0 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~7 ~-6 birch_log []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 birch_log []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 birch_log []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 birch_log []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 birch_log []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 birch_log []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 birch_log []
fill ~7 ~1 ~-6 ~7 ~7 ~-6 birch_log []
fill ~-7 ~7 ~-6 ~7 ~7 ~-1 birch_planks []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~8 ~-7 ~-8 ~8 ~7 birch_stairs ["weirdo_direction"=0]
fill ~8 ~8 ~-7 ~8 ~8 ~7 birch_stairs ["weirdo_direction"=1]
fill ~-7 ~9 ~-6 ~-7 ~9 ~6 birch_stairs ["weirdo_direction"=0]
fill ~7 ~9 ~-6 ~7 ~9 ~6 birch_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-6 ~6 ~9 ~6 stone_brick_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 birch_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~3 ~-8 birch_log []
setblock ~-9 ~4 ~-8 lantern []
fill ~-9 ~0 ~8 ~-9 ~3 ~8 birch_log []
setblock ~-9 ~4 ~8 lantern []
fill ~9 ~0 ~-8 ~9 ~3 ~-8 birch_log []
setblock ~9 ~4 ~-8 lantern []
fill ~9 ~0 ~8 ~9 ~3 ~8 birch_log []
setblock ~9 ~4 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~8 ~0 ~-2 ~9 ~0 ~2 stone_bricks []
fill ~9 ~1 ~-2 ~9 ~7 ~-2 birch_log []
fill ~9 ~1 ~2 ~9 ~7 ~2 birch_log []
fill ~8 ~8 ~-2 ~9 ~8 ~2 stone_brick_slab []
setblock ~8 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 bone 9
replaceitem block ~6 ~1 ~4 slot.container 1 string 10
replaceitem block ~6 ~1 ~4 slot.container 2 gunpowder 9
replaceitem block ~6 ~1 ~4 slot.container 3 arrow 20
replaceitem block ~6 ~1 ~4 slot.container 4 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 5 feather 14
replaceitem block ~6 ~1 ~4 slot.container 9 honey_bottle 9
replaceitem block ~6 ~1 ~4 slot.container 10 birch_log 16
replaceitem block ~6 ~1 ~4 slot.container 11 cooked_chicken 9
replaceitem block ~6 ~1 ~4 slot.container 12 iron_ingot 7
replaceitem block ~6 ~1 ~4 slot.container 13 coal 13
replaceitem block ~6 ~1 ~4 slot.container 14 golden_carrot 8
loot insert ~6 ~1 ~4 loot "rsf/birch_forest"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 gunpowder 12
replaceitem block ~-6 ~1 ~5 slot.container 1 arrow 23
replaceitem block ~-6 ~1 ~5 slot.container 2 spider_eye 4
replaceitem block ~-6 ~1 ~5 slot.container 3 feather 9
replaceitem block ~-6 ~1 ~5 slot.container 4 phantom_membrane 4
replaceitem block ~-6 ~1 ~5 slot.container 5 rotten_flesh 13
replaceitem block ~-6 ~1 ~5 slot.container 9 honey_bottle 7
replaceitem block ~-6 ~1 ~5 slot.container 10 birch_log 21
replaceitem block ~-6 ~1 ~5 slot.container 11 cooked_chicken 14
replaceitem block ~-6 ~1 ~5 slot.container 12 iron_ingot 5
replaceitem block ~-6 ~1 ~5 slot.container 13 coal 11
replaceitem block ~-6 ~1 ~5 slot.container 14 golden_carrot 6
loot insert ~-6 ~1 ~5 loot "rsf/birch_forest"
loot insert ~-6 ~1 ~5 loot "chests/village/village_taiga_house"
summon witch ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0
