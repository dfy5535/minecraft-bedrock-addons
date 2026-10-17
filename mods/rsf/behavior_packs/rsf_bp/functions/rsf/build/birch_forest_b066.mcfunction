# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0322/4224 | 主题内编号: b066/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·崩塌角楼古堡残垣 (birch_forest_ruin_shattered_keep)
# 建筑构造: 主体[fortress_citadel] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_beacon_base]
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

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_cobblestone []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 campfire []
setblock ~4 ~-5 ~-3 campfire []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 arrow 17
replaceitem block ~4 ~-3 ~3 slot.container 1 spider_eye 6
replaceitem block ~4 ~-3 ~3 slot.container 2 feather 11
replaceitem block ~4 ~-3 ~3 slot.container 3 phantom_membrane 6
replaceitem block ~4 ~-3 ~3 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~-3 ~3 slot.container 5 bone 14
replaceitem block ~4 ~-3 ~3 slot.container 9 shears 1
replaceitem block ~4 ~-3 ~3 slot.container 10 torch 19
replaceitem block ~4 ~-3 ~3 slot.container 11 honeycomb 10
replaceitem block ~4 ~-3 ~3 slot.container 12 honey_bottle 8
replaceitem block ~4 ~-3 ~3 slot.container 13 birch_log 22
replaceitem block ~4 ~-3 ~3 slot.container 14 cooked_chicken 8
loot insert ~4 ~-3 ~3 loot "rsf/birch_forest"
loot insert ~4 ~-3 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 mossy_cobblestone []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~8 ~-4 birch_planks []
setblock ~-6 ~9 ~-5 campfire []
fill ~-6 ~1 ~4 ~-5 ~8 ~5 birch_planks []
setblock ~-6 ~9 ~4 campfire []
fill ~5 ~1 ~-5 ~6 ~8 ~-4 birch_planks []
setblock ~5 ~9 ~-5 campfire []
fill ~5 ~1 ~4 ~6 ~8 ~5 birch_planks []
setblock ~5 ~9 ~4 campfire []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 birch_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 birch_log []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 birch_log []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 birch_log []
fill ~7 ~0 ~2 ~7 ~5 ~2 birch_log []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 cobblestone []
fill ~8 ~1 ~-2 ~8 ~7 ~-2 birch_log []
fill ~8 ~1 ~2 ~8 ~7 ~2 birch_log []
fill ~7 ~8 ~-2 ~8 ~8 ~2 birch_slab []
setblock ~7 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 string 10
replaceitem block ~-5 ~1 ~3 slot.container 1 gunpowder 9
replaceitem block ~-5 ~1 ~3 slot.container 2 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 3 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 4 feather 14
replaceitem block ~-5 ~1 ~3 slot.container 5 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_carrot 4
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_sword 1
replaceitem block ~-5 ~1 ~3 slot.container 11 shears 1
replaceitem block ~-5 ~1 ~3 slot.container 12 torch 19
replaceitem block ~-5 ~1 ~3 slot.container 13 honeycomb 10
replaceitem block ~-5 ~1 ~3 slot.container 14 honey_bottle 8
loot insert ~-5 ~1 ~3 loot "rsf/birch_forest"
summon bee ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
