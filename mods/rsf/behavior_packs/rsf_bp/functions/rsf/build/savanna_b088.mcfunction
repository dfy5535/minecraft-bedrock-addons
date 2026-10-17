# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1240/4224 | 主题内编号: b088/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·矿车铁轨转运仓库 (savanna_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 11x17 | 地上高度 6格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-9 ~6 ~10 ~9 air [] replace leaves
fill ~-6 ~1 ~-9 ~6 ~10 ~9 air [] replace leaves2
fill ~-6 ~1 ~-9 ~6 ~10 ~9 air [] replace log
fill ~-6 ~1 ~-9 ~6 ~10 ~9 air [] replace log2
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 acacia_planks [] replace air
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 acacia_planks [] replace water
fill ~-5 ~0 ~-8 ~5 ~0 ~8 acacia_slab [] replace air
fill ~-4 ~0 ~-7 ~4 ~0 ~7 cobblestone []
fill ~-3 ~0 ~-6 ~3 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-6 ~3 ~-1 ~6 hardened_clay []
fill ~-2 ~-4 ~-5 ~2 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~5 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~5 slot.container 0 arrow 17
replaceitem block ~2 ~-2 ~5 slot.container 1 leather 10
replaceitem block ~2 ~-2 ~5 slot.container 2 spider_eye 7
replaceitem block ~2 ~-2 ~5 slot.container 3 ender_pearl 6
replaceitem block ~2 ~-2 ~5 slot.container 4 rotten_flesh 17
replaceitem block ~2 ~-2 ~5 slot.container 5 bone 16
replaceitem block ~2 ~-2 ~5 slot.container 9 gold_ingot 8
replaceitem block ~2 ~-2 ~5 slot.container 10 emerald 8
replaceitem block ~2 ~-2 ~5 slot.container 11 saddle 1
replaceitem block ~2 ~-2 ~5 slot.container 12 golden_apple 1
replaceitem block ~2 ~-2 ~5 slot.container 13 iron_sword 1
replaceitem block ~2 ~-2 ~5 slot.container 14 torch 18
loot insert ~2 ~-2 ~5 loot "rsf/savanna"
loot insert ~2 ~-2 ~5 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-7 ~4 ~6 ~7 acacia_planks []
fill ~-3 ~1 ~-6 ~3 ~5 ~6 air []
fill ~-4 ~1 ~-7 ~-4 ~6 ~-7 acacia_log []
fill ~-4 ~1 ~7 ~-4 ~6 ~7 acacia_log []
fill ~4 ~1 ~-7 ~4 ~6 ~-7 acacia_log []
fill ~4 ~1 ~7 ~4 ~6 ~7 acacia_log []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-4 ~2 ~0 acacia_fence []
setblock ~4 ~2 ~0 acacia_fence []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 acacia_planks []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 cobblestone []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 gold_block []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 stone_bricks []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 torch []
setblock ~2 ~4 ~-10 torch []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 6x10x5) ---
fill ~6 ~0 ~10 ~6 ~8 ~10 acacia_log []
fill ~5 ~8 ~9 ~7 ~8 ~11 acacia_slab []
setblock ~6 ~9 ~10 orange_terracotta []
setblock ~6 ~10 ~10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-3 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-3 ~1 ~6 slot.container 1 bone 11
replaceitem block ~-3 ~1 ~6 slot.container 2 string 10
replaceitem block ~-3 ~1 ~6 slot.container 3 gunpowder 11
replaceitem block ~-3 ~1 ~6 slot.container 4 arrow 20
replaceitem block ~-3 ~1 ~6 slot.container 5 leather 13
replaceitem block ~-3 ~1 ~6 slot.container 9 bread 11
replaceitem block ~-3 ~1 ~6 slot.container 10 cooked_beef 10
replaceitem block ~-3 ~1 ~6 slot.container 11 acacia_log 19
replaceitem block ~-3 ~1 ~6 slot.container 12 iron_ingot 10
replaceitem block ~-3 ~1 ~6 slot.container 13 gold_ingot 9
replaceitem block ~-3 ~1 ~6 slot.container 14 emerald 9
loot insert ~-3 ~1 ~6 loot "rsf/savanna"
setblock ~3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~6 slot.container 0 string 13
replaceitem block ~3 ~1 ~6 slot.container 1 gunpowder 14
replaceitem block ~3 ~1 ~6 slot.container 2 arrow 23
replaceitem block ~3 ~1 ~6 slot.container 3 leather 8
replaceitem block ~3 ~1 ~6 slot.container 4 spider_eye 5
replaceitem block ~3 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~6 slot.container 9 bread 16
replaceitem block ~3 ~1 ~6 slot.container 10 cooked_beef 8
replaceitem block ~3 ~1 ~6 slot.container 11 acacia_log 17
replaceitem block ~3 ~1 ~6 slot.container 12 iron_ingot 8
replaceitem block ~3 ~1 ~6 slot.container 13 gold_ingot 7
replaceitem block ~3 ~1 ~6 slot.container 14 emerald 7
loot insert ~3 ~1 ~6 loot "rsf/savanna"
loot insert ~3 ~1 ~6 loot "chests/village/village_savanna_house"
summon pillager ~0 ~1 ~-1
summon llama ~-1 ~1 ~1
summon husk ~1 ~1 ~1
