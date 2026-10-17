# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1280/4224 | 主题内编号: b128/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·U型紫禁朝堂大殿与地底金库 (savanna_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 acacia_planks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 acacia_planks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 acacia_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobblestone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 acacia_planks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~5 anvil []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~5 slot.container 0 arrow 17
replaceitem block ~4 ~-3 ~5 slot.container 1 leather 10
replaceitem block ~4 ~-3 ~5 slot.container 2 spider_eye 7
replaceitem block ~4 ~-3 ~5 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-3 ~5 slot.container 4 rotten_flesh 17
replaceitem block ~4 ~-3 ~5 slot.container 5 bone 16
replaceitem block ~4 ~-3 ~5 slot.container 9 saddle 1
replaceitem block ~4 ~-3 ~5 slot.container 10 golden_apple 7
replaceitem block ~4 ~-3 ~5 slot.container 11 iron_sword 1
replaceitem block ~4 ~-3 ~5 slot.container 12 torch 17
replaceitem block ~4 ~-3 ~5 slot.container 13 bread 12
replaceitem block ~4 ~-3 ~5 slot.container 14 cooked_beef 11
loot insert ~4 ~-3 ~5 loot "rsf/savanna"
loot insert ~4 ~-3 ~5 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-7 ~6 ~8 ~7 acacia_planks []
fill ~-5 ~1 ~-6 ~5 ~7 ~6 air []
fill ~-2 ~1 ~-7 ~2 ~8 ~0 air []
fill ~-2 ~0 ~-7 ~2 ~0 ~0 stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-8 ~7 ~8 ~8 acacia_slab []
fill ~-5 ~9 ~-6 ~5 ~10 ~6 hardened_clay []
fill ~-6 ~11 ~-7 ~6 ~11 ~7 stone_brick_slab []
setblock ~0 ~12 ~0 chiseled_stone_bricks []
setblock ~0 ~13 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~9 ~2 acacia_planks []
fill ~6 ~1 ~-1 ~7 ~8 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~10 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~8 ~0 ~8 ~8 ~8 ~8 acacia_log []
fill ~7 ~8 ~7 ~9 ~8 ~9 acacia_slab []
setblock ~8 ~9 ~8 orange_terracotta []
setblock ~8 ~10 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-5 ~1 ~6 blast_furnace []
setblock ~-4 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~6 slot.container 2 string 10
replaceitem block ~-5 ~1 ~6 slot.container 3 gunpowder 11
replaceitem block ~-5 ~1 ~6 slot.container 4 arrow 20
replaceitem block ~-5 ~1 ~6 slot.container 5 leather 13
replaceitem block ~-5 ~1 ~6 slot.container 9 bread 16
replaceitem block ~-5 ~1 ~6 slot.container 10 cooked_beef 8
replaceitem block ~-5 ~1 ~6 slot.container 11 acacia_log 17
replaceitem block ~-5 ~1 ~6 slot.container 12 iron_ingot 8
replaceitem block ~-5 ~1 ~6 slot.container 13 gold_ingot 7
replaceitem block ~-5 ~1 ~6 slot.container 14 emerald 7
loot insert ~-5 ~1 ~6 loot "rsf/savanna"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 13
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 14
replaceitem block ~5 ~1 ~6 slot.container 2 arrow 23
replaceitem block ~5 ~1 ~6 slot.container 3 leather 8
replaceitem block ~5 ~1 ~6 slot.container 4 spider_eye 5
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 9 bread 14
replaceitem block ~5 ~1 ~6 slot.container 10 cooked_beef 13
replaceitem block ~5 ~1 ~6 slot.container 11 acacia_log 22
replaceitem block ~5 ~1 ~6 slot.container 12 iron_ingot 6
replaceitem block ~5 ~1 ~6 slot.container 13 gold_ingot 5
replaceitem block ~5 ~1 ~6 slot.container 14 emerald 5
loot insert ~5 ~1 ~6 loot "rsf/savanna"
loot insert ~5 ~1 ~6 loot "chests/village/village_savanna_house"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon llama ~0 ~-3 ~0
