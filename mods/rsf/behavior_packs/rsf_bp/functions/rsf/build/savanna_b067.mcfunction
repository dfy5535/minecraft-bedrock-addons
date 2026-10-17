# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1219/4224 | 主题内编号: b067/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·半掩埋下沉庭院遗迹 (savanna_ruin_sunken_courtyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log2
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobblestone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 acacia_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 orange_terracotta []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-4 ~4 slot.container 0 leather 10
replaceitem block ~-3 ~-4 ~4 slot.container 1 spider_eye 7
replaceitem block ~-3 ~-4 ~4 slot.container 2 ender_pearl 6
replaceitem block ~-3 ~-4 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~-3 ~-4 ~4 slot.container 4 bone 16
replaceitem block ~-3 ~-4 ~4 slot.container 5 string 15
replaceitem block ~-3 ~-4 ~4 slot.container 9 iron_ingot 8
replaceitem block ~-3 ~-4 ~4 slot.container 10 gold_ingot 7
replaceitem block ~-3 ~-4 ~4 slot.container 11 emerald 7
replaceitem block ~-3 ~-4 ~4 slot.container 12 saddle 1
replaceitem block ~-3 ~-4 ~4 slot.container 13 golden_apple 7
replaceitem block ~-3 ~-4 ~4 slot.container 14 iron_sword 1
loot insert ~-3 ~-4 ~4 loot "rsf/savanna"
loot insert ~-3 ~-4 ~4 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~5 ~6 cobblestone []
fill ~-4 ~1 ~-5 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 cobblestone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 orange_terracotta []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 cobblestone_wall []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 air []
setblock ~-5 ~8 ~-6 acacia_log []
setblock ~-5 ~9 ~-6 torch []
setblock ~-5 ~8 ~6 acacia_log []
setblock ~-5 ~9 ~6 torch []
setblock ~5 ~8 ~-6 acacia_log []
setblock ~5 ~9 ~-6 torch []
setblock ~5 ~8 ~6 acacia_log []
setblock ~5 ~9 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 orange_terracotta []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 torch []
setblock ~2 ~4 ~-9 torch []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x9x4) ---
fill ~7 ~0 ~9 ~7 ~7 ~9 acacia_log []
fill ~6 ~7 ~8 ~8 ~7 ~10 acacia_slab []
setblock ~7 ~8 ~9 orange_terracotta []
setblock ~7 ~9 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-4 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 emerald_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 11
replaceitem block ~4 ~1 ~5 slot.container 1 arrow 20
replaceitem block ~4 ~1 ~5 slot.container 2 leather 13
replaceitem block ~4 ~1 ~5 slot.container 3 spider_eye 10
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 2
replaceitem block ~4 ~1 ~5 slot.container 10 iron_sword 1
replaceitem block ~4 ~1 ~5 slot.container 11 torch 19
replaceitem block ~4 ~1 ~5 slot.container 12 bread 14
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_beef 13
replaceitem block ~4 ~1 ~5 slot.container 14 acacia_log 22
loot insert ~4 ~1 ~5 loot "rsf/savanna"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
