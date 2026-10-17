# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0345/4224 | 主题内编号: b089/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·四柱挑檐祈愿凉亭 (birch_forest_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 11x9 | 地上高度 6格 | 地下深度 2格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air [] replace log2
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 calcite [] replace air
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 calcite [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 stone_bricks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-3 ~4 ~-1 ~3 birch_planks []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~6 ~3 calcite []
fill ~-3 ~1 ~-2 ~3 ~5 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~6 ~-3 birch_log []
fill ~-4 ~1 ~3 ~-4 ~6 ~3 birch_log []
fill ~4 ~1 ~-3 ~4 ~6 ~-3 birch_log []
fill ~4 ~1 ~3 ~4 ~6 ~3 birch_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 birch_fence []
setblock ~4 ~2 ~0 birch_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 stone_brick_slab []
fill ~-3 ~7 ~-2 ~3 ~8 ~2 mossy_cobblestone []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 birch_slab []
setblock ~0 ~10 ~0 bookshelf []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-5 ~2 ~0 ~-4 birch_planks []
fill ~-2 ~1 ~-5 ~-2 ~3 ~-5 birch_log []
fill ~2 ~1 ~-5 ~2 ~3 ~-5 birch_log []
fill ~-2 ~4 ~-5 ~2 ~4 ~-4 stone_brick_slab []
setblock ~0 ~3 ~-5 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 5x6x4) ---
fill ~5 ~0 ~-2 ~6 ~0 ~2 stone_bricks []
fill ~6 ~1 ~-2 ~6 ~5 ~-2 birch_log []
fill ~6 ~1 ~2 ~6 ~5 ~2 birch_log []
fill ~5 ~6 ~-2 ~6 ~6 ~2 stone_brick_slab []
setblock ~5 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 bone 9
replaceitem block ~3 ~1 ~1 slot.container 1 string 10
replaceitem block ~3 ~1 ~1 slot.container 2 gunpowder 9
replaceitem block ~3 ~1 ~1 slot.container 3 arrow 20
replaceitem block ~3 ~1 ~1 slot.container 4 spider_eye 9
replaceitem block ~3 ~1 ~1 slot.container 5 feather 14
replaceitem block ~3 ~1 ~1 slot.container 9 coal 12
replaceitem block ~3 ~1 ~1 slot.container 10 golden_carrot 7
replaceitem block ~3 ~1 ~1 slot.container 11 iron_sword 1
replaceitem block ~3 ~1 ~1 slot.container 12 shears 1
replaceitem block ~3 ~1 ~1 slot.container 13 torch 22
replaceitem block ~3 ~1 ~1 slot.container 14 honeycomb 6
loot insert ~3 ~1 ~1 loot "rsf/birch_forest"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 gunpowder 12
replaceitem block ~-3 ~1 ~2 slot.container 1 arrow 23
replaceitem block ~-3 ~1 ~2 slot.container 2 spider_eye 4
replaceitem block ~-3 ~1 ~2 slot.container 3 feather 9
replaceitem block ~-3 ~1 ~2 slot.container 4 phantom_membrane 4
replaceitem block ~-3 ~1 ~2 slot.container 5 rotten_flesh 13
replaceitem block ~-3 ~1 ~2 slot.container 9 coal 10
replaceitem block ~-3 ~1 ~2 slot.container 10 golden_carrot 5
replaceitem block ~-3 ~1 ~2 slot.container 11 iron_sword 1
replaceitem block ~-3 ~1 ~2 slot.container 12 shears 1
replaceitem block ~-3 ~1 ~2 slot.container 13 torch 20
replaceitem block ~-3 ~1 ~2 slot.container 14 honeycomb 11
loot insert ~-3 ~1 ~2 loot "rsf/birch_forest"
loot insert ~-3 ~1 ~2 loot "chests/village/village_taiga_house"
summon pillager ~0 ~1 ~-1
summon bee ~-1 ~1 ~1
