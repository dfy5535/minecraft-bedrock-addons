# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0299/4224 | 主题内编号: b043/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·十字四门试炼擂台 (birch_forest_arena_cross_gauntlet)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 17x15 | 地上高度 5格 | 地下深度 2格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace log2
fill ~-8 ~-3 ~-7 ~8 ~-1 ~7 birch_planks [] replace air
fill ~-8 ~-3 ~-7 ~8 ~-1 ~7 birch_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 birch_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-2 ~-6 ~7 ~-1 ~6 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~5 ~6 birch_planks []
fill ~-7 ~1 ~-2 ~7 ~5 ~2 birch_planks []
fill ~-1 ~1 ~-5 ~1 ~4 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~4 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 birch_fence []
setblock ~7 ~2 ~0 birch_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~5 ~-6 ~7 ~5 ~6 stone_bricks []
fill ~-7 ~6 ~-6 ~7 ~6 ~6 birch_fence []
fill ~-6 ~6 ~-5 ~6 ~6 ~5 air []
setblock ~-7 ~6 ~-6 birch_log []
setblock ~-7 ~7 ~-6 lantern []
setblock ~-7 ~6 ~6 birch_log []
setblock ~-7 ~7 ~6 lantern []
setblock ~7 ~6 ~-6 birch_log []
setblock ~7 ~7 ~-6 lantern []
setblock ~7 ~6 ~6 birch_log []
setblock ~7 ~7 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 stone_bricks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 lantern []
setblock ~2 ~4 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~8 ~0 ~-2 ~9 ~0 ~2 mossy_stone_bricks []
fill ~9 ~1 ~-2 ~9 ~4 ~-2 birch_log []
fill ~9 ~1 ~2 ~9 ~4 ~2 birch_log []
fill ~8 ~5 ~-2 ~9 ~5 ~2 birch_slab []
setblock ~8 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 campfire []

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
replaceitem block ~6 ~1 ~4 slot.container 11 torch 16
replaceitem block ~6 ~1 ~4 slot.container 12 honeycomb 7
replaceitem block ~6 ~1 ~4 slot.container 13 honey_bottle 5
replaceitem block ~6 ~1 ~4 slot.container 14 birch_log 19
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
replaceitem block ~-6 ~1 ~5 slot.container 11 torch 21
replaceitem block ~-6 ~1 ~5 slot.container 12 honeycomb 12
replaceitem block ~-6 ~1 ~5 slot.container 13 honey_bottle 3
replaceitem block ~-6 ~1 ~5 slot.container 14 birch_log 17
loot insert ~-6 ~1 ~5 loot "rsf/birch_forest"
loot insert ~-6 ~1 ~5 loot "chests/village/village_taiga_house"
summon witch ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~2 ~0
