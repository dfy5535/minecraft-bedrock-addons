# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0278/4224 | 主题内编号: b022/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·廊柱书库秘藏室 (birch_forest_chamber_pillared_archive)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 birch_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 birch_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 string 15
replaceitem block ~4 ~-3 ~3 slot.container 1 gunpowder 6
replaceitem block ~4 ~-3 ~3 slot.container 2 arrow 17
replaceitem block ~4 ~-3 ~3 slot.container 3 spider_eye 6
replaceitem block ~4 ~-3 ~3 slot.container 4 feather 11
replaceitem block ~4 ~-3 ~3 slot.container 5 phantom_membrane 6
replaceitem block ~4 ~-3 ~3 slot.container 9 shears 1
replaceitem block ~4 ~-3 ~3 slot.container 10 torch 18
replaceitem block ~4 ~-3 ~3 slot.container 11 honeycomb 9
replaceitem block ~4 ~-3 ~3 slot.container 12 honey_bottle 7
replaceitem block ~4 ~-3 ~3 slot.container 13 birch_log 21
replaceitem block ~4 ~-3 ~3 slot.container 14 cooked_chicken 14
loot insert ~4 ~-3 ~3 loot "rsf/birch_forest"
loot insert ~4 ~-3 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 birch_planks []
fill ~-6 ~1 ~-5 ~-6 ~5 ~-5 birch_log []
fill ~-6 ~1 ~5 ~-6 ~5 ~5 birch_log []
fill ~-4 ~1 ~-5 ~-4 ~5 ~-5 birch_log []
fill ~-4 ~1 ~5 ~-4 ~5 ~5 birch_log []
fill ~-2 ~1 ~-5 ~-2 ~5 ~-5 birch_log []
fill ~-2 ~1 ~5 ~-2 ~5 ~5 birch_log []
fill ~0 ~1 ~-5 ~0 ~5 ~-5 birch_log []
fill ~0 ~1 ~5 ~0 ~5 ~5 birch_log []
fill ~2 ~1 ~-5 ~2 ~5 ~-5 birch_log []
fill ~2 ~1 ~5 ~2 ~5 ~5 birch_log []
fill ~4 ~1 ~-5 ~4 ~5 ~-5 birch_log []
fill ~4 ~1 ~5 ~4 ~5 ~5 birch_log []
fill ~6 ~1 ~-5 ~6 ~5 ~-5 birch_log []
fill ~6 ~1 ~5 ~6 ~5 ~5 birch_log []
fill ~-6 ~1 ~-3 ~-6 ~5 ~-3 birch_log []
fill ~6 ~1 ~-3 ~6 ~5 ~-3 birch_log []
fill ~-6 ~1 ~-1 ~-6 ~5 ~-1 birch_log []
fill ~6 ~1 ~-1 ~6 ~5 ~-1 birch_log []
fill ~-6 ~1 ~1 ~-6 ~5 ~1 birch_log []
fill ~6 ~1 ~1 ~6 ~5 ~1 birch_log []
fill ~-6 ~1 ~3 ~-6 ~5 ~3 birch_log []
fill ~6 ~1 ~3 ~6 ~5 ~3 birch_log []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 birch_planks []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 birch_planks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 gold_block []
setblock ~0 ~10 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 birch_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 birch_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 birch_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 birch_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 cobblestone []
fill ~8 ~1 ~-2 ~8 ~3 ~-2 birch_log []
fill ~8 ~1 ~2 ~8 ~3 ~2 birch_log []
fill ~7 ~4 ~-2 ~8 ~4 ~2 birch_slab []
setblock ~7 ~1 ~0 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 feather 14
replaceitem block ~-5 ~1 ~3 slot.container 1 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 10
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 9
replaceitem block ~-5 ~1 ~3 slot.container 4 string 10
replaceitem block ~-5 ~1 ~3 slot.container 5 gunpowder 9
replaceitem block ~-5 ~1 ~3 slot.container 9 iron_ingot 10
replaceitem block ~-5 ~1 ~3 slot.container 10 coal 16
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_carrot 4
replaceitem block ~-5 ~1 ~3 slot.container 12 iron_sword 1
replaceitem block ~-5 ~1 ~3 slot.container 13 shears 1
replaceitem block ~-5 ~1 ~3 slot.container 14 torch 19
loot insert ~-5 ~1 ~3 loot "rsf/birch_forest"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon bee ~1 ~1 ~1
summon witch ~0 ~-3 ~0
