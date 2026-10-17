# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1223/4224 | 主题内编号: b071/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·残破双子哨所遗迹 (savanna_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log2
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 cobblestone [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 cobblestone [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 cobblestone_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 acacia_planks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 orange_terracotta []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~8 ~5 cobblestone []
fill ~2 ~1 ~-5 ~5 ~8 ~5 cobblestone []
fill ~-4 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 orange_terracotta []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~7 ~-5 ~5 ~7 ~5 cobblestone_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-5 ~6 ~-1 ~-5 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 acacia_log []
setblock ~0 ~4 ~-8 chiseled_stone_bricks []
setblock ~0 ~5 ~-8 torch []
fill ~0 ~0 ~8 ~0 ~3 ~8 acacia_log []
setblock ~0 ~4 ~8 chiseled_stone_bricks []
setblock ~0 ~5 ~8 torch []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 acacia_log []
setblock ~-7 ~4 ~0 chiseled_stone_bricks []
setblock ~-7 ~5 ~0 torch []
fill ~7 ~0 ~0 ~7 ~3 ~0 acacia_log []
setblock ~7 ~4 ~0 chiseled_stone_bricks []
setblock ~7 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~7 ~0 ~6 ~7 ~6 ~6 acacia_log []
fill ~6 ~6 ~5 ~8 ~6 ~7 acacia_slab []
setblock ~7 ~7 ~6 orange_terracotta []
setblock ~7 ~8 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~4 slot.container 2 bone 11
replaceitem block ~4 ~1 ~4 slot.container 3 string 10
replaceitem block ~4 ~1 ~4 slot.container 4 gunpowder 11
replaceitem block ~4 ~1 ~4 slot.container 5 arrow 20
replaceitem block ~4 ~1 ~4 slot.container 9 torch 21
replaceitem block ~4 ~1 ~4 slot.container 10 bread 16
replaceitem block ~4 ~1 ~4 slot.container 11 cooked_beef 8
replaceitem block ~4 ~1 ~4 slot.container 12 acacia_log 17
replaceitem block ~4 ~1 ~4 slot.container 13 iron_ingot 8
replaceitem block ~4 ~1 ~4 slot.container 14 gold_ingot 7
loot insert ~4 ~1 ~4 loot "rsf/savanna"
summon llama ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~2 ~0
