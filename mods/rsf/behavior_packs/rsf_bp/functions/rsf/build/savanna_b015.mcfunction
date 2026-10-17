# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1167/4224 | 主题内编号: b015/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·竖井阶梯深渊地牢 (savanna_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 6格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log2
fill ~-5 ~-7 ~-6 ~5 ~-1 ~6 cobblestone [] replace air
fill ~-5 ~-7 ~-6 ~5 ~-1 ~6 cobblestone [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 acacia_planks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 acacia_planks []

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 cobblestone []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 orange_terracotta []
fill ~-2 ~5 ~-3 ~2 ~7 ~3 acacia_planks []
fill ~-2 ~1 ~-3 ~2 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 stone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 orange_terracotta []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 cobblestone []
fill ~0 ~13 ~0 ~0 ~15 ~0 emerald_block []
setblock ~0 ~16 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~4 ~-7 acacia_log []
setblock ~-6 ~5 ~-7 torch []
fill ~-6 ~0 ~7 ~-6 ~4 ~7 acacia_log []
setblock ~-6 ~5 ~7 torch []
fill ~6 ~0 ~-7 ~6 ~4 ~-7 acacia_log []
setblock ~6 ~5 ~-7 torch []
fill ~6 ~0 ~7 ~6 ~4 ~7 acacia_log []
setblock ~6 ~5 ~7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~6 ~0 ~7 ~6 ~5 ~7 acacia_log []
fill ~5 ~5 ~6 ~7 ~5 ~8 acacia_slab []
setblock ~6 ~6 ~7 orange_terracotta []
setblock ~6 ~7 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 emerald_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 2 bone 11
replaceitem block ~3 ~1 ~4 slot.container 3 string 10
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 11
replaceitem block ~3 ~1 ~4 slot.container 5 arrow 20
replaceitem block ~3 ~1 ~4 slot.container 9 cooked_beef 13
replaceitem block ~3 ~1 ~4 slot.container 10 acacia_log 22
replaceitem block ~3 ~1 ~4 slot.container 11 iron_ingot 6
replaceitem block ~3 ~1 ~4 slot.container 12 gold_ingot 5
replaceitem block ~3 ~1 ~4 slot.container 13 emerald 5
replaceitem block ~3 ~1 ~4 slot.container 14 saddle 1
loot insert ~3 ~1 ~4 loot "rsf/savanna"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
