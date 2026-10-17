# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0334/4224 | 主题内编号: b078/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·下沉祭池图腾柱群 (birch_forest_totem_sunken_ritual_pool)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 5格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 birch_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 birch_planks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-4 ~3 slot.container 0 rotten_flesh 15
replaceitem block ~-4 ~-4 ~3 slot.container 1 bone 14
replaceitem block ~-4 ~-4 ~3 slot.container 2 string 15
replaceitem block ~-4 ~-4 ~3 slot.container 3 gunpowder 6
replaceitem block ~-4 ~-4 ~3 slot.container 4 arrow 17
replaceitem block ~-4 ~-4 ~3 slot.container 5 spider_eye 6
replaceitem block ~-4 ~-4 ~3 slot.container 9 shears 1
replaceitem block ~-4 ~-4 ~3 slot.container 10 torch 16
replaceitem block ~-4 ~-4 ~3 slot.container 11 honeycomb 7
replaceitem block ~-4 ~-4 ~3 slot.container 12 honey_bottle 5
replaceitem block ~-4 ~-4 ~3 slot.container 13 birch_log 19
replaceitem block ~-4 ~-4 ~3 slot.container 14 cooked_chicken 12
loot insert ~-4 ~-4 ~3 loot "rsf/birch_forest"
loot insert ~-4 ~-4 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 mossy_cobblestone []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 birch_planks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 birch_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~5 ~-5 ~-6 ~7 ~-5 birch_log []
setblock ~-6 ~8 ~-5 campfire []
fill ~-6 ~5 ~5 ~-6 ~7 ~5 birch_log []
setblock ~-6 ~8 ~5 campfire []
fill ~6 ~5 ~-5 ~6 ~7 ~-5 birch_log []
setblock ~6 ~8 ~-5 campfire []
fill ~6 ~5 ~5 ~6 ~7 ~5 birch_log []
setblock ~6 ~8 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~3 ~-7 birch_log []
setblock ~-8 ~4 ~-7 campfire []
fill ~-8 ~0 ~7 ~-8 ~3 ~7 birch_log []
setblock ~-8 ~4 ~7 campfire []
fill ~8 ~0 ~-7 ~8 ~3 ~-7 birch_log []
setblock ~8 ~4 ~-7 campfire []
fill ~8 ~0 ~7 ~8 ~3 ~7 birch_log []
setblock ~8 ~4 ~7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 cobblestone []
fill ~8 ~1 ~-2 ~8 ~4 ~-2 birch_log []
fill ~8 ~1 ~2 ~8 ~4 ~2 birch_log []
fill ~7 ~5 ~-2 ~8 ~5 ~2 birch_slab []
setblock ~7 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 feather 14
replaceitem block ~-5 ~1 ~3 slot.container 1 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 10
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 9
replaceitem block ~-5 ~1 ~3 slot.container 4 string 10
replaceitem block ~-5 ~1 ~3 slot.container 5 gunpowder 9
replaceitem block ~-5 ~1 ~3 slot.container 9 birch_log 21
replaceitem block ~-5 ~1 ~3 slot.container 10 cooked_chicken 14
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_ingot 5
replaceitem block ~-5 ~1 ~3 slot.container 12 coal 11
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_carrot 6
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_sword 1
loot insert ~-5 ~1 ~3 loot "rsf/birch_forest"
summon bee ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
