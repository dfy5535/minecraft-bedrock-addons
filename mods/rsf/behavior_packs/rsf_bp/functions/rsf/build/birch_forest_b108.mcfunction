# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0364/4224 | 主题内编号: b108/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·十字四相元素秘法殿 (birch_forest_arcane_cross_sanctum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 calcite []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 honeycomb_block []
setblock ~0 ~-6 ~0 torch []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-3 ~0 slot.container 0 arrow 17
replaceitem block ~4 ~-3 ~0 slot.container 1 spider_eye 6
replaceitem block ~4 ~-3 ~0 slot.container 2 feather 11
replaceitem block ~4 ~-3 ~0 slot.container 3 phantom_membrane 6
replaceitem block ~4 ~-3 ~0 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~-3 ~0 slot.container 5 bone 14
replaceitem block ~4 ~-3 ~0 slot.container 9 shears 1
replaceitem block ~4 ~-3 ~0 slot.container 10 torch 22
replaceitem block ~4 ~-3 ~0 slot.container 11 honeycomb 6
replaceitem block ~4 ~-3 ~0 slot.container 12 honey_bottle 4
replaceitem block ~4 ~-3 ~0 slot.container 13 birch_log 18
replaceitem block ~4 ~-3 ~0 slot.container 14 cooked_chicken 11
loot insert ~4 ~-3 ~0 loot "rsf/birch_forest"
loot insert ~4 ~-3 ~0 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~6 ~5 stone_bricks []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 stone_bricks []
fill ~-1 ~1 ~-4 ~1 ~5 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 birch_planks []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 calcite []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 honeycomb_block []
setblock ~0 ~10 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 stripped_birch_log []
setblock ~0 ~4 ~-7 bookshelf []
setblock ~0 ~5 ~-7 torch []
fill ~0 ~0 ~7 ~0 ~3 ~7 stripped_birch_log []
setblock ~0 ~4 ~7 bookshelf []
setblock ~0 ~5 ~7 torch []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 stripped_birch_log []
setblock ~-8 ~4 ~0 bookshelf []
setblock ~-8 ~5 ~0 torch []
fill ~8 ~0 ~0 ~8 ~3 ~0 stripped_birch_log []
setblock ~8 ~4 ~0 bookshelf []
setblock ~8 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 stone_bricks []
fill ~8 ~1 ~-2 ~8 ~4 ~-2 stripped_birch_log []
fill ~8 ~1 ~2 ~8 ~4 ~2 stripped_birch_log []
fill ~7 ~5 ~-2 ~8 ~5 ~2 stone_brick_slab []
setblock ~7 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 1 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 2 feather 14
replaceitem block ~-5 ~1 ~3 slot.container 3 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 10
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 9
replaceitem block ~-5 ~1 ~3 slot.container 9 birch_log 16
replaceitem block ~-5 ~1 ~3 slot.container 10 cooked_chicken 9
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_ingot 7
replaceitem block ~-5 ~1 ~3 slot.container 12 coal 13
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_carrot 8
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_sword 1
loot insert ~-5 ~1 ~3 loot "rsf/birch_forest"
summon bee ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
