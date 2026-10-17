# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0282/4224 | 主题内编号: b026/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·尖顶信标引航高塔 (birch_forest_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 11x9 | 地上高度 10格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace log2
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 mossy_cobblestone [] replace air
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 mossy_cobblestone [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 birch_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 birch_planks []
fill ~-2 ~-5 ~-1 ~2 ~-1 ~1 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~1 slot.container 0 feather 11
replaceitem block ~2 ~-3 ~1 slot.container 1 phantom_membrane 6
replaceitem block ~2 ~-3 ~1 slot.container 2 rotten_flesh 15
replaceitem block ~2 ~-3 ~1 slot.container 3 bone 14
replaceitem block ~2 ~-3 ~1 slot.container 4 string 15
replaceitem block ~2 ~-3 ~1 slot.container 5 gunpowder 6
replaceitem block ~2 ~-3 ~1 slot.container 9 honeycomb 11
replaceitem block ~2 ~-3 ~1 slot.container 10 honey_bottle 9
replaceitem block ~2 ~-3 ~1 slot.container 11 birch_log 16
replaceitem block ~2 ~-3 ~1 slot.container 12 cooked_chicken 9
replaceitem block ~2 ~-3 ~1 slot.container 13 iron_ingot 7
replaceitem block ~2 ~-3 ~1 slot.container 14 coal 13
loot insert ~2 ~-3 ~1 loot "rsf/birch_forest"
loot insert ~2 ~-3 ~1 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-3 ~4 ~10 ~3 mossy_cobblestone []
fill ~-3 ~1 ~-2 ~3 ~9 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~11 ~-3 air []
fill ~4 ~1 ~-3 ~4 ~11 ~-3 air []
fill ~-4 ~1 ~3 ~-4 ~11 ~3 air []
fill ~4 ~1 ~3 ~4 ~11 ~3 air []
fill ~-3 ~1 ~-2 ~-3 ~10 ~-2 birch_log []
fill ~3 ~1 ~-2 ~3 ~10 ~-2 birch_log []
fill ~-3 ~1 ~2 ~-3 ~10 ~2 birch_log []
fill ~3 ~1 ~2 ~3 ~10 ~2 birch_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 birch_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 mossy_cobblestone []
fill ~0 ~16 ~0 ~0 ~19 ~0 gold_block []
setblock ~0 ~20 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~9 ~-2 birch_log []
fill ~-5 ~0 ~2 ~-5 ~9 ~2 birch_log []
fill ~5 ~0 ~-2 ~5 ~9 ~-2 birch_log []
fill ~5 ~0 ~2 ~5 ~9 ~2 birch_log []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 5x6x6) ---
fill ~5 ~0 ~-2 ~6 ~0 ~2 cobblestone []
fill ~6 ~1 ~-2 ~6 ~7 ~-2 birch_log []
fill ~6 ~1 ~2 ~6 ~7 ~2 birch_log []
fill ~5 ~8 ~-2 ~6 ~8 ~2 birch_slab []
setblock ~5 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~1 slot.container 0 string 10
replaceitem block ~-3 ~1 ~1 slot.container 1 gunpowder 9
replaceitem block ~-3 ~1 ~1 slot.container 2 arrow 20
replaceitem block ~-3 ~1 ~1 slot.container 3 spider_eye 9
replaceitem block ~-3 ~1 ~1 slot.container 4 feather 14
replaceitem block ~-3 ~1 ~1 slot.container 5 phantom_membrane 9
replaceitem block ~-3 ~1 ~1 slot.container 9 golden_carrot 6
replaceitem block ~-3 ~1 ~1 slot.container 10 iron_sword 1
replaceitem block ~-3 ~1 ~1 slot.container 11 shears 1
replaceitem block ~-3 ~1 ~1 slot.container 12 torch 21
replaceitem block ~-3 ~1 ~1 slot.container 13 honeycomb 12
replaceitem block ~-3 ~1 ~1 slot.container 14 honey_bottle 3
loot insert ~-3 ~1 ~1 loot "rsf/birch_forest"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
