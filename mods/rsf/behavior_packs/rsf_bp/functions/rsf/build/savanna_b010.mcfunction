# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1162/4224 | 主题内编号: b010/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·十字交叉深层地牢 (savanna_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x17 | 地上高度 5格 | 地下深度 5格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 acacia_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 coarse_dirt []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 acacia_planks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 lantern []
setblock ~4 ~-6 ~0 lantern []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-4 ~5 slot.container 1 bone 16
replaceitem block ~0 ~-4 ~5 slot.container 2 string 15
replaceitem block ~0 ~-4 ~5 slot.container 3 gunpowder 8
replaceitem block ~0 ~-4 ~5 slot.container 4 arrow 17
replaceitem block ~0 ~-4 ~5 slot.container 5 leather 10
replaceitem block ~0 ~-4 ~5 slot.container 9 iron_sword 1
replaceitem block ~0 ~-4 ~5 slot.container 10 torch 16
replaceitem block ~0 ~-4 ~5 slot.container 11 bread 11
replaceitem block ~0 ~-4 ~5 slot.container 12 cooked_beef 10
replaceitem block ~0 ~-4 ~5 slot.container 13 acacia_log 19
replaceitem block ~0 ~-4 ~5 slot.container 14 iron_ingot 10
loot insert ~0 ~-4 ~5 loot "rsf/savanna"
loot insert ~0 ~-4 ~5 loot "chests/village/village_savanna_house"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-4 ~-5 slot.container 1 bone 14
replaceitem block ~0 ~-4 ~-5 slot.container 2 string 13
replaceitem block ~0 ~-4 ~-5 slot.container 3 gunpowder 14
replaceitem block ~0 ~-4 ~-5 slot.container 4 arrow 23
replaceitem block ~0 ~-4 ~-5 slot.container 5 leather 8
replaceitem block ~0 ~-4 ~-5 slot.container 9 iron_sword 1
replaceitem block ~0 ~-4 ~-5 slot.container 10 torch 22
replaceitem block ~0 ~-4 ~-5 slot.container 11 bread 10
replaceitem block ~0 ~-4 ~-5 slot.container 12 cooked_beef 9
replaceitem block ~0 ~-4 ~-5 slot.container 13 acacia_log 18
replaceitem block ~0 ~-4 ~-5 slot.container 14 iron_ingot 9
loot insert ~0 ~-4 ~-5 loot "rsf/savanna"
loot insert ~0 ~-4 ~-5 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~5 ~7 stone_bricks []
fill ~-6 ~1 ~-2 ~6 ~5 ~2 stone_bricks []
fill ~-1 ~1 ~-6 ~1 ~4 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~4 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 acacia_fence []
setblock ~6 ~2 ~0 acacia_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~5 ~-7 ~6 ~5 ~7 acacia_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-6 ~4 ~-1 ~-6 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 stone_bricks []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 8x10x2) ---
fill ~8 ~0 ~10 ~8 ~5 ~10 acacia_log []
fill ~7 ~5 ~9 ~9 ~5 ~11 acacia_slab []
setblock ~8 ~6 ~10 orange_terracotta []
setblock ~8 ~7 ~10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 gold_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 string 10
replaceitem block ~-5 ~1 ~6 slot.container 1 gunpowder 11
replaceitem block ~-5 ~1 ~6 slot.container 2 arrow 20
replaceitem block ~-5 ~1 ~6 slot.container 3 leather 13
replaceitem block ~-5 ~1 ~6 slot.container 4 spider_eye 10
replaceitem block ~-5 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 9 saddle 1
replaceitem block ~-5 ~1 ~6 slot.container 10 golden_apple 2
replaceitem block ~-5 ~1 ~6 slot.container 11 iron_sword 1
replaceitem block ~-5 ~1 ~6 slot.container 12 torch 19
replaceitem block ~-5 ~1 ~6 slot.container 13 bread 14
replaceitem block ~-5 ~1 ~6 slot.container 14 cooked_beef 13
loot insert ~-5 ~1 ~6 loot "rsf/savanna"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 arrow 23
replaceitem block ~5 ~1 ~6 slot.container 1 leather 8
replaceitem block ~5 ~1 ~6 slot.container 2 spider_eye 5
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 5 bone 14
replaceitem block ~5 ~1 ~6 slot.container 9 saddle 1
replaceitem block ~5 ~1 ~6 slot.container 10 golden_apple 7
replaceitem block ~5 ~1 ~6 slot.container 11 iron_sword 1
replaceitem block ~5 ~1 ~6 slot.container 12 torch 17
replaceitem block ~5 ~1 ~6 slot.container 13 bread 12
replaceitem block ~5 ~1 ~6 slot.container 14 cooked_beef 11
loot insert ~5 ~1 ~6 loot "rsf/savanna"
loot insert ~5 ~1 ~6 loot "chests/village/village_savanna_house"
summon pillager ~0 ~1 ~-1
summon llama ~-1 ~1 ~1
summon husk ~1 ~1 ~1
