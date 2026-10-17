# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1247/4224 | 主题内编号: b095/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·双子灯笼守卫神龛 (savanna_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cobblestone [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cobblestone [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 acacia_planks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 orange_terracotta []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~8 ~4 cobblestone []
fill ~2 ~1 ~-4 ~5 ~8 ~4 cobblestone []
fill ~-4 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 orange_terracotta []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 acacia_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 stone_bricks []
fill ~0 ~16 ~0 ~0 ~18 ~0 gold_block []
setblock ~0 ~19 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 acacia_log []
setblock ~-7 ~5 ~-6 torch []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 acacia_log []
setblock ~-7 ~5 ~6 torch []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 acacia_log []
setblock ~7 ~5 ~-6 torch []
fill ~7 ~0 ~6 ~7 ~4 ~6 acacia_log []
setblock ~7 ~5 ~6 torch []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x5x2) ---
fill ~7 ~0 ~5 ~7 ~5 ~5 acacia_log []
fill ~6 ~5 ~4 ~8 ~5 ~6 acacia_slab []
setblock ~7 ~6 ~5 orange_terracotta []
setblock ~7 ~7 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-4 ~1 ~3 smoker []
setblock ~4 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 2 bone 11
replaceitem block ~4 ~1 ~3 slot.container 3 string 10
replaceitem block ~4 ~1 ~3 slot.container 4 gunpowder 11
replaceitem block ~4 ~1 ~3 slot.container 5 arrow 20
replaceitem block ~4 ~1 ~3 slot.container 9 cooked_beef 9
replaceitem block ~4 ~1 ~3 slot.container 10 acacia_log 18
replaceitem block ~4 ~1 ~3 slot.container 11 iron_ingot 9
replaceitem block ~4 ~1 ~3 slot.container 12 gold_ingot 8
replaceitem block ~4 ~1 ~3 slot.container 13 emerald 8
replaceitem block ~4 ~1 ~3 slot.container 14 saddle 1
loot insert ~4 ~1 ~3 loot "rsf/savanna"
summon llama ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~2 ~0
