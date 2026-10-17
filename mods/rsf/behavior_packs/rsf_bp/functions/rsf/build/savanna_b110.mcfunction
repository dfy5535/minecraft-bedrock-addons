# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1262/4224 | 主题内编号: b110/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·双子附魔与酿造实验楼 (savanna_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 acacia_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 coarse_dirt []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 acacia_planks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cobblestone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 string 15
replaceitem block ~4 ~-2 ~3 slot.container 1 gunpowder 8
replaceitem block ~4 ~-2 ~3 slot.container 2 arrow 17
replaceitem block ~4 ~-2 ~3 slot.container 3 leather 10
replaceitem block ~4 ~-2 ~3 slot.container 4 spider_eye 7
replaceitem block ~4 ~-2 ~3 slot.container 5 ender_pearl 6
replaceitem block ~4 ~-2 ~3 slot.container 9 bread 15
replaceitem block ~4 ~-2 ~3 slot.container 10 cooked_beef 14
replaceitem block ~4 ~-2 ~3 slot.container 11 acacia_log 16
replaceitem block ~4 ~-2 ~3 slot.container 12 iron_ingot 7
replaceitem block ~4 ~-2 ~3 slot.container 13 gold_ingot 6
replaceitem block ~4 ~-2 ~3 slot.container 14 emerald 6
loot insert ~4 ~-2 ~3 loot "rsf/savanna"
loot insert ~4 ~-2 ~3 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 stone_bricks []
fill ~2 ~1 ~-5 ~6 ~8 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 acacia_planks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 acacia_slab []
fill ~-5 ~8 ~-4 ~5 ~9 ~4 cobblestone []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 cobblestone_slab []
setblock ~0 ~11 ~0 gold_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 cobblestone_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 8x6x2) ---
fill ~8 ~0 ~6 ~8 ~5 ~6 acacia_log []
fill ~7 ~5 ~5 ~9 ~5 ~7 acacia_slab []
setblock ~8 ~6 ~6 orange_terracotta []
setblock ~8 ~7 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 spider_eye 10
replaceitem block ~-5 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 4 string 10
replaceitem block ~-5 ~1 ~4 slot.container 5 gunpowder 11
replaceitem block ~-5 ~1 ~4 slot.container 9 saddle 1
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 4
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_sword 1
replaceitem block ~-5 ~1 ~4 slot.container 12 torch 21
replaceitem block ~-5 ~1 ~4 slot.container 13 bread 16
replaceitem block ~-5 ~1 ~4 slot.container 14 cooked_beef 8
loot insert ~-5 ~1 ~4 loot "rsf/savanna"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 1 bone 14
replaceitem block ~5 ~1 ~4 slot.container 2 string 13
replaceitem block ~5 ~1 ~4 slot.container 3 gunpowder 14
replaceitem block ~5 ~1 ~4 slot.container 4 arrow 23
replaceitem block ~5 ~1 ~4 slot.container 5 leather 8
replaceitem block ~5 ~1 ~4 slot.container 9 saddle 1
replaceitem block ~5 ~1 ~4 slot.container 10 golden_apple 2
replaceitem block ~5 ~1 ~4 slot.container 11 iron_sword 1
replaceitem block ~5 ~1 ~4 slot.container 12 torch 19
replaceitem block ~5 ~1 ~4 slot.container 13 bread 14
replaceitem block ~5 ~1 ~4 slot.container 14 cooked_beef 13
loot insert ~5 ~1 ~4 loot "rsf/savanna"
loot insert ~5 ~1 ~4 loot "chests/village/village_savanna_house"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon llama ~0 ~-2 ~0
