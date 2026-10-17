# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1198/4224 | 主题内编号: b046/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·要塞校场比武演武台 (savanna_arena_fortress_yard)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log2
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 acacia_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 coarse_dirt []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 acacia_planks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 cobblestone []
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~5 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~5 slot.container 0 string 15
replaceitem block ~4 ~-2 ~5 slot.container 1 gunpowder 8
replaceitem block ~4 ~-2 ~5 slot.container 2 arrow 17
replaceitem block ~4 ~-2 ~5 slot.container 3 leather 10
replaceitem block ~4 ~-2 ~5 slot.container 4 spider_eye 7
replaceitem block ~4 ~-2 ~5 slot.container 5 ender_pearl 6
replaceitem block ~4 ~-2 ~5 slot.container 9 iron_sword 1
replaceitem block ~4 ~-2 ~5 slot.container 10 torch 21
replaceitem block ~4 ~-2 ~5 slot.container 11 bread 16
replaceitem block ~4 ~-2 ~5 slot.container 12 cooked_beef 8
replaceitem block ~4 ~-2 ~5 slot.container 13 acacia_log 17
replaceitem block ~4 ~-2 ~5 slot.container 14 iron_ingot 8
loot insert ~4 ~-2 ~5 loot "rsf/savanna"
loot insert ~4 ~-2 ~5 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~6 ~7 stone_bricks []
fill ~-5 ~1 ~-6 ~5 ~5 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~8 ~-6 acacia_planks []
setblock ~-6 ~9 ~-7 lantern []
fill ~-6 ~1 ~6 ~-5 ~8 ~7 acacia_planks []
setblock ~-6 ~9 ~6 lantern []
fill ~5 ~1 ~-7 ~6 ~8 ~-6 acacia_planks []
setblock ~5 ~9 ~-7 lantern []
fill ~5 ~1 ~6 ~6 ~8 ~7 acacia_planks []
setblock ~5 ~9 ~6 lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 acacia_planks []
fill ~-6 ~7 ~-7 ~6 ~7 ~7 acacia_fence []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 air []
setblock ~-6 ~7 ~-7 acacia_log []
setblock ~-6 ~8 ~-7 lantern []
setblock ~-6 ~7 ~7 acacia_log []
setblock ~-6 ~8 ~7 lantern []
setblock ~6 ~7 ~-7 acacia_log []
setblock ~6 ~8 ~-7 lantern []
setblock ~6 ~7 ~7 acacia_log []
setblock ~6 ~8 ~7 lantern []

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

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 8x10x3) ---
fill ~8 ~0 ~10 ~8 ~6 ~10 acacia_log []
fill ~7 ~6 ~9 ~9 ~6 ~11 acacia_slab []
setblock ~8 ~7 ~10 orange_terracotta []
setblock ~8 ~8 ~10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 spider_eye 10
replaceitem block ~-5 ~1 ~6 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~6 slot.container 4 string 10
replaceitem block ~-5 ~1 ~6 slot.container 5 gunpowder 11
replaceitem block ~-5 ~1 ~6 slot.container 9 gold_ingot 5
replaceitem block ~-5 ~1 ~6 slot.container 10 emerald 5
replaceitem block ~-5 ~1 ~6 slot.container 11 saddle 1
replaceitem block ~-5 ~1 ~6 slot.container 12 golden_apple 5
replaceitem block ~-5 ~1 ~6 slot.container 13 iron_sword 1
replaceitem block ~-5 ~1 ~6 slot.container 14 torch 22
loot insert ~-5 ~1 ~6 loot "rsf/savanna"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 1 bone 14
replaceitem block ~5 ~1 ~6 slot.container 2 string 13
replaceitem block ~5 ~1 ~6 slot.container 3 gunpowder 14
replaceitem block ~5 ~1 ~6 slot.container 4 arrow 23
replaceitem block ~5 ~1 ~6 slot.container 5 leather 8
replaceitem block ~5 ~1 ~6 slot.container 9 gold_ingot 10
replaceitem block ~5 ~1 ~6 slot.container 10 emerald 3
replaceitem block ~5 ~1 ~6 slot.container 11 saddle 1
replaceitem block ~5 ~1 ~6 slot.container 12 golden_apple 3
replaceitem block ~5 ~1 ~6 slot.container 13 iron_sword 1
replaceitem block ~5 ~1 ~6 slot.container 14 torch 20
loot insert ~5 ~1 ~6 loot "rsf/savanna"
loot insert ~5 ~1 ~6 loot "chests/village/village_savanna_house"
summon pillager ~0 ~1 ~-1
summon llama ~-1 ~1 ~1
summon husk ~1 ~1 ~1
