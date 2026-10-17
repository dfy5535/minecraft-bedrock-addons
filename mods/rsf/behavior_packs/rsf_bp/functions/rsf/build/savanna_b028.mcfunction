# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1180/4224 | 主题内编号: b028/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·重檐挑角古钟楼 (savanna_tower_pagoda_bell)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 2格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log2
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 acacia_planks [] replace air
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 acacia_planks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 acacia_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-5 ~4 ~-1 ~5 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~5 ~5 acacia_planks []
fill ~-3 ~1 ~-4 ~3 ~4 ~4 air []
fill ~-5 ~5 ~-6 ~5 ~5 ~6 acacia_slab []
fill ~-3 ~6 ~-4 ~3 ~10 ~4 hardened_clay []
fill ~-2 ~6 ~-3 ~2 ~9 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~6 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~10 ~-6 ~5 ~10 ~6 acacia_slab []
fill ~-3 ~11 ~-4 ~3 ~12 ~4 hardened_clay []
fill ~-4 ~13 ~-5 ~4 ~13 ~5 stone_brick_slab []
setblock ~0 ~14 ~0 chiseled_stone_bricks []
setblock ~0 ~15 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 acacia_planks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 6x8x5) ---
fill ~6 ~0 ~8 ~6 ~8 ~8 acacia_log []
fill ~5 ~8 ~7 ~7 ~8 ~9 acacia_slab []
setblock ~6 ~9 ~8 orange_terracotta []
setblock ~6 ~10 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~5 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 chiseled_stone_bricks []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 arrow 20
replaceitem block ~-3 ~1 ~4 slot.container 1 leather 13
replaceitem block ~-3 ~1 ~4 slot.container 2 spider_eye 10
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 9 bread 14
replaceitem block ~-3 ~1 ~4 slot.container 10 cooked_beef 13
replaceitem block ~-3 ~1 ~4 slot.container 11 acacia_log 22
replaceitem block ~-3 ~1 ~4 slot.container 12 iron_ingot 6
replaceitem block ~-3 ~1 ~4 slot.container 13 gold_ingot 5
replaceitem block ~-3 ~1 ~4 slot.container 14 emerald 5
loot insert ~-3 ~1 ~4 loot "rsf/savanna"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 spider_eye 5
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 3 bone 14
replaceitem block ~3 ~1 ~4 slot.container 4 string 13
replaceitem block ~3 ~1 ~4 slot.container 5 gunpowder 14
replaceitem block ~3 ~1 ~4 slot.container 9 bread 12
replaceitem block ~3 ~1 ~4 slot.container 10 cooked_beef 11
replaceitem block ~3 ~1 ~4 slot.container 11 acacia_log 20
replaceitem block ~3 ~1 ~4 slot.container 12 iron_ingot 11
replaceitem block ~3 ~1 ~4 slot.container 13 gold_ingot 10
replaceitem block ~3 ~1 ~4 slot.container 14 emerald 3
loot insert ~3 ~1 ~4 loot "rsf/savanna"
loot insert ~3 ~1 ~4 loot "chests/village/village_savanna_house"
summon pillager ~0 ~1 ~-1
summon llama ~-1 ~1 ~1
summon husk ~1 ~1 ~1
