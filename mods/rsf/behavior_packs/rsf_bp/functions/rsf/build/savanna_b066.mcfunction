# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1218/4224 | 主题内编号: b066/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·崩塌角楼古堡残垣 (savanna_ruin_shattered_keep)
# 建筑构造: 主体[fortress_citadel] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 acacia_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 coarse_dirt []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 acacia_planks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-4 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-4 ~4 lantern []
setblock ~3 ~-4 ~-4 lantern []
setblock ~3 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-2 ~4 slot.container 0 arrow 17
replaceitem block ~3 ~-2 ~4 slot.container 1 leather 10
replaceitem block ~3 ~-2 ~4 slot.container 2 spider_eye 7
replaceitem block ~3 ~-2 ~4 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-2 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~3 ~-2 ~4 slot.container 5 bone 16
replaceitem block ~3 ~-2 ~4 slot.container 9 saddle 1
replaceitem block ~3 ~-2 ~4 slot.container 10 golden_apple 4
replaceitem block ~3 ~-2 ~4 slot.container 11 iron_sword 1
replaceitem block ~3 ~-2 ~4 slot.container 12 torch 21
replaceitem block ~3 ~-2 ~4 slot.container 13 bread 16
replaceitem block ~3 ~-2 ~4 slot.container 14 cooked_beef 8
loot insert ~3 ~-2 ~4 loot "rsf/savanna"
loot insert ~3 ~-2 ~4 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~9 ~-5 acacia_planks []
setblock ~-5 ~10 ~-6 lantern []
fill ~-5 ~1 ~5 ~-4 ~9 ~6 acacia_planks []
setblock ~-5 ~10 ~5 lantern []
fill ~4 ~1 ~-6 ~5 ~9 ~-5 acacia_planks []
setblock ~4 ~10 ~-6 lantern []
fill ~4 ~1 ~5 ~5 ~9 ~6 acacia_planks []
setblock ~4 ~10 ~5 lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 acacia_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-5 ~6 ~-1 ~-5 ~7 ~1 air []

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

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~7 ~0 ~8 ~7 ~6 ~8 acacia_log []
fill ~6 ~6 ~7 ~8 ~6 ~9 acacia_slab []
setblock ~7 ~7 ~8 orange_terracotta []
setblock ~7 ~8 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 string 10
replaceitem block ~-4 ~1 ~5 slot.container 1 gunpowder 11
replaceitem block ~-4 ~1 ~5 slot.container 2 arrow 20
replaceitem block ~-4 ~1 ~5 slot.container 3 leather 13
replaceitem block ~-4 ~1 ~5 slot.container 4 spider_eye 10
replaceitem block ~-4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 9 gold_ingot 4
replaceitem block ~-4 ~1 ~5 slot.container 10 emerald 4
replaceitem block ~-4 ~1 ~5 slot.container 11 saddle 1
replaceitem block ~-4 ~1 ~5 slot.container 12 golden_apple 4
replaceitem block ~-4 ~1 ~5 slot.container 13 iron_sword 1
replaceitem block ~-4 ~1 ~5 slot.container 14 torch 21
loot insert ~-4 ~1 ~5 loot "rsf/savanna"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 arrow 23
replaceitem block ~4 ~1 ~5 slot.container 1 leather 8
replaceitem block ~4 ~1 ~5 slot.container 2 spider_eye 5
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 5 bone 14
replaceitem block ~4 ~1 ~5 slot.container 9 gold_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 10 emerald 9
replaceitem block ~4 ~1 ~5 slot.container 11 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 2
replaceitem block ~4 ~1 ~5 slot.container 13 iron_sword 1
replaceitem block ~4 ~1 ~5 slot.container 14 torch 19
loot insert ~4 ~1 ~5 loot "rsf/savanna"
loot insert ~4 ~1 ~5 loot "chests/village/village_savanna_house"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
