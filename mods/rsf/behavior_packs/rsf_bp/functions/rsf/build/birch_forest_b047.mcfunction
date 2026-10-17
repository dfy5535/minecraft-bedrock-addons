# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0303/4224 | 主题内编号: b047/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·深渊跨桥决斗长台 (birch_forest_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 17x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace log2
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 birch_planks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 birch_planks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 birch_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 cobblestone []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 stone_bricks []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-5 ~-3 ~2 slot.container 0 bone 14
replaceitem block ~-5 ~-3 ~2 slot.container 1 string 15
replaceitem block ~-5 ~-3 ~2 slot.container 2 gunpowder 6
replaceitem block ~-5 ~-3 ~2 slot.container 3 arrow 17
replaceitem block ~-5 ~-3 ~2 slot.container 4 spider_eye 6
replaceitem block ~-5 ~-3 ~2 slot.container 5 feather 11
replaceitem block ~-5 ~-3 ~2 slot.container 9 coal 13
replaceitem block ~-5 ~-3 ~2 slot.container 10 golden_carrot 8
replaceitem block ~-5 ~-3 ~2 slot.container 11 iron_sword 1
replaceitem block ~-5 ~-3 ~2 slot.container 12 shears 1
replaceitem block ~-5 ~-3 ~2 slot.container 13 torch 16
replaceitem block ~-5 ~-3 ~2 slot.container 14 honeycomb 7
loot insert ~-5 ~-3 ~2 loot "rsf/birch_forest"
loot insert ~-5 ~-3 ~2 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-7 ~1 ~-4 ~7 ~5 ~4 birch_planks []
fill ~-6 ~1 ~-3 ~6 ~4 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~5 ~-4 ~-7 ~7 ~-4 birch_log []
setblock ~-7 ~8 ~-4 lantern []
fill ~-7 ~5 ~4 ~-7 ~7 ~4 birch_log []
setblock ~-7 ~8 ~4 lantern []
fill ~7 ~5 ~-4 ~7 ~7 ~-4 birch_log []
setblock ~7 ~8 ~-4 lantern []
fill ~7 ~5 ~4 ~7 ~7 ~4 birch_log []
setblock ~7 ~8 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-6 ~-9 ~3 ~-6 birch_log []
setblock ~-9 ~4 ~-6 lantern []
fill ~-9 ~0 ~6 ~-9 ~3 ~6 birch_log []
setblock ~-9 ~4 ~6 lantern []
fill ~9 ~0 ~-6 ~9 ~3 ~-6 birch_log []
setblock ~9 ~4 ~-6 lantern []
fill ~9 ~0 ~6 ~9 ~3 ~6 birch_log []
setblock ~9 ~4 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~8 ~0 ~-2 ~9 ~0 ~2 mossy_stone_bricks []
fill ~9 ~1 ~-2 ~9 ~3 ~-2 birch_log []
fill ~9 ~1 ~2 ~9 ~3 ~2 birch_log []
fill ~8 ~4 ~-2 ~9 ~4 ~2 birch_slab []
setblock ~8 ~1 ~0 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 phantom_membrane 9
replaceitem block ~6 ~1 ~2 slot.container 1 rotten_flesh 10
replaceitem block ~6 ~1 ~2 slot.container 2 bone 9
replaceitem block ~6 ~1 ~2 slot.container 3 string 10
replaceitem block ~6 ~1 ~2 slot.container 4 gunpowder 9
replaceitem block ~6 ~1 ~2 slot.container 5 arrow 20
replaceitem block ~6 ~1 ~2 slot.container 9 torch 18
replaceitem block ~6 ~1 ~2 slot.container 10 honeycomb 9
replaceitem block ~6 ~1 ~2 slot.container 11 honey_bottle 7
replaceitem block ~6 ~1 ~2 slot.container 12 birch_log 21
replaceitem block ~6 ~1 ~2 slot.container 13 cooked_chicken 14
replaceitem block ~6 ~1 ~2 slot.container 14 iron_ingot 5
loot insert ~6 ~1 ~2 loot "rsf/birch_forest"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 bone 12
replaceitem block ~-6 ~1 ~3 slot.container 1 string 13
replaceitem block ~-6 ~1 ~3 slot.container 2 gunpowder 12
replaceitem block ~-6 ~1 ~3 slot.container 3 arrow 23
replaceitem block ~-6 ~1 ~3 slot.container 4 spider_eye 4
replaceitem block ~-6 ~1 ~3 slot.container 5 feather 9
replaceitem block ~-6 ~1 ~3 slot.container 9 torch 16
replaceitem block ~-6 ~1 ~3 slot.container 10 honeycomb 7
replaceitem block ~-6 ~1 ~3 slot.container 11 honey_bottle 5
replaceitem block ~-6 ~1 ~3 slot.container 12 birch_log 19
replaceitem block ~-6 ~1 ~3 slot.container 13 cooked_chicken 12
replaceitem block ~-6 ~1 ~3 slot.container 14 iron_ingot 10
loot insert ~-6 ~1 ~3 loot "rsf/birch_forest"
loot insert ~-6 ~1 ~3 loot "chests/village/village_taiga_house"
summon pillager ~0 ~1 ~-1
summon bee ~-1 ~1 ~1
