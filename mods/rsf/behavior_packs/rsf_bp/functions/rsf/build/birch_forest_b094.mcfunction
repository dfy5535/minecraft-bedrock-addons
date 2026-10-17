# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0350/4224 | 主题内编号: b094/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·圆形圣泉祈祷亭 (birch_forest_shrine_rotunda_fountain)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_cobblestone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_cobblestone [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 birch_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 birch_planks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 rotten_flesh 15
replaceitem block ~-3 ~-3 ~2 slot.container 1 bone 14
replaceitem block ~-3 ~-3 ~2 slot.container 2 string 15
replaceitem block ~-3 ~-3 ~2 slot.container 3 gunpowder 6
replaceitem block ~-3 ~-3 ~2 slot.container 4 arrow 17
replaceitem block ~-3 ~-3 ~2 slot.container 5 spider_eye 6
replaceitem block ~-3 ~-3 ~2 slot.container 9 golden_carrot 5
replaceitem block ~-3 ~-3 ~2 slot.container 10 iron_sword 1
replaceitem block ~-3 ~-3 ~2 slot.container 11 shears 1
replaceitem block ~-3 ~-3 ~2 slot.container 12 torch 20
replaceitem block ~-3 ~-3 ~2 slot.container 13 honeycomb 11
replaceitem block ~-3 ~-3 ~2 slot.container 14 honey_bottle 9
loot insert ~-3 ~-3 ~2 loot "rsf/birch_forest"
loot insert ~-3 ~-3 ~2 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 birch_planks []
fill ~-5 ~1 ~-4 ~-5 ~5 ~-4 birch_log []
fill ~-5 ~1 ~4 ~-5 ~5 ~4 birch_log []
fill ~-3 ~1 ~-4 ~-3 ~5 ~-4 birch_log []
fill ~-3 ~1 ~4 ~-3 ~5 ~4 birch_log []
fill ~-1 ~1 ~-4 ~-1 ~5 ~-4 birch_log []
fill ~-1 ~1 ~4 ~-1 ~5 ~4 birch_log []
fill ~1 ~1 ~-4 ~1 ~5 ~-4 birch_log []
fill ~1 ~1 ~4 ~1 ~5 ~4 birch_log []
fill ~3 ~1 ~-4 ~3 ~5 ~-4 birch_log []
fill ~3 ~1 ~4 ~3 ~5 ~4 birch_log []
fill ~5 ~1 ~-4 ~5 ~5 ~-4 birch_log []
fill ~5 ~1 ~4 ~5 ~5 ~4 birch_log []
fill ~-5 ~1 ~-2 ~-5 ~5 ~-2 birch_log []
fill ~5 ~1 ~-2 ~5 ~5 ~-2 birch_log []
fill ~-5 ~1 ~0 ~-5 ~5 ~0 birch_log []
fill ~5 ~1 ~0 ~5 ~5 ~0 birch_log []
fill ~-5 ~1 ~2 ~-5 ~5 ~2 birch_log []
fill ~5 ~1 ~2 ~5 ~5 ~2 birch_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 birch_planks []
fill ~-4 ~7 ~-3 ~4 ~8 ~3 glass []
fill ~-3 ~7 ~-2 ~3 ~7 ~2 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 birch_log []
setblock ~0 ~4 ~-6 chiseled_stone_bricks []
setblock ~0 ~5 ~-6 campfire []
fill ~0 ~0 ~6 ~0 ~3 ~6 birch_log []
setblock ~0 ~4 ~6 chiseled_stone_bricks []
setblock ~0 ~5 ~6 campfire []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 birch_log []
setblock ~-7 ~4 ~0 chiseled_stone_bricks []
setblock ~-7 ~5 ~0 campfire []
fill ~7 ~0 ~0 ~7 ~3 ~0 birch_log []
setblock ~7 ~4 ~0 chiseled_stone_bricks []
setblock ~7 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 6x6x4) ---
fill ~6 ~0 ~-2 ~7 ~0 ~2 cobblestone []
fill ~7 ~1 ~-2 ~7 ~5 ~-2 birch_log []
fill ~7 ~1 ~2 ~7 ~5 ~2 birch_log []
fill ~6 ~6 ~-2 ~7 ~6 ~2 birch_slab []
setblock ~6 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 bookshelf []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 feather 14
replaceitem block ~-4 ~1 ~2 slot.container 1 phantom_membrane 9
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 10
replaceitem block ~-4 ~1 ~2 slot.container 3 bone 9
replaceitem block ~-4 ~1 ~2 slot.container 4 string 10
replaceitem block ~-4 ~1 ~2 slot.container 5 gunpowder 9
replaceitem block ~-4 ~1 ~2 slot.container 9 honeycomb 6
replaceitem block ~-4 ~1 ~2 slot.container 10 honey_bottle 4
replaceitem block ~-4 ~1 ~2 slot.container 11 birch_log 18
replaceitem block ~-4 ~1 ~2 slot.container 12 cooked_chicken 11
replaceitem block ~-4 ~1 ~2 slot.container 13 iron_ingot 9
replaceitem block ~-4 ~1 ~2 slot.container 14 coal 15
loot insert ~-4 ~1 ~2 loot "rsf/birch_forest"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon bee ~1 ~1 ~1
summon witch ~0 ~-3 ~0
