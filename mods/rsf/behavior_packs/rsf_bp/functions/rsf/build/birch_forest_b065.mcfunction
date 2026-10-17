# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0321/4224 | 主题内编号: b065/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·断柱露天古神庙废墟 (birch_forest_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x15 | 地上高度 5格 | 地下深度 3格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace log2
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 calcite [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 calcite [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 mossy_cobblestone []
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~4 slot.container 0 spider_eye 6
replaceitem block ~4 ~-2 ~4 slot.container 1 feather 11
replaceitem block ~4 ~-2 ~4 slot.container 2 phantom_membrane 6
replaceitem block ~4 ~-2 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~4 ~-2 ~4 slot.container 4 bone 14
replaceitem block ~4 ~-2 ~4 slot.container 5 string 15
replaceitem block ~4 ~-2 ~4 slot.container 9 iron_sword 1
replaceitem block ~4 ~-2 ~4 slot.container 10 shears 1
replaceitem block ~4 ~-2 ~4 slot.container 11 torch 20
replaceitem block ~4 ~-2 ~4 slot.container 12 honeycomb 11
replaceitem block ~4 ~-2 ~4 slot.container 13 honey_bottle 9
replaceitem block ~4 ~-2 ~4 slot.container 14 birch_log 16
loot insert ~4 ~-2 ~4 loot "rsf/birch_forest"
loot insert ~4 ~-2 ~4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~5 ~-6 ~6 ~5 ~6 birch_planks []
fill ~-6 ~1 ~-6 ~-6 ~4 ~-6 birch_log []
fill ~-6 ~1 ~6 ~-6 ~4 ~6 birch_log []
fill ~-4 ~1 ~-6 ~-4 ~4 ~-6 birch_log []
fill ~-4 ~1 ~6 ~-4 ~4 ~6 birch_log []
fill ~-2 ~1 ~-6 ~-2 ~4 ~-6 birch_log []
fill ~-2 ~1 ~6 ~-2 ~4 ~6 birch_log []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 birch_log []
fill ~0 ~1 ~6 ~0 ~4 ~6 birch_log []
fill ~2 ~1 ~-6 ~2 ~4 ~-6 birch_log []
fill ~2 ~1 ~6 ~2 ~4 ~6 birch_log []
fill ~4 ~1 ~-6 ~4 ~4 ~-6 birch_log []
fill ~4 ~1 ~6 ~4 ~4 ~6 birch_log []
fill ~6 ~1 ~-6 ~6 ~4 ~-6 birch_log []
fill ~6 ~1 ~6 ~6 ~4 ~6 birch_log []
fill ~-6 ~1 ~-4 ~-6 ~4 ~-4 birch_log []
fill ~6 ~1 ~-4 ~6 ~4 ~-4 birch_log []
fill ~-6 ~1 ~-2 ~-6 ~4 ~-2 birch_log []
fill ~6 ~1 ~-2 ~6 ~4 ~-2 birch_log []
fill ~-6 ~1 ~0 ~-6 ~4 ~0 birch_log []
fill ~6 ~1 ~0 ~6 ~4 ~0 birch_log []
fill ~-6 ~1 ~2 ~-6 ~4 ~2 birch_log []
fill ~6 ~1 ~2 ~6 ~4 ~2 birch_log []
fill ~-6 ~1 ~4 ~-6 ~4 ~4 birch_log []
fill ~6 ~1 ~4 ~6 ~4 ~4 birch_log []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~5 ~-6 ~6 ~5 ~6 stone_brick_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-6 ~4 ~-1 ~-6 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~3 ~-8 birch_log []
setblock ~-8 ~4 ~-8 lantern []
fill ~-8 ~0 ~8 ~-8 ~3 ~8 birch_log []
setblock ~-8 ~4 ~8 lantern []
fill ~8 ~0 ~-8 ~8 ~3 ~-8 birch_log []
setblock ~8 ~4 ~-8 lantern []
fill ~8 ~0 ~8 ~8 ~3 ~8 birch_log []
setblock ~8 ~4 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x9x5) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 stone_bricks []
fill ~8 ~1 ~-2 ~8 ~6 ~-2 birch_log []
fill ~8 ~1 ~2 ~8 ~6 ~2 birch_log []
fill ~7 ~7 ~-2 ~8 ~7 ~2 stone_brick_slab []
setblock ~7 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~3 smithing_table []
setblock ~-4 ~1 ~3 anvil []
setblock ~4 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 bone 9
replaceitem block ~5 ~1 ~4 slot.container 1 string 10
replaceitem block ~5 ~1 ~4 slot.container 2 gunpowder 9
replaceitem block ~5 ~1 ~4 slot.container 3 arrow 20
replaceitem block ~5 ~1 ~4 slot.container 4 spider_eye 9
replaceitem block ~5 ~1 ~4 slot.container 5 feather 14
replaceitem block ~5 ~1 ~4 slot.container 9 cooked_chicken 14
replaceitem block ~5 ~1 ~4 slot.container 10 iron_ingot 5
replaceitem block ~5 ~1 ~4 slot.container 11 coal 11
replaceitem block ~5 ~1 ~4 slot.container 12 golden_carrot 6
replaceitem block ~5 ~1 ~4 slot.container 13 iron_sword 1
replaceitem block ~5 ~1 ~4 slot.container 14 shears 1
loot insert ~5 ~1 ~4 loot "rsf/birch_forest"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~5 slot.container 1 arrow 23
replaceitem block ~-5 ~1 ~5 slot.container 2 spider_eye 4
replaceitem block ~-5 ~1 ~5 slot.container 3 feather 9
replaceitem block ~-5 ~1 ~5 slot.container 4 phantom_membrane 4
replaceitem block ~-5 ~1 ~5 slot.container 5 rotten_flesh 13
replaceitem block ~-5 ~1 ~5 slot.container 9 cooked_chicken 12
replaceitem block ~-5 ~1 ~5 slot.container 10 iron_ingot 10
replaceitem block ~-5 ~1 ~5 slot.container 11 coal 16
replaceitem block ~-5 ~1 ~5 slot.container 12 golden_carrot 4
replaceitem block ~-5 ~1 ~5 slot.container 13 iron_sword 1
replaceitem block ~-5 ~1 ~5 slot.container 14 shears 1
loot insert ~-5 ~1 ~5 loot "rsf/birch_forest"
loot insert ~-5 ~1 ~5 loot "chests/village/village_taiga_house"
summon pillager ~0 ~1 ~-1
summon bee ~-1 ~1 ~1
