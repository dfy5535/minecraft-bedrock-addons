# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1267/4224 | 主题内编号: b115/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·阶梯立体生态种植台 (savanna_conservatory_terrace_farm)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobblestone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 acacia_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 orange_terracotta []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~4 slot.container 0 leather 10
replaceitem block ~-3 ~-3 ~4 slot.container 1 spider_eye 7
replaceitem block ~-3 ~-3 ~4 slot.container 2 ender_pearl 6
replaceitem block ~-3 ~-3 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~-3 ~-3 ~4 slot.container 4 bone 16
replaceitem block ~-3 ~-3 ~4 slot.container 5 string 15
replaceitem block ~-3 ~-3 ~4 slot.container 9 golden_apple 2
replaceitem block ~-3 ~-3 ~4 slot.container 10 iron_sword 1
replaceitem block ~-3 ~-3 ~4 slot.container 11 torch 19
replaceitem block ~-3 ~-3 ~4 slot.container 12 bread 14
replaceitem block ~-3 ~-3 ~4 slot.container 13 cooked_beef 13
replaceitem block ~-3 ~-3 ~4 slot.container 14 acacia_log 22
loot insert ~-3 ~-3 ~4 loot "rsf/savanna"
loot insert ~-3 ~-3 ~4 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 cobblestone []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 orange_terracotta []
fill ~-3 ~5 ~-4 ~3 ~6 ~4 acacia_planks []
fill ~-3 ~1 ~-4 ~3 ~5 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 stone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 acacia_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-4 ~7 ~-1 ~-4 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 cobblestone_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x9x2) ---
fill ~7 ~0 ~9 ~7 ~5 ~9 acacia_log []
fill ~6 ~5 ~8 ~8 ~5 ~10 acacia_slab []
setblock ~7 ~6 ~9 orange_terracotta []
setblock ~7 ~7 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 crafting_table []
setblock ~-3 ~1 ~5 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 11
replaceitem block ~4 ~1 ~5 slot.container 1 arrow 20
replaceitem block ~4 ~1 ~5 slot.container 2 leather 13
replaceitem block ~4 ~1 ~5 slot.container 3 spider_eye 10
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 9 cooked_beef 8
replaceitem block ~4 ~1 ~5 slot.container 10 acacia_log 17
replaceitem block ~4 ~1 ~5 slot.container 11 iron_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 12 gold_ingot 7
replaceitem block ~4 ~1 ~5 slot.container 13 emerald 7
replaceitem block ~4 ~1 ~5 slot.container 14 saddle 1
loot insert ~4 ~1 ~5 loot "rsf/savanna"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
