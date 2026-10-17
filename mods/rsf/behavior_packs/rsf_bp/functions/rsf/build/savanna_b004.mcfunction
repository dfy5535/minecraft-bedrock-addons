# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1156/4224 | 主题内编号: b004/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·双子火盆高台神坛 (savanna_altar_twin_brazier)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 acacia_planks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 acacia_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 acacia_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 acacia_planks []
fill ~2 ~1 ~-5 ~6 ~8 ~5 acacia_planks []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 stone_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 acacia_log []
setblock ~-6 ~10 ~-5 torch []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 acacia_log []
setblock ~-6 ~10 ~5 torch []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 acacia_log []
setblock ~6 ~10 ~-5 torch []
fill ~6 ~7 ~5 ~6 ~9 ~5 acacia_log []
setblock ~6 ~10 ~5 torch []

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

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~8 ~0 ~8 ~8 ~9 ~8 acacia_log []
fill ~7 ~9 ~7 ~9 ~9 ~9 acacia_slab []
setblock ~8 ~10 ~8 orange_terracotta []
setblock ~8 ~11 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 arrow 20
replaceitem block ~-5 ~1 ~4 slot.container 1 leather 13
replaceitem block ~-5 ~1 ~4 slot.container 2 spider_eye 10
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 9 iron_sword 1
replaceitem block ~-5 ~1 ~4 slot.container 10 torch 18
replaceitem block ~-5 ~1 ~4 slot.container 11 bread 13
replaceitem block ~-5 ~1 ~4 slot.container 12 cooked_beef 12
replaceitem block ~-5 ~1 ~4 slot.container 13 acacia_log 21
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 12
loot insert ~-5 ~1 ~4 loot "rsf/savanna"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 spider_eye 5
replaceitem block ~5 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~5 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 3 bone 14
replaceitem block ~5 ~1 ~4 slot.container 4 string 13
replaceitem block ~5 ~1 ~4 slot.container 5 gunpowder 14
replaceitem block ~5 ~1 ~4 slot.container 9 iron_sword 1
replaceitem block ~5 ~1 ~4 slot.container 10 torch 16
replaceitem block ~5 ~1 ~4 slot.container 11 bread 11
replaceitem block ~5 ~1 ~4 slot.container 12 cooked_beef 10
replaceitem block ~5 ~1 ~4 slot.container 13 acacia_log 19
replaceitem block ~5 ~1 ~4 slot.container 14 iron_ingot 10
loot insert ~5 ~1 ~4 loot "rsf/savanna"
loot insert ~5 ~1 ~4 loot "chests/village/village_savanna_house"
summon pillager ~0 ~1 ~-1
summon llama ~-1 ~1 ~1
summon husk ~1 ~1 ~1
