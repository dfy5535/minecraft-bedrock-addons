# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0331/4224 | 主题内编号: b075/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·远古巨石环廊法阵 (birch_forest_totem_rotunda_henge)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log2
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 birch_planks [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 birch_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 birch_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 stone_bricks []
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 stone_bricks []
setblock ~0 ~-5 ~0 honeycomb_block []
fill ~0 ~-4 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-4 slot.container 0 spider_eye 6
replaceitem block ~0 ~-2 ~-4 slot.container 1 feather 11
replaceitem block ~0 ~-2 ~-4 slot.container 2 phantom_membrane 6
replaceitem block ~0 ~-2 ~-4 slot.container 3 rotten_flesh 15
replaceitem block ~0 ~-2 ~-4 slot.container 4 bone 14
replaceitem block ~0 ~-2 ~-4 slot.container 5 string 15
replaceitem block ~0 ~-2 ~-4 slot.container 9 torch 21
replaceitem block ~0 ~-2 ~-4 slot.container 10 honeycomb 12
replaceitem block ~0 ~-2 ~-4 slot.container 11 honey_bottle 3
replaceitem block ~0 ~-2 ~-4 slot.container 12 birch_log 17
replaceitem block ~0 ~-2 ~-4 slot.container 13 cooked_chicken 10
replaceitem block ~0 ~-2 ~-4 slot.container 14 iron_ingot 8
loot insert ~0 ~-2 ~-4 loot "rsf/birch_forest"
loot insert ~0 ~-2 ~-4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 stone_bricks []
fill ~-7 ~1 ~-6 ~-7 ~5 ~-6 birch_log []
fill ~-7 ~1 ~6 ~-7 ~5 ~6 birch_log []
fill ~-5 ~1 ~-6 ~-5 ~5 ~-6 birch_log []
fill ~-5 ~1 ~6 ~-5 ~5 ~6 birch_log []
fill ~-3 ~1 ~-6 ~-3 ~5 ~-6 birch_log []
fill ~-3 ~1 ~6 ~-3 ~5 ~6 birch_log []
fill ~-1 ~1 ~-6 ~-1 ~5 ~-6 birch_log []
fill ~-1 ~1 ~6 ~-1 ~5 ~6 birch_log []
fill ~1 ~1 ~-6 ~1 ~5 ~-6 birch_log []
fill ~1 ~1 ~6 ~1 ~5 ~6 birch_log []
fill ~3 ~1 ~-6 ~3 ~5 ~-6 birch_log []
fill ~3 ~1 ~6 ~3 ~5 ~6 birch_log []
fill ~5 ~1 ~-6 ~5 ~5 ~-6 birch_log []
fill ~5 ~1 ~6 ~5 ~5 ~6 birch_log []
fill ~7 ~1 ~-6 ~7 ~5 ~-6 birch_log []
fill ~7 ~1 ~6 ~7 ~5 ~6 birch_log []
fill ~-7 ~1 ~-4 ~-7 ~5 ~-4 birch_log []
fill ~7 ~1 ~-4 ~7 ~5 ~-4 birch_log []
fill ~-7 ~1 ~-2 ~-7 ~5 ~-2 birch_log []
fill ~7 ~1 ~-2 ~7 ~5 ~-2 birch_log []
fill ~-7 ~1 ~0 ~-7 ~5 ~0 birch_log []
fill ~7 ~1 ~0 ~7 ~5 ~0 birch_log []
fill ~-7 ~1 ~2 ~-7 ~5 ~2 birch_log []
fill ~7 ~1 ~2 ~7 ~5 ~2 birch_log []
fill ~-7 ~1 ~4 ~-7 ~5 ~4 birch_log []
fill ~7 ~1 ~4 ~7 ~5 ~4 birch_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~6 ~-6 ~-7 ~8 ~-6 birch_log []
setblock ~-7 ~9 ~-6 lantern []
fill ~-7 ~6 ~6 ~-7 ~8 ~6 birch_log []
setblock ~-7 ~9 ~6 lantern []
fill ~7 ~6 ~-6 ~7 ~8 ~-6 birch_log []
setblock ~7 ~9 ~-6 lantern []
fill ~7 ~6 ~6 ~7 ~8 ~6 birch_log []
setblock ~7 ~9 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 birch_log []
setblock ~0 ~4 ~-8 honeycomb_block []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 birch_log []
setblock ~0 ~4 ~8 honeycomb_block []
setblock ~0 ~5 ~8 lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 birch_log []
setblock ~-9 ~4 ~0 honeycomb_block []
setblock ~-9 ~5 ~0 lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 birch_log []
setblock ~9 ~4 ~0 honeycomb_block []
setblock ~9 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~8 ~0 ~-2 ~9 ~0 ~2 mossy_stone_bricks []
fill ~9 ~1 ~-2 ~9 ~6 ~-2 birch_log []
fill ~9 ~1 ~2 ~9 ~6 ~2 birch_log []
fill ~8 ~7 ~-2 ~9 ~7 ~2 birch_slab []
setblock ~8 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 gunpowder 9
replaceitem block ~6 ~1 ~4 slot.container 1 arrow 20
replaceitem block ~6 ~1 ~4 slot.container 2 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 3 feather 14
replaceitem block ~6 ~1 ~4 slot.container 4 phantom_membrane 9
replaceitem block ~6 ~1 ~4 slot.container 5 rotten_flesh 10
replaceitem block ~6 ~1 ~4 slot.container 9 cooked_chicken 10
replaceitem block ~6 ~1 ~4 slot.container 10 iron_ingot 8
replaceitem block ~6 ~1 ~4 slot.container 11 coal 14
replaceitem block ~6 ~1 ~4 slot.container 12 golden_carrot 9
replaceitem block ~6 ~1 ~4 slot.container 13 iron_sword 1
replaceitem block ~6 ~1 ~4 slot.container 14 shears 1
loot insert ~6 ~1 ~4 loot "rsf/birch_forest"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 spider_eye 4
replaceitem block ~-6 ~1 ~5 slot.container 1 feather 9
replaceitem block ~-6 ~1 ~5 slot.container 2 phantom_membrane 4
replaceitem block ~-6 ~1 ~5 slot.container 3 rotten_flesh 13
replaceitem block ~-6 ~1 ~5 slot.container 4 bone 12
replaceitem block ~-6 ~1 ~5 slot.container 5 string 13
replaceitem block ~-6 ~1 ~5 slot.container 9 cooked_chicken 8
replaceitem block ~-6 ~1 ~5 slot.container 10 iron_ingot 6
replaceitem block ~-6 ~1 ~5 slot.container 11 coal 12
replaceitem block ~-6 ~1 ~5 slot.container 12 golden_carrot 7
replaceitem block ~-6 ~1 ~5 slot.container 13 iron_sword 1
replaceitem block ~-6 ~1 ~5 slot.container 14 shears 1
loot insert ~-6 ~1 ~5 loot "rsf/birch_forest"
loot insert ~-6 ~1 ~5 loot "chests/village/village_taiga_house"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
