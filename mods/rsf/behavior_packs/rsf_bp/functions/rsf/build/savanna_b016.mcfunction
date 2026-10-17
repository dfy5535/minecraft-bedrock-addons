# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1168/4224 | 主题内编号: b016/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·要塞地底重装暗牢 (savanna_dungeon_citadel_undercroft)
# 建筑构造: 主体[fortress_citadel] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 acacia_planks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 acacia_planks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 acacia_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobblestone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 acacia_planks []
fill ~-5 ~-5 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-5 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-5 ~0 torch []
setblock ~4 ~-5 ~0 torch []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 spider_eye 7
replaceitem block ~0 ~-3 ~5 slot.container 1 ender_pearl 6
replaceitem block ~0 ~-3 ~5 slot.container 2 rotten_flesh 17
replaceitem block ~0 ~-3 ~5 slot.container 3 bone 16
replaceitem block ~0 ~-3 ~5 slot.container 4 string 15
replaceitem block ~0 ~-3 ~5 slot.container 5 gunpowder 8
replaceitem block ~0 ~-3 ~5 slot.container 9 saddle 1
replaceitem block ~0 ~-3 ~5 slot.container 10 golden_apple 7
replaceitem block ~0 ~-3 ~5 slot.container 11 iron_sword 1
replaceitem block ~0 ~-3 ~5 slot.container 12 torch 17
replaceitem block ~0 ~-3 ~5 slot.container 13 bread 12
replaceitem block ~0 ~-3 ~5 slot.container 14 cooked_beef 11
loot insert ~0 ~-3 ~5 loot "rsf/savanna"
loot insert ~0 ~-3 ~5 loot "chests/village/village_savanna_house"
setblock ~0 ~-3 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-5 slot.container 0 spider_eye 5
replaceitem block ~0 ~-3 ~-5 slot.container 1 ender_pearl 4
replaceitem block ~0 ~-3 ~-5 slot.container 2 rotten_flesh 15
replaceitem block ~0 ~-3 ~-5 slot.container 3 bone 14
replaceitem block ~0 ~-3 ~-5 slot.container 4 string 13
replaceitem block ~0 ~-3 ~-5 slot.container 5 gunpowder 14
replaceitem block ~0 ~-3 ~-5 slot.container 9 saddle 1
replaceitem block ~0 ~-3 ~-5 slot.container 10 golden_apple 6
replaceitem block ~0 ~-3 ~-5 slot.container 11 iron_sword 1
replaceitem block ~0 ~-3 ~-5 slot.container 12 torch 16
replaceitem block ~0 ~-3 ~-5 slot.container 13 bread 11
replaceitem block ~0 ~-3 ~-5 slot.container 14 cooked_beef 10
loot insert ~0 ~-3 ~-5 loot "rsf/savanna"
loot insert ~0 ~-3 ~-5 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~6 ~7 acacia_planks []
fill ~-5 ~1 ~-6 ~5 ~5 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~8 ~-6 stone_bricks []
setblock ~-6 ~9 ~-7 torch []
fill ~-6 ~1 ~6 ~-5 ~8 ~7 stone_bricks []
setblock ~-6 ~9 ~6 torch []
fill ~5 ~1 ~-7 ~6 ~8 ~-6 stone_bricks []
setblock ~5 ~9 ~-7 torch []
fill ~5 ~1 ~6 ~6 ~8 ~7 stone_bricks []
setblock ~5 ~9 ~6 torch []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-6 ~-7 ~7 ~6 acacia_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-6 ~7 ~7 ~6 acacia_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-5 ~-6 ~8 ~5 acacia_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-5 ~6 ~8 ~5 acacia_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~5 ~8 ~5 acacia_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 acacia_fence []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 8x10x3) ---
fill ~8 ~0 ~10 ~8 ~6 ~10 acacia_log []
fill ~7 ~6 ~9 ~9 ~6 ~11 acacia_slab []
setblock ~8 ~7 ~10 orange_terracotta []
setblock ~8 ~8 ~10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~6 slot.container 2 string 10
replaceitem block ~-5 ~1 ~6 slot.container 3 gunpowder 11
replaceitem block ~-5 ~1 ~6 slot.container 4 arrow 20
replaceitem block ~-5 ~1 ~6 slot.container 5 leather 13
replaceitem block ~-5 ~1 ~6 slot.container 9 gold_ingot 10
replaceitem block ~-5 ~1 ~6 slot.container 10 emerald 3
replaceitem block ~-5 ~1 ~6 slot.container 11 saddle 1
replaceitem block ~-5 ~1 ~6 slot.container 12 golden_apple 3
replaceitem block ~-5 ~1 ~6 slot.container 13 iron_sword 1
replaceitem block ~-5 ~1 ~6 slot.container 14 torch 20
loot insert ~-5 ~1 ~6 loot "rsf/savanna"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 13
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 14
replaceitem block ~5 ~1 ~6 slot.container 2 arrow 23
replaceitem block ~5 ~1 ~6 slot.container 3 leather 8
replaceitem block ~5 ~1 ~6 slot.container 4 spider_eye 5
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 9 gold_ingot 8
replaceitem block ~5 ~1 ~6 slot.container 10 emerald 8
replaceitem block ~5 ~1 ~6 slot.container 11 saddle 1
replaceitem block ~5 ~1 ~6 slot.container 12 golden_apple 1
replaceitem block ~5 ~1 ~6 slot.container 13 iron_sword 1
replaceitem block ~5 ~1 ~6 slot.container 14 torch 18
loot insert ~5 ~1 ~6 loot "rsf/savanna"
loot insert ~5 ~1 ~6 loot "chests/village/village_savanna_house"
summon pillager ~0 ~1 ~-1
summon llama ~-1 ~1 ~1
summon husk ~1 ~1 ~1
