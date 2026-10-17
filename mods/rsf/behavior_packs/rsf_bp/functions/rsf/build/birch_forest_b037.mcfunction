# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0293/4224 | 主题内编号: b037/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·环廊聖柱纪念碑 (birch_forest_obelisk_rotunda_pillar)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 calcite [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 calcite [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 mossy_cobblestone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 bookshelf []
setblock ~0 ~-5 ~0 lantern []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 spider_eye 6
replaceitem block ~4 ~-2 ~0 slot.container 1 feather 11
replaceitem block ~4 ~-2 ~0 slot.container 2 phantom_membrane 6
replaceitem block ~4 ~-2 ~0 slot.container 3 rotten_flesh 15
replaceitem block ~4 ~-2 ~0 slot.container 4 bone 14
replaceitem block ~4 ~-2 ~0 slot.container 5 string 15
replaceitem block ~4 ~-2 ~0 slot.container 9 coal 14
replaceitem block ~4 ~-2 ~0 slot.container 10 golden_carrot 9
replaceitem block ~4 ~-2 ~0 slot.container 11 iron_sword 1
replaceitem block ~4 ~-2 ~0 slot.container 12 shears 1
replaceitem block ~4 ~-2 ~0 slot.container 13 torch 17
replaceitem block ~4 ~-2 ~0 slot.container 14 honeycomb 8
loot insert ~4 ~-2 ~0 loot "rsf/birch_forest"
loot insert ~4 ~-2 ~0 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 birch_planks []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 birch_log []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 birch_log []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 birch_log []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 birch_log []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 birch_log []
fill ~-2 ~1 ~5 ~-2 ~6 ~5 birch_log []
fill ~0 ~1 ~-5 ~0 ~6 ~-5 birch_log []
fill ~0 ~1 ~5 ~0 ~6 ~5 birch_log []
fill ~2 ~1 ~-5 ~2 ~6 ~-5 birch_log []
fill ~2 ~1 ~5 ~2 ~6 ~5 birch_log []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 birch_log []
fill ~4 ~1 ~5 ~4 ~6 ~5 birch_log []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 birch_log []
fill ~6 ~1 ~5 ~6 ~6 ~5 birch_log []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 birch_log []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 birch_log []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 birch_log []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 birch_log []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 birch_log []
fill ~6 ~1 ~1 ~6 ~6 ~1 birch_log []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 birch_log []
fill ~6 ~1 ~3 ~6 ~6 ~3 birch_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 birch_log []
setblock ~-6 ~10 ~-5 lantern []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 birch_log []
setblock ~-6 ~10 ~5 lantern []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 birch_log []
setblock ~6 ~10 ~-5 lantern []
fill ~6 ~7 ~5 ~6 ~9 ~5 birch_log []
setblock ~6 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~3 ~-7 birch_log []
setblock ~-8 ~4 ~-7 lantern []
fill ~-8 ~0 ~7 ~-8 ~3 ~7 birch_log []
setblock ~-8 ~4 ~7 lantern []
fill ~8 ~0 ~-7 ~8 ~3 ~-7 birch_log []
setblock ~8 ~4 ~-7 lantern []
fill ~8 ~0 ~7 ~8 ~3 ~7 birch_log []
setblock ~8 ~4 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 stone_bricks []
fill ~8 ~1 ~-2 ~8 ~3 ~-2 birch_log []
fill ~8 ~1 ~2 ~8 ~3 ~2 birch_log []
fill ~7 ~4 ~-2 ~8 ~4 ~2 stone_brick_slab []
setblock ~7 ~1 ~0 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 1 feather 14
replaceitem block ~5 ~1 ~3 slot.container 2 phantom_membrane 9
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 10
replaceitem block ~5 ~1 ~3 slot.container 4 bone 9
replaceitem block ~5 ~1 ~3 slot.container 5 string 10
replaceitem block ~5 ~1 ~3 slot.container 9 torch 22
replaceitem block ~5 ~1 ~3 slot.container 10 honeycomb 6
replaceitem block ~5 ~1 ~3 slot.container 11 honey_bottle 4
replaceitem block ~5 ~1 ~3 slot.container 12 birch_log 18
replaceitem block ~5 ~1 ~3 slot.container 13 cooked_chicken 11
replaceitem block ~5 ~1 ~3 slot.container 14 iron_ingot 9
loot insert ~5 ~1 ~3 loot "rsf/birch_forest"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 phantom_membrane 4
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 13
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 3 string 13
replaceitem block ~-5 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 5 arrow 23
replaceitem block ~-5 ~1 ~4 slot.container 9 torch 20
replaceitem block ~-5 ~1 ~4 slot.container 10 honeycomb 11
replaceitem block ~-5 ~1 ~4 slot.container 11 honey_bottle 9
replaceitem block ~-5 ~1 ~4 slot.container 12 birch_log 16
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_chicken 9
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 7
loot insert ~-5 ~1 ~4 loot "rsf/birch_forest"
loot insert ~-5 ~1 ~4 loot "chests/village/village_taiga_house"
summon witch ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-2 ~0
