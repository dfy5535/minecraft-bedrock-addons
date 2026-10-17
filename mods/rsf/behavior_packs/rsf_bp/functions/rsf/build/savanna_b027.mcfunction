# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1179/4224 | 主题内编号: b027/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·双子连廊警戒塔楼 (savanna_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cobblestone [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cobblestone [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 acacia_planks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 orange_terracotta []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~10 ~4 cobblestone []
fill ~2 ~1 ~-4 ~5 ~10 ~4 cobblestone []
fill ~-4 ~1 ~-3 ~-3 ~9 ~3 air []
fill ~3 ~1 ~-3 ~4 ~9 ~3 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 orange_terracotta []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 orange_terracotta []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 cobblestone_wall []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 air []
setblock ~-5 ~10 ~-4 acacia_log []
setblock ~-5 ~11 ~-4 torch []
setblock ~-5 ~10 ~4 acacia_log []
setblock ~-5 ~11 ~4 torch []
setblock ~5 ~10 ~-4 acacia_log []
setblock ~5 ~11 ~-4 torch []
setblock ~5 ~10 ~4 acacia_log []
setblock ~5 ~11 ~4 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 acacia_planks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~7 ~0 ~6 ~7 ~7 ~6 acacia_log []
fill ~6 ~7 ~5 ~8 ~7 ~7 acacia_slab []
setblock ~7 ~8 ~6 orange_terracotta []
setblock ~7 ~9 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 gold_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 gunpowder 11
replaceitem block ~4 ~1 ~3 slot.container 1 arrow 20
replaceitem block ~4 ~1 ~3 slot.container 2 leather 13
replaceitem block ~4 ~1 ~3 slot.container 3 spider_eye 10
replaceitem block ~4 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 9 golden_apple 4
replaceitem block ~4 ~1 ~3 slot.container 10 iron_sword 1
replaceitem block ~4 ~1 ~3 slot.container 11 torch 21
replaceitem block ~4 ~1 ~3 slot.container 12 bread 16
replaceitem block ~4 ~1 ~3 slot.container 13 cooked_beef 8
replaceitem block ~4 ~1 ~3 slot.container 14 acacia_log 17
loot insert ~4 ~1 ~3 loot "rsf/savanna"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
