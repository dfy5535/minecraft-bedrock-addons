# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1276/4224 | 主题内编号: b124/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·三层重檐帝王阁楼与秘库 (savanna_grand_pagoda_imperial)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x17 | 地上高度 10格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~14 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~14 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~14 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~14 ~9 air [] replace log2
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 acacia_planks [] replace air
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 acacia_planks [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 acacia_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 cobblestone []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 hardened_clay []
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~5 slot.container 0 rotten_flesh 17
replaceitem block ~3 ~-3 ~5 slot.container 1 bone 16
replaceitem block ~3 ~-3 ~5 slot.container 2 string 15
replaceitem block ~3 ~-3 ~5 slot.container 3 gunpowder 8
replaceitem block ~3 ~-3 ~5 slot.container 4 arrow 17
replaceitem block ~3 ~-3 ~5 slot.container 5 leather 10
replaceitem block ~3 ~-3 ~5 slot.container 9 acacia_log 21
replaceitem block ~3 ~-3 ~5 slot.container 10 iron_ingot 12
replaceitem block ~3 ~-3 ~5 slot.container 11 gold_ingot 4
replaceitem block ~3 ~-3 ~5 slot.container 12 emerald 4
replaceitem block ~3 ~-3 ~5 slot.container 13 saddle 1
replaceitem block ~3 ~-3 ~5 slot.container 14 golden_apple 4
loot insert ~3 ~-3 ~5 loot "rsf/savanna"
loot insert ~3 ~-3 ~5 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-7 ~5 ~5 ~7 acacia_planks []
fill ~-4 ~1 ~-6 ~4 ~4 ~6 air []
fill ~-6 ~5 ~-8 ~6 ~5 ~8 acacia_slab []
fill ~-4 ~6 ~-6 ~4 ~10 ~6 hardened_clay []
fill ~-3 ~6 ~-5 ~3 ~9 ~5 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~5 ~0 ~6 ~5 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~10 ~-8 ~6 ~10 ~8 acacia_slab []
fill ~-4 ~11 ~-6 ~4 ~12 ~6 hardened_clay []
fill ~-5 ~13 ~-7 ~5 ~13 ~7 stone_brick_slab []
setblock ~0 ~14 ~0 chiseled_stone_bricks []
setblock ~0 ~15 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 acacia_fence []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x10x6) ---
fill ~7 ~0 ~10 ~7 ~9 ~10 acacia_log []
fill ~6 ~9 ~9 ~8 ~9 ~11 acacia_slab []
setblock ~7 ~10 ~10 orange_terracotta []
setblock ~7 ~11 ~10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-3 ~1 ~4 smoker []
setblock ~3 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~6 slot.container 0 arrow 20
replaceitem block ~-4 ~1 ~6 slot.container 1 leather 13
replaceitem block ~-4 ~1 ~6 slot.container 2 spider_eye 10
replaceitem block ~-4 ~1 ~6 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~6 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~6 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~6 slot.container 9 iron_sword 1
replaceitem block ~-4 ~1 ~6 slot.container 10 torch 19
replaceitem block ~-4 ~1 ~6 slot.container 11 bread 14
replaceitem block ~-4 ~1 ~6 slot.container 12 cooked_beef 13
replaceitem block ~-4 ~1 ~6 slot.container 13 acacia_log 22
replaceitem block ~-4 ~1 ~6 slot.container 14 iron_ingot 6
loot insert ~-4 ~1 ~6 loot "rsf/savanna"
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 spider_eye 5
replaceitem block ~4 ~1 ~6 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~6 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~6 slot.container 3 bone 14
replaceitem block ~4 ~1 ~6 slot.container 4 string 13
replaceitem block ~4 ~1 ~6 slot.container 5 gunpowder 14
replaceitem block ~4 ~1 ~6 slot.container 9 iron_sword 1
replaceitem block ~4 ~1 ~6 slot.container 10 torch 17
replaceitem block ~4 ~1 ~6 slot.container 11 bread 12
replaceitem block ~4 ~1 ~6 slot.container 12 cooked_beef 11
replaceitem block ~4 ~1 ~6 slot.container 13 acacia_log 20
replaceitem block ~4 ~1 ~6 slot.container 14 iron_ingot 11
loot insert ~4 ~1 ~6 loot "rsf/savanna"
loot insert ~4 ~1 ~6 loot "chests/village/village_savanna_house"
summon pillager ~0 ~1 ~-1
summon llama ~-1 ~1 ~1
summon husk ~1 ~1 ~1
