# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0310/4224 | 主题内编号: b054/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·切石与伐木工匠棚屋 (birch_forest_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x11 | 地上高度 5格 | 地下深度 3格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~9 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~9 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~9 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~9 ~6 air [] replace log2
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 mossy_cobblestone [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 mossy_cobblestone [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 birch_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 stone_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-4 ~6 ~-1 ~4 birch_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~6 ~4 mossy_cobblestone []
fill ~2 ~1 ~-4 ~6 ~6 ~4 mossy_cobblestone []
fill ~-5 ~1 ~-3 ~-3 ~5 ~3 air []
fill ~3 ~1 ~-3 ~5 ~5 ~3 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 birch_planks []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-5 ~-7 ~6 ~5 stone_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-5 ~7 ~6 ~5 stone_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-4 ~-6 ~7 ~4 stone_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-4 ~6 ~7 ~4 stone_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-4 ~5 ~7 ~4 birch_slab []
fill ~0 ~8 ~-5 ~0 ~8 ~5 birch_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 cobblestone []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x5x4) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 cobblestone []
fill ~8 ~1 ~-2 ~8 ~5 ~-2 birch_log []
fill ~8 ~1 ~2 ~8 ~5 ~2 birch_log []
fill ~7 ~6 ~-2 ~8 ~6 ~2 birch_slab []
setblock ~7 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 bookshelf []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 feather 14
replaceitem block ~-5 ~1 ~2 slot.container 1 phantom_membrane 9
replaceitem block ~-5 ~1 ~2 slot.container 2 rotten_flesh 10
replaceitem block ~-5 ~1 ~2 slot.container 3 bone 9
replaceitem block ~-5 ~1 ~2 slot.container 4 string 10
replaceitem block ~-5 ~1 ~2 slot.container 5 gunpowder 9
replaceitem block ~-5 ~1 ~2 slot.container 9 honeycomb 8
replaceitem block ~-5 ~1 ~2 slot.container 10 honey_bottle 6
replaceitem block ~-5 ~1 ~2 slot.container 11 birch_log 20
replaceitem block ~-5 ~1 ~2 slot.container 12 cooked_chicken 13
replaceitem block ~-5 ~1 ~2 slot.container 13 iron_ingot 11
replaceitem block ~-5 ~1 ~2 slot.container 14 coal 10
loot insert ~-5 ~1 ~2 loot "rsf/birch_forest"
summon bee ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
