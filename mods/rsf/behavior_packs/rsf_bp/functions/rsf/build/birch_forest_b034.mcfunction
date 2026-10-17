# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0290/4224 | 主题内编号: b034/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·双子对称铭文方尖碑 (birch_forest_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x9 | 地上高度 9格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~13 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~13 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~13 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~13 ~5 air [] replace log2
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 mossy_cobblestone [] replace air
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 mossy_cobblestone [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 birch_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 stone_bricks []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-2 ~5 ~-1 ~2 birch_planks []
fill ~-4 ~-5 ~-1 ~4 ~-1 ~1 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~1 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~1 slot.container 0 feather 11
replaceitem block ~4 ~-3 ~1 slot.container 1 phantom_membrane 6
replaceitem block ~4 ~-3 ~1 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~-3 ~1 slot.container 3 bone 14
replaceitem block ~4 ~-3 ~1 slot.container 4 string 15
replaceitem block ~4 ~-3 ~1 slot.container 5 gunpowder 6
replaceitem block ~4 ~-3 ~1 slot.container 9 iron_ingot 11
replaceitem block ~4 ~-3 ~1 slot.container 10 coal 10
replaceitem block ~4 ~-3 ~1 slot.container 11 golden_carrot 5
replaceitem block ~4 ~-3 ~1 slot.container 12 iron_sword 1
replaceitem block ~4 ~-3 ~1 slot.container 13 shears 1
replaceitem block ~4 ~-3 ~1 slot.container 14 torch 20
loot insert ~4 ~-3 ~1 loot "rsf/birch_forest"
loot insert ~4 ~-3 ~1 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~10 ~3 mossy_cobblestone []
fill ~2 ~1 ~-3 ~6 ~10 ~3 mossy_cobblestone []
fill ~-5 ~1 ~-2 ~-3 ~9 ~2 air []
fill ~3 ~1 ~-2 ~5 ~9 ~2 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 birch_planks []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 birch_planks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 mossy_cobblestone []
fill ~0 ~15 ~0 ~0 ~18 ~0 gold_block []
setblock ~0 ~19 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 birch_planks []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 campfire []
setblock ~2 ~4 ~-6 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x5x4) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 cobblestone []
fill ~8 ~1 ~-2 ~8 ~5 ~-2 birch_log []
fill ~8 ~1 ~2 ~8 ~5 ~2 birch_log []
fill ~7 ~6 ~-2 ~8 ~6 ~2 birch_slab []
setblock ~7 ~1 ~0 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-5 ~1 ~2 smithing_table []
setblock ~-4 ~1 ~2 anvil []
setblock ~4 ~1 ~2 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~1 slot.container 0 string 10
replaceitem block ~-5 ~1 ~1 slot.container 1 gunpowder 9
replaceitem block ~-5 ~1 ~1 slot.container 2 arrow 20
replaceitem block ~-5 ~1 ~1 slot.container 3 spider_eye 9
replaceitem block ~-5 ~1 ~1 slot.container 4 feather 14
replaceitem block ~-5 ~1 ~1 slot.container 5 phantom_membrane 9
replaceitem block ~-5 ~1 ~1 slot.container 9 honeycomb 9
replaceitem block ~-5 ~1 ~1 slot.container 10 honey_bottle 7
replaceitem block ~-5 ~1 ~1 slot.container 11 birch_log 21
replaceitem block ~-5 ~1 ~1 slot.container 12 cooked_chicken 14
replaceitem block ~-5 ~1 ~1 slot.container 13 iron_ingot 5
replaceitem block ~-5 ~1 ~1 slot.container 14 coal 11
loot insert ~-5 ~1 ~1 loot "rsf/birch_forest"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon bee ~1 ~1 ~1
summon witch ~0 ~-3 ~0
