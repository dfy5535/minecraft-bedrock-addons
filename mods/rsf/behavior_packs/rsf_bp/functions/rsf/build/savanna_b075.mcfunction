# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1227/4224 | 主题内编号: b075/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·远古巨石环廊法阵 (savanna_totem_rotunda_henge)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pagoda_double] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 cobblestone [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 cobblestone [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 cobblestone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 acacia_planks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 acacia_planks []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 orange_terracotta []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-5 slot.container 0 leather 10
replaceitem block ~0 ~-3 ~-5 slot.container 1 spider_eye 7
replaceitem block ~0 ~-3 ~-5 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-5 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~-5 slot.container 4 bone 16
replaceitem block ~0 ~-3 ~-5 slot.container 5 string 15
replaceitem block ~0 ~-3 ~-5 slot.container 9 golden_apple 6
replaceitem block ~0 ~-3 ~-5 slot.container 10 iron_sword 1
replaceitem block ~0 ~-3 ~-5 slot.container 11 torch 16
replaceitem block ~0 ~-3 ~-5 slot.container 12 bread 11
replaceitem block ~0 ~-3 ~-5 slot.container 13 cooked_beef 10
replaceitem block ~0 ~-3 ~-5 slot.container 14 acacia_log 19
loot insert ~0 ~-3 ~-5 loot "rsf/savanna"
loot insert ~0 ~-3 ~-5 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 orange_terracotta []
fill ~-6 ~1 ~-7 ~-6 ~6 ~-7 acacia_log []
fill ~-6 ~1 ~7 ~-6 ~6 ~7 acacia_log []
fill ~-4 ~1 ~-7 ~-4 ~6 ~-7 acacia_log []
fill ~-4 ~1 ~7 ~-4 ~6 ~7 acacia_log []
fill ~-2 ~1 ~-7 ~-2 ~6 ~-7 acacia_log []
fill ~-2 ~1 ~7 ~-2 ~6 ~7 acacia_log []
fill ~0 ~1 ~-7 ~0 ~6 ~-7 acacia_log []
fill ~0 ~1 ~7 ~0 ~6 ~7 acacia_log []
fill ~2 ~1 ~-7 ~2 ~6 ~-7 acacia_log []
fill ~2 ~1 ~7 ~2 ~6 ~7 acacia_log []
fill ~4 ~1 ~-7 ~4 ~6 ~-7 acacia_log []
fill ~4 ~1 ~7 ~4 ~6 ~7 acacia_log []
fill ~6 ~1 ~-7 ~6 ~6 ~-7 acacia_log []
fill ~6 ~1 ~7 ~6 ~6 ~7 acacia_log []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 acacia_log []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 acacia_log []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 acacia_log []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 acacia_log []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 acacia_log []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 acacia_log []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 acacia_log []
fill ~6 ~1 ~1 ~6 ~6 ~1 acacia_log []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 acacia_log []
fill ~6 ~1 ~3 ~6 ~6 ~3 acacia_log []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 acacia_log []
fill ~6 ~1 ~5 ~6 ~6 ~5 acacia_log []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 acacia_slab []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 cobblestone []
fill ~-4 ~11 ~-5 ~4 ~11 ~5 cobblestone_slab []
setblock ~0 ~12 ~0 gold_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 acacia_log []
setblock ~0 ~4 ~-9 chiseled_stone_bricks []
setblock ~0 ~5 ~-9 torch []
fill ~0 ~0 ~9 ~0 ~3 ~9 acacia_log []
setblock ~0 ~4 ~9 chiseled_stone_bricks []
setblock ~0 ~5 ~9 torch []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 acacia_log []
setblock ~-8 ~4 ~0 chiseled_stone_bricks []
setblock ~-8 ~5 ~0 torch []
fill ~8 ~0 ~0 ~8 ~3 ~0 acacia_log []
setblock ~8 ~4 ~0 chiseled_stone_bricks []
setblock ~8 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~8 ~0 ~9 ~8 ~5 ~9 acacia_log []
fill ~7 ~5 ~8 ~9 ~5 ~10 acacia_slab []
setblock ~8 ~6 ~9 orange_terracotta []
setblock ~8 ~7 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~6 ~2 ~2 ~6 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 11
replaceitem block ~5 ~1 ~6 slot.container 1 arrow 20
replaceitem block ~5 ~1 ~6 slot.container 2 leather 13
replaceitem block ~5 ~1 ~6 slot.container 3 spider_eye 10
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 9 cooked_beef 10
replaceitem block ~5 ~1 ~6 slot.container 10 acacia_log 19
replaceitem block ~5 ~1 ~6 slot.container 11 iron_ingot 10
replaceitem block ~5 ~1 ~6 slot.container 12 gold_ingot 9
replaceitem block ~5 ~1 ~6 slot.container 13 emerald 9
replaceitem block ~5 ~1 ~6 slot.container 14 saddle 1
loot insert ~5 ~1 ~6 loot "rsf/savanna"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
