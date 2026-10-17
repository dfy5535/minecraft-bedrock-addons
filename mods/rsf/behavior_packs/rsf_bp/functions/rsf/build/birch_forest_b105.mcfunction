# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0361/4224 | 主题内编号: b105/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·满书架奥术附魔书院 (birch_forest_arcane_enchant_library)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log2
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 calcite [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 calcite [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-4 ~4 ~-1 ~4 mossy_cobblestone []
fill ~-3 ~-4 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~3 slot.container 0 spider_eye 6
replaceitem block ~3 ~-2 ~3 slot.container 1 feather 11
replaceitem block ~3 ~-2 ~3 slot.container 2 phantom_membrane 6
replaceitem block ~3 ~-2 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~3 ~-2 ~3 slot.container 4 bone 14
replaceitem block ~3 ~-2 ~3 slot.container 5 string 15
replaceitem block ~3 ~-2 ~3 slot.container 9 iron_sword 1
replaceitem block ~3 ~-2 ~3 slot.container 10 shears 1
replaceitem block ~3 ~-2 ~3 slot.container 11 torch 18
replaceitem block ~3 ~-2 ~3 slot.container 12 honeycomb 9
replaceitem block ~3 ~-2 ~3 slot.container 13 honey_bottle 7
replaceitem block ~3 ~-2 ~3 slot.container 14 birch_log 21
loot insert ~3 ~-2 ~3 loot "rsf/birch_forest"
loot insert ~3 ~-2 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 calcite []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-5 ~1 ~-5 ~-5 ~6 ~-5 birch_log []
fill ~-5 ~1 ~5 ~-5 ~6 ~5 birch_log []
fill ~5 ~1 ~-5 ~5 ~6 ~-5 birch_log []
fill ~5 ~1 ~5 ~5 ~6 ~5 birch_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-5 ~2 ~0 birch_fence []
setblock ~5 ~2 ~0 birch_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-6 ~-6 ~7 ~6 birch_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-6 ~6 ~7 ~6 birch_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~-5 ~8 ~5 birch_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-5 ~5 ~8 ~5 birch_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-5 ~4 ~8 ~5 stone_brick_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 birch_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 birch_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 birch_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 birch_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 6x6x5) ---
fill ~6 ~0 ~-2 ~7 ~0 ~2 stone_bricks []
fill ~7 ~1 ~-2 ~7 ~6 ~-2 birch_log []
fill ~7 ~1 ~2 ~7 ~6 ~2 birch_log []
fill ~6 ~7 ~-2 ~7 ~7 ~2 stone_brick_slab []
setblock ~6 ~1 ~0 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 bone 9
replaceitem block ~4 ~1 ~3 slot.container 1 string 10
replaceitem block ~4 ~1 ~3 slot.container 2 gunpowder 9
replaceitem block ~4 ~1 ~3 slot.container 3 arrow 20
replaceitem block ~4 ~1 ~3 slot.container 4 spider_eye 9
replaceitem block ~4 ~1 ~3 slot.container 5 feather 14
replaceitem block ~4 ~1 ~3 slot.container 9 cooked_chicken 12
replaceitem block ~4 ~1 ~3 slot.container 10 iron_ingot 10
replaceitem block ~4 ~1 ~3 slot.container 11 coal 16
replaceitem block ~4 ~1 ~3 slot.container 12 golden_carrot 4
replaceitem block ~4 ~1 ~3 slot.container 13 iron_sword 1
replaceitem block ~4 ~1 ~3 slot.container 14 shears 1
loot insert ~4 ~1 ~3 loot "rsf/birch_forest"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~4 slot.container 1 arrow 23
replaceitem block ~-4 ~1 ~4 slot.container 2 spider_eye 4
replaceitem block ~-4 ~1 ~4 slot.container 3 feather 9
replaceitem block ~-4 ~1 ~4 slot.container 4 phantom_membrane 4
replaceitem block ~-4 ~1 ~4 slot.container 5 rotten_flesh 13
replaceitem block ~-4 ~1 ~4 slot.container 9 cooked_chicken 10
replaceitem block ~-4 ~1 ~4 slot.container 10 iron_ingot 8
replaceitem block ~-4 ~1 ~4 slot.container 11 coal 14
replaceitem block ~-4 ~1 ~4 slot.container 12 golden_carrot 9
replaceitem block ~-4 ~1 ~4 slot.container 13 iron_sword 1
replaceitem block ~-4 ~1 ~4 slot.container 14 shears 1
loot insert ~-4 ~1 ~4 loot "rsf/birch_forest"
loot insert ~-4 ~1 ~4 loot "chests/village/village_taiga_house"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
