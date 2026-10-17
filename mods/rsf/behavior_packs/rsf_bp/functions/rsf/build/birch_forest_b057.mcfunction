# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0313/4224 | 主题内编号: b057/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·中央石棺帝王地下陵寝 (birch_forest_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x15 | 地上高度 4格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~8 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~8 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~8 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~8 ~8 air [] replace log2
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 calcite [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 calcite [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 mossy_cobblestone []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 birch_planks []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 gunpowder 6
replaceitem block ~0 ~-3 ~-4 slot.container 1 arrow 17
replaceitem block ~0 ~-3 ~-4 slot.container 2 spider_eye 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 feather 11
replaceitem block ~0 ~-3 ~-4 slot.container 4 phantom_membrane 6
replaceitem block ~0 ~-3 ~-4 slot.container 5 rotten_flesh 15
replaceitem block ~0 ~-3 ~-4 slot.container 9 coal 11
replaceitem block ~0 ~-3 ~-4 slot.container 10 golden_carrot 6
replaceitem block ~0 ~-3 ~-4 slot.container 11 iron_sword 1
replaceitem block ~0 ~-3 ~-4 slot.container 12 shears 1
replaceitem block ~0 ~-3 ~-4 slot.container 13 torch 21
replaceitem block ~0 ~-3 ~-4 slot.container 14 honeycomb 12
loot insert ~0 ~-3 ~-4 loot "rsf/birch_forest"
loot insert ~0 ~-3 ~-4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-6 ~6 ~2 ~6 calcite []
fill ~-5 ~1 ~-5 ~5 ~3 ~5 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 birch_planks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 birch_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~5 ~-6 ~6 ~5 ~6 birch_planks []
fill ~-5 ~6 ~-5 ~5 ~6 ~5 mossy_cobblestone []
fill ~-1 ~7 ~-1 ~1 ~7 ~1 bookshelf []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 birch_planks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 birch_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 birch_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 stone_brick_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 stone_bricks []
fill ~8 ~1 ~-2 ~8 ~3 ~-2 birch_log []
fill ~8 ~1 ~2 ~8 ~3 ~2 birch_log []
fill ~7 ~4 ~-2 ~8 ~4 ~2 stone_brick_slab []
setblock ~7 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 bone 9
replaceitem block ~5 ~1 ~4 slot.container 1 string 10
replaceitem block ~5 ~1 ~4 slot.container 2 gunpowder 9
replaceitem block ~5 ~1 ~4 slot.container 3 arrow 20
replaceitem block ~5 ~1 ~4 slot.container 4 spider_eye 9
replaceitem block ~5 ~1 ~4 slot.container 5 feather 14
replaceitem block ~5 ~1 ~4 slot.container 9 torch 21
replaceitem block ~5 ~1 ~4 slot.container 10 honeycomb 12
replaceitem block ~5 ~1 ~4 slot.container 11 honey_bottle 3
replaceitem block ~5 ~1 ~4 slot.container 12 birch_log 17
replaceitem block ~5 ~1 ~4 slot.container 13 cooked_chicken 10
replaceitem block ~5 ~1 ~4 slot.container 14 iron_ingot 8
loot insert ~5 ~1 ~4 loot "rsf/birch_forest"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~5 slot.container 1 arrow 23
replaceitem block ~-5 ~1 ~5 slot.container 2 spider_eye 4
replaceitem block ~-5 ~1 ~5 slot.container 3 feather 9
replaceitem block ~-5 ~1 ~5 slot.container 4 phantom_membrane 4
replaceitem block ~-5 ~1 ~5 slot.container 5 rotten_flesh 13
replaceitem block ~-5 ~1 ~5 slot.container 9 torch 19
replaceitem block ~-5 ~1 ~5 slot.container 10 honeycomb 10
replaceitem block ~-5 ~1 ~5 slot.container 11 honey_bottle 8
replaceitem block ~-5 ~1 ~5 slot.container 12 birch_log 22
replaceitem block ~-5 ~1 ~5 slot.container 13 cooked_chicken 8
replaceitem block ~-5 ~1 ~5 slot.container 14 iron_ingot 6
loot insert ~-5 ~1 ~5 loot "rsf/birch_forest"
loot insert ~-5 ~1 ~5 loot "chests/village/village_taiga_house"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
