# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1228/4224 | 主题内编号: b076/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·阶梯高台图腾战阵 (savanna_totem_stepped_altar_ring)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[trial_pit] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 acacia_planks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 acacia_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 acacia_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 acacia_planks []
fill ~-4 ~-4 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 chiseled_stone_bricks []
setblock ~-3 ~-4 ~-4 torch []
setblock ~3 ~-4 ~4 torch []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 arrow 17
replaceitem block ~0 ~-2 ~4 slot.container 1 leather 10
replaceitem block ~0 ~-2 ~4 slot.container 2 spider_eye 7
replaceitem block ~0 ~-2 ~4 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-2 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~0 ~-2 ~4 slot.container 5 bone 16
replaceitem block ~0 ~-2 ~4 slot.container 9 saddle 1
replaceitem block ~0 ~-2 ~4 slot.container 10 golden_apple 2
replaceitem block ~0 ~-2 ~4 slot.container 11 iron_sword 1
replaceitem block ~0 ~-2 ~4 slot.container 12 torch 19
replaceitem block ~0 ~-2 ~4 slot.container 13 bread 14
replaceitem block ~0 ~-2 ~4 slot.container 14 cooked_beef 13
loot insert ~0 ~-2 ~4 loot "rsf/savanna"
loot insert ~0 ~-2 ~4 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 acacia_planks []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 stone_bricks []
fill ~-3 ~5 ~-4 ~3 ~8 ~4 hardened_clay []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 acacia_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 acacia_planks []
fill ~0 ~14 ~0 ~0 ~16 ~0 chiseled_stone_bricks []
setblock ~0 ~17 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 cobblestone_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x9x3) ---
fill ~7 ~0 ~9 ~7 ~6 ~9 acacia_log []
fill ~6 ~6 ~8 ~8 ~6 ~10 acacia_slab []
setblock ~7 ~7 ~9 orange_terracotta []
setblock ~7 ~8 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 arrow 20
replaceitem block ~-4 ~1 ~5 slot.container 1 leather 13
replaceitem block ~-4 ~1 ~5 slot.container 2 spider_eye 10
replaceitem block ~-4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 9 gold_ingot 7
replaceitem block ~-4 ~1 ~5 slot.container 10 emerald 7
replaceitem block ~-4 ~1 ~5 slot.container 11 saddle 1
replaceitem block ~-4 ~1 ~5 slot.container 12 golden_apple 7
replaceitem block ~-4 ~1 ~5 slot.container 13 iron_sword 1
replaceitem block ~-4 ~1 ~5 slot.container 14 torch 17
loot insert ~-4 ~1 ~5 loot "rsf/savanna"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 5
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 3 bone 14
replaceitem block ~4 ~1 ~5 slot.container 4 string 13
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 14
replaceitem block ~4 ~1 ~5 slot.container 9 gold_ingot 5
replaceitem block ~4 ~1 ~5 slot.container 10 emerald 5
replaceitem block ~4 ~1 ~5 slot.container 11 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 5
replaceitem block ~4 ~1 ~5 slot.container 13 iron_sword 1
replaceitem block ~4 ~1 ~5 slot.container 14 torch 22
loot insert ~4 ~1 ~5 loot "rsf/savanna"
loot insert ~4 ~1 ~5 loot "chests/village/village_savanna_house"
summon pillager ~0 ~1 ~-1
summon llama ~-1 ~1 ~1
summon husk ~1 ~1 ~1
