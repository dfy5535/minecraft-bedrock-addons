# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0358/4224 | 主题内编号: b102/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·双子箭塔联防碉楼 (birch_forest_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace log2
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 mossy_cobblestone [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 mossy_cobblestone [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 birch_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 stone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 mossy_cobblestone []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~2 campfire []
setblock ~5 ~-5 ~-2 campfire []
setblock ~5 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~2 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~-3 ~2 slot.container 1 bone 14
replaceitem block ~5 ~-3 ~2 slot.container 2 string 15
replaceitem block ~5 ~-3 ~2 slot.container 3 gunpowder 6
replaceitem block ~5 ~-3 ~2 slot.container 4 arrow 17
replaceitem block ~5 ~-3 ~2 slot.container 5 spider_eye 6
replaceitem block ~5 ~-3 ~2 slot.container 9 golden_carrot 7
replaceitem block ~5 ~-3 ~2 slot.container 10 iron_sword 1
replaceitem block ~5 ~-3 ~2 slot.container 11 shears 1
replaceitem block ~5 ~-3 ~2 slot.container 12 torch 22
replaceitem block ~5 ~-3 ~2 slot.container 13 honeycomb 6
replaceitem block ~5 ~-3 ~2 slot.container 14 honey_bottle 4
loot insert ~5 ~-3 ~2 loot "rsf/birch_forest"
loot insert ~5 ~-3 ~2 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~8 ~4 mossy_cobblestone []
fill ~2 ~1 ~-4 ~7 ~8 ~4 mossy_cobblestone []
fill ~-6 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 birch_planks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 birch_planks []
fill ~-7 ~8 ~-4 ~7 ~8 ~4 birch_fence []
fill ~-6 ~8 ~-3 ~6 ~8 ~3 air []
setblock ~-7 ~8 ~-4 birch_log []
setblock ~-7 ~9 ~-4 campfire []
setblock ~-7 ~8 ~4 birch_log []
setblock ~-7 ~9 ~4 campfire []
setblock ~7 ~8 ~-4 birch_log []
setblock ~7 ~9 ~-4 campfire []
setblock ~7 ~8 ~4 birch_log []
setblock ~7 ~9 ~4 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 birch_log []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 birch_log []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 birch_log []
fill ~8 ~0 ~2 ~8 ~6 ~2 birch_log []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 8x5x2) ---
fill ~8 ~0 ~-2 ~9 ~0 ~2 cobblestone []
fill ~9 ~1 ~-2 ~9 ~3 ~-2 birch_log []
fill ~9 ~1 ~2 ~9 ~3 ~2 birch_log []
fill ~8 ~4 ~-2 ~9 ~4 ~2 birch_slab []
setblock ~8 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 feather 14
replaceitem block ~-6 ~1 ~2 slot.container 1 phantom_membrane 9
replaceitem block ~-6 ~1 ~2 slot.container 2 rotten_flesh 10
replaceitem block ~-6 ~1 ~2 slot.container 3 bone 9
replaceitem block ~-6 ~1 ~2 slot.container 4 string 10
replaceitem block ~-6 ~1 ~2 slot.container 5 gunpowder 9
replaceitem block ~-6 ~1 ~2 slot.container 9 iron_ingot 6
replaceitem block ~-6 ~1 ~2 slot.container 10 coal 12
replaceitem block ~-6 ~1 ~2 slot.container 11 golden_carrot 7
replaceitem block ~-6 ~1 ~2 slot.container 12 iron_sword 1
replaceitem block ~-6 ~1 ~2 slot.container 13 shears 1
replaceitem block ~-6 ~1 ~2 slot.container 14 torch 22
loot insert ~-6 ~1 ~2 loot "rsf/birch_forest"
summon bee ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
