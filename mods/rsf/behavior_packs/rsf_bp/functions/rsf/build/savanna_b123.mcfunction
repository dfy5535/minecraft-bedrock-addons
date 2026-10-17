# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1275/4224 | 主题内编号: b123/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·四角塔楼领主城堡复合体 (savanna_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 5格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 cobblestone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 acacia_planks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone []
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 air []
fill ~-5 ~-6 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-6 ~0 ~0 ~-6 ladder ["facing_direction"=3]
setblock ~-4 ~-6 ~5 torch []
setblock ~4 ~-6 ~-5 torch []
setblock ~4 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~-4 ~5 slot.container 0 leather 10
replaceitem block ~4 ~-4 ~5 slot.container 1 spider_eye 7
replaceitem block ~4 ~-4 ~5 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-4 ~5 slot.container 3 rotten_flesh 17
replaceitem block ~4 ~-4 ~5 slot.container 4 bone 16
replaceitem block ~4 ~-4 ~5 slot.container 5 string 15
replaceitem block ~4 ~-4 ~5 slot.container 9 golden_apple 4
replaceitem block ~4 ~-4 ~5 slot.container 10 iron_sword 1
replaceitem block ~4 ~-4 ~5 slot.container 11 torch 21
replaceitem block ~4 ~-4 ~5 slot.container 12 bread 16
replaceitem block ~4 ~-4 ~5 slot.container 13 cooked_beef 8
replaceitem block ~4 ~-4 ~5 slot.container 14 acacia_log 17
loot insert ~4 ~-4 ~5 loot "rsf/savanna"
loot insert ~4 ~-4 ~5 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~8 ~7 cobblestone []
fill ~-5 ~1 ~-6 ~5 ~7 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~10 ~-6 orange_terracotta []
setblock ~-6 ~11 ~-7 torch []
fill ~-6 ~1 ~6 ~-5 ~10 ~7 orange_terracotta []
setblock ~-6 ~11 ~6 torch []
fill ~5 ~1 ~-7 ~6 ~10 ~-6 orange_terracotta []
setblock ~5 ~11 ~-7 torch []
fill ~5 ~1 ~6 ~6 ~10 ~7 orange_terracotta []
setblock ~5 ~11 ~6 torch []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 orange_terracotta []
fill ~-6 ~9 ~-7 ~6 ~9 ~7 cobblestone_wall []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 air []
setblock ~-6 ~9 ~-7 acacia_log []
setblock ~-6 ~10 ~-7 torch []
setblock ~-6 ~9 ~7 acacia_log []
setblock ~-6 ~10 ~7 torch []
setblock ~6 ~9 ~-7 acacia_log []
setblock ~6 ~10 ~-7 torch []
setblock ~6 ~9 ~7 acacia_log []
setblock ~6 ~10 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 8x9x5) ---
fill ~8 ~0 ~9 ~8 ~8 ~9 acacia_log []
fill ~7 ~8 ~8 ~9 ~8 ~10 acacia_slab []
setblock ~8 ~9 ~9 orange_terracotta []
setblock ~8 ~10 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 11
replaceitem block ~5 ~1 ~6 slot.container 1 arrow 20
replaceitem block ~5 ~1 ~6 slot.container 2 leather 13
replaceitem block ~5 ~1 ~6 slot.container 3 spider_eye 10
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 9 emerald 4
replaceitem block ~5 ~1 ~6 slot.container 10 saddle 1
replaceitem block ~5 ~1 ~6 slot.container 11 golden_apple 4
replaceitem block ~5 ~1 ~6 slot.container 12 iron_sword 1
replaceitem block ~5 ~1 ~6 slot.container 13 torch 21
replaceitem block ~5 ~1 ~6 slot.container 14 bread 16
loot insert ~5 ~1 ~6 loot "rsf/savanna"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
