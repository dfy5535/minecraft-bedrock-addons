# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1204/4224 | 主题内编号: b052/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·重檐行商旅店客栈 (savanna_outpost_caravan_inn)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 13x17 | 地上高度 7格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~11 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~11 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~11 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~11 ~9 air [] replace log2
fill ~-6 ~-4 ~-8 ~6 ~-1 ~8 acacia_planks [] replace air
fill ~-6 ~-4 ~-8 ~6 ~-1 ~8 acacia_planks [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 acacia_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 cobblestone []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 acacia_planks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 orange_terracotta []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 leather 10
replaceitem block ~0 ~-3 ~-4 slot.container 1 spider_eye 7
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 4 bone 16
replaceitem block ~0 ~-3 ~-4 slot.container 5 string 15
replaceitem block ~0 ~-3 ~-4 slot.container 9 cooked_beef 11
replaceitem block ~0 ~-3 ~-4 slot.container 10 acacia_log 20
replaceitem block ~0 ~-3 ~-4 slot.container 11 iron_ingot 11
replaceitem block ~0 ~-3 ~-4 slot.container 12 gold_ingot 10
replaceitem block ~0 ~-3 ~-4 slot.container 13 emerald 3
replaceitem block ~0 ~-3 ~-4 slot.container 14 saddle 1
loot insert ~0 ~-3 ~-4 loot "rsf/savanna"
loot insert ~0 ~-3 ~-4 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-7 ~5 ~3 ~7 acacia_planks []
fill ~-4 ~1 ~-6 ~4 ~2 ~6 air []
fill ~-6 ~3 ~-8 ~6 ~3 ~8 acacia_slab []
fill ~-4 ~4 ~-6 ~4 ~7 ~6 hardened_clay []
fill ~-3 ~4 ~-5 ~3 ~6 ~5 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~5 ~0 ~4 ~5 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-8 ~6 ~7 ~8 acacia_slab []
fill ~-4 ~8 ~-6 ~4 ~9 ~6 hardened_clay []
fill ~-5 ~10 ~-7 ~5 ~10 ~7 stone_brick_slab []
setblock ~0 ~11 ~0 chiseled_stone_bricks []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 stone_bricks []
fill ~-2 ~1 ~-9 ~-2 ~3 ~-9 acacia_log []
fill ~2 ~1 ~-9 ~2 ~3 ~-9 acacia_log []
fill ~-2 ~4 ~-9 ~2 ~4 ~-8 acacia_slab []
setblock ~0 ~3 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x10x4) ---
fill ~7 ~0 ~10 ~7 ~7 ~10 acacia_log []
fill ~6 ~7 ~9 ~8 ~7 ~11 acacia_slab []
setblock ~7 ~8 ~10 orange_terracotta []
setblock ~7 ~9 ~10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 smoker []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~6 slot.container 0 arrow 20
replaceitem block ~-4 ~1 ~6 slot.container 1 leather 13
replaceitem block ~-4 ~1 ~6 slot.container 2 spider_eye 10
replaceitem block ~-4 ~1 ~6 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~6 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~6 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~6 slot.container 9 acacia_log 16
replaceitem block ~-4 ~1 ~6 slot.container 10 iron_ingot 7
replaceitem block ~-4 ~1 ~6 slot.container 11 gold_ingot 6
replaceitem block ~-4 ~1 ~6 slot.container 12 emerald 6
replaceitem block ~-4 ~1 ~6 slot.container 13 saddle 1
replaceitem block ~-4 ~1 ~6 slot.container 14 golden_apple 6
loot insert ~-4 ~1 ~6 loot "rsf/savanna"
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 spider_eye 5
replaceitem block ~4 ~1 ~6 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~6 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~6 slot.container 3 bone 14
replaceitem block ~4 ~1 ~6 slot.container 4 string 13
replaceitem block ~4 ~1 ~6 slot.container 5 gunpowder 14
replaceitem block ~4 ~1 ~6 slot.container 9 acacia_log 21
replaceitem block ~4 ~1 ~6 slot.container 10 iron_ingot 12
replaceitem block ~4 ~1 ~6 slot.container 11 gold_ingot 4
replaceitem block ~4 ~1 ~6 slot.container 12 emerald 4
replaceitem block ~4 ~1 ~6 slot.container 13 saddle 1
replaceitem block ~4 ~1 ~6 slot.container 14 golden_apple 4
loot insert ~4 ~1 ~6 loot "rsf/savanna"
loot insert ~4 ~1 ~6 loot "chests/village/village_savanna_house"
summon pillager ~0 ~1 ~-1
summon llama ~-1 ~1 ~1
summon husk ~1 ~1 ~1
