# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0279/4224 | 主题内编号: b023/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·双层露台阁楼宝室 (birch_forest_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log2
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 birch_planks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 birch_planks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 birch_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cobblestone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-5 ~5 ~3 ~5 birch_planks []
fill ~-4 ~1 ~-4 ~4 ~2 ~4 air []
fill ~-6 ~3 ~-6 ~6 ~3 ~6 birch_slab []
fill ~-4 ~4 ~-4 ~4 ~7 ~4 stone_bricks []
fill ~-3 ~4 ~-3 ~3 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~4 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 birch_slab []
fill ~-4 ~8 ~-4 ~4 ~9 ~4 stone_bricks []
fill ~-5 ~10 ~-5 ~5 ~10 ~5 stone_brick_slab []
setblock ~0 ~11 ~0 chiseled_stone_bricks []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~9 ~2 stone_bricks []
fill ~6 ~1 ~-1 ~7 ~8 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~10 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 6x8x3) ---
fill ~6 ~0 ~-2 ~7 ~0 ~2 mossy_stone_bricks []
fill ~7 ~1 ~-2 ~7 ~4 ~-2 birch_log []
fill ~7 ~1 ~2 ~7 ~4 ~2 birch_log []
fill ~6 ~5 ~-2 ~7 ~5 ~2 birch_slab []
setblock ~6 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~3 smithing_table []
setblock ~-4 ~1 ~3 anvil []
setblock ~4 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 phantom_membrane 9
replaceitem block ~4 ~1 ~3 slot.container 1 rotten_flesh 10
replaceitem block ~4 ~1 ~3 slot.container 2 bone 9
replaceitem block ~4 ~1 ~3 slot.container 3 string 10
replaceitem block ~4 ~1 ~3 slot.container 4 gunpowder 9
replaceitem block ~4 ~1 ~3 slot.container 5 arrow 20
replaceitem block ~4 ~1 ~3 slot.container 9 iron_sword 1
replaceitem block ~4 ~1 ~3 slot.container 10 shears 1
replaceitem block ~4 ~1 ~3 slot.container 11 torch 17
replaceitem block ~4 ~1 ~3 slot.container 12 honeycomb 8
replaceitem block ~4 ~1 ~3 slot.container 13 honey_bottle 6
replaceitem block ~4 ~1 ~3 slot.container 14 birch_log 20
loot insert ~4 ~1 ~3 loot "rsf/birch_forest"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~4 slot.container 1 string 13
replaceitem block ~-4 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~4 slot.container 3 arrow 23
replaceitem block ~-4 ~1 ~4 slot.container 4 spider_eye 4
replaceitem block ~-4 ~1 ~4 slot.container 5 feather 9
replaceitem block ~-4 ~1 ~4 slot.container 9 iron_sword 1
replaceitem block ~-4 ~1 ~4 slot.container 10 shears 1
replaceitem block ~-4 ~1 ~4 slot.container 11 torch 22
replaceitem block ~-4 ~1 ~4 slot.container 12 honeycomb 6
replaceitem block ~-4 ~1 ~4 slot.container 13 honey_bottle 4
replaceitem block ~-4 ~1 ~4 slot.container 14 birch_log 18
loot insert ~-4 ~1 ~4 loot "rsf/birch_forest"
loot insert ~-4 ~1 ~4 loot "chests/village/village_taiga_house"
summon pillager ~0 ~1 ~-1
summon bee ~-1 ~1 ~1
