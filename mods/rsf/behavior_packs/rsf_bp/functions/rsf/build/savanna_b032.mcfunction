# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1184/4224 | 主题内编号: b032/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·断顶残垣古哨塔 (savanna_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 9x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-7 ~5 ~13 ~7 air [] replace leaves
fill ~-5 ~1 ~-7 ~5 ~13 ~7 air [] replace leaves2
fill ~-5 ~1 ~-7 ~5 ~13 ~7 air [] replace log
fill ~-5 ~1 ~-7 ~5 ~13 ~7 air [] replace log2
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 acacia_planks [] replace air
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 acacia_planks [] replace water
fill ~-4 ~0 ~-6 ~4 ~0 ~6 acacia_slab [] replace air
fill ~-3 ~0 ~-5 ~3 ~0 ~5 cobblestone []
fill ~-2 ~0 ~-4 ~2 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-3 ~-5 ~3 ~-1 ~5 hardened_clay []
fill ~-2 ~-4 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 stone_bricks []
setblock ~0 ~-5 ~0 hay_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 torch []
setblock ~2 ~-4 ~0 torch []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 string 15
replaceitem block ~0 ~-2 ~-3 slot.container 1 gunpowder 8
replaceitem block ~0 ~-2 ~-3 slot.container 2 arrow 17
replaceitem block ~0 ~-2 ~-3 slot.container 3 leather 10
replaceitem block ~0 ~-2 ~-3 slot.container 4 spider_eye 7
replaceitem block ~0 ~-2 ~-3 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-2 ~-3 slot.container 9 iron_sword 1
replaceitem block ~0 ~-2 ~-3 slot.container 10 torch 21
replaceitem block ~0 ~-2 ~-3 slot.container 11 bread 16
replaceitem block ~0 ~-2 ~-3 slot.container 12 cooked_beef 8
replaceitem block ~0 ~-2 ~-3 slot.container 13 acacia_log 17
replaceitem block ~0 ~-2 ~-3 slot.container 14 iron_ingot 8
loot insert ~0 ~-2 ~-3 loot "rsf/savanna"
loot insert ~0 ~-2 ~-3 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-5 ~3 ~9 ~5 acacia_planks []
fill ~-2 ~1 ~-4 ~2 ~8 ~4 air []
fill ~-3 ~1 ~-5 ~-3 ~9 ~-5 acacia_log []
fill ~-3 ~1 ~5 ~-3 ~9 ~5 acacia_log []
fill ~3 ~1 ~-5 ~3 ~9 ~-5 acacia_log []
fill ~3 ~1 ~5 ~3 ~9 ~5 acacia_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-3 ~2 ~0 acacia_fence []
setblock ~3 ~2 ~0 acacia_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-3 ~9 ~-5 ~3 ~9 ~5 acacia_slab []
fill ~-1 ~8 ~-1 ~2 ~9 ~2 air []
fill ~-3 ~8 ~-1 ~-3 ~9 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 acacia_log []
setblock ~0 ~4 ~-6 chiseled_stone_bricks []
setblock ~0 ~5 ~-6 torch []
fill ~0 ~0 ~6 ~0 ~3 ~6 acacia_log []
setblock ~0 ~4 ~6 chiseled_stone_bricks []
setblock ~0 ~5 ~6 torch []
fill ~-5 ~0 ~0 ~-5 ~3 ~0 acacia_log []
setblock ~-5 ~4 ~0 chiseled_stone_bricks []
setblock ~-5 ~5 ~0 torch []
fill ~5 ~0 ~0 ~5 ~3 ~0 acacia_log []
setblock ~5 ~4 ~0 chiseled_stone_bricks []
setblock ~5 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 5x6x4) ---
fill ~5 ~0 ~6 ~5 ~7 ~6 acacia_log []
fill ~4 ~7 ~5 ~6 ~7 ~7 acacia_slab []
setblock ~5 ~8 ~6 orange_terracotta []
setblock ~5 ~9 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-2 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-2 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-2 ~1 ~4 slot.container 2 string 10
replaceitem block ~-2 ~1 ~4 slot.container 3 gunpowder 11
replaceitem block ~-2 ~1 ~4 slot.container 4 arrow 20
replaceitem block ~-2 ~1 ~4 slot.container 5 leather 13
replaceitem block ~-2 ~1 ~4 slot.container 9 acacia_log 17
replaceitem block ~-2 ~1 ~4 slot.container 10 iron_ingot 8
replaceitem block ~-2 ~1 ~4 slot.container 11 gold_ingot 7
replaceitem block ~-2 ~1 ~4 slot.container 12 emerald 7
replaceitem block ~-2 ~1 ~4 slot.container 13 saddle 1
replaceitem block ~-2 ~1 ~4 slot.container 14 golden_apple 7
loot insert ~-2 ~1 ~4 loot "rsf/savanna"
setblock ~2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~4 slot.container 0 string 13
replaceitem block ~2 ~1 ~4 slot.container 1 gunpowder 14
replaceitem block ~2 ~1 ~4 slot.container 2 arrow 23
replaceitem block ~2 ~1 ~4 slot.container 3 leather 8
replaceitem block ~2 ~1 ~4 slot.container 4 spider_eye 5
replaceitem block ~2 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~2 ~1 ~4 slot.container 9 acacia_log 22
replaceitem block ~2 ~1 ~4 slot.container 10 iron_ingot 6
replaceitem block ~2 ~1 ~4 slot.container 11 gold_ingot 5
replaceitem block ~2 ~1 ~4 slot.container 12 emerald 5
replaceitem block ~2 ~1 ~4 slot.container 13 saddle 1
replaceitem block ~2 ~1 ~4 slot.container 14 golden_apple 5
loot insert ~2 ~1 ~4 loot "rsf/savanna"
loot insert ~2 ~1 ~4 loot "chests/village/village_savanna_house"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon llama ~0 ~-2 ~0
