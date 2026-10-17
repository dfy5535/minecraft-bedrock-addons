# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1194/4224 | 主题内编号: b042/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·地底铁栏死斗深坑 (savanna_arena_sunken_pit)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[prison_dungeon] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 acacia_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 coarse_dirt []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 acacia_planks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-5 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-5 ~4 lantern []
setblock ~3 ~-5 ~-4 lantern []
setblock ~3 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-3 ~4 slot.container 0 arrow 17
replaceitem block ~3 ~-3 ~4 slot.container 1 leather 10
replaceitem block ~3 ~-3 ~4 slot.container 2 spider_eye 7
replaceitem block ~3 ~-3 ~4 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~3 ~-3 ~4 slot.container 5 bone 16
replaceitem block ~3 ~-3 ~4 slot.container 9 gold_ingot 10
replaceitem block ~3 ~-3 ~4 slot.container 10 emerald 3
replaceitem block ~3 ~-3 ~4 slot.container 11 saddle 1
replaceitem block ~3 ~-3 ~4 slot.container 12 golden_apple 3
replaceitem block ~3 ~-3 ~4 slot.container 13 iron_sword 1
replaceitem block ~3 ~-3 ~4 slot.container 14 torch 20
loot insert ~3 ~-3 ~4 loot "rsf/savanna"
loot insert ~3 ~-3 ~4 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 acacia_planks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 acacia_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~5 ~-6 ~-5 ~7 ~-6 acacia_log []
setblock ~-5 ~8 ~-6 lantern []
fill ~-5 ~5 ~6 ~-5 ~7 ~6 acacia_log []
setblock ~-5 ~8 ~6 lantern []
fill ~5 ~5 ~-6 ~5 ~7 ~-6 acacia_log []
setblock ~5 ~8 ~-6 lantern []
fill ~5 ~5 ~6 ~5 ~7 ~6 acacia_log []
setblock ~5 ~8 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 stone_bricks []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~7 ~0 ~8 ~7 ~7 ~8 acacia_log []
fill ~6 ~7 ~7 ~8 ~7 ~9 acacia_slab []
setblock ~7 ~8 ~8 orange_terracotta []
setblock ~7 ~9 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 gold_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 string 10
replaceitem block ~-4 ~1 ~5 slot.container 1 gunpowder 11
replaceitem block ~-4 ~1 ~5 slot.container 2 arrow 20
replaceitem block ~-4 ~1 ~5 slot.container 3 leather 13
replaceitem block ~-4 ~1 ~5 slot.container 4 spider_eye 10
replaceitem block ~-4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 9 acacia_log 20
replaceitem block ~-4 ~1 ~5 slot.container 10 iron_ingot 11
replaceitem block ~-4 ~1 ~5 slot.container 11 gold_ingot 10
replaceitem block ~-4 ~1 ~5 slot.container 12 emerald 3
replaceitem block ~-4 ~1 ~5 slot.container 13 saddle 1
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 3
loot insert ~-4 ~1 ~5 loot "rsf/savanna"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 arrow 23
replaceitem block ~4 ~1 ~5 slot.container 1 leather 8
replaceitem block ~4 ~1 ~5 slot.container 2 spider_eye 5
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 5 bone 14
replaceitem block ~4 ~1 ~5 slot.container 9 acacia_log 18
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 12 emerald 8
replaceitem block ~4 ~1 ~5 slot.container 13 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 1
loot insert ~4 ~1 ~5 loot "rsf/savanna"
loot insert ~4 ~1 ~5 loot "chests/village/village_savanna_house"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
