# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1188/4224 | 主题内编号: b036/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·下沉碑林地宫方尖碑 (savanna_obelisk_sunken_stele)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 acacia_planks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 acacia_planks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 acacia_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 stone_bricks []
fill ~-4 ~-6 ~-6 ~4 ~-1 ~6 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 acacia_planks []
setblock ~0 ~-7 ~0 gold_block []
fill ~0 ~-6 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 campfire []
setblock ~2 ~-6 ~0 campfire []
setblock ~0 ~-4 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-5 slot.container 0 gunpowder 8
replaceitem block ~0 ~-4 ~-5 slot.container 1 arrow 17
replaceitem block ~0 ~-4 ~-5 slot.container 2 leather 10
replaceitem block ~0 ~-4 ~-5 slot.container 3 spider_eye 7
replaceitem block ~0 ~-4 ~-5 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-4 ~-5 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-4 ~-5 slot.container 9 iron_ingot 7
replaceitem block ~0 ~-4 ~-5 slot.container 10 gold_ingot 6
replaceitem block ~0 ~-4 ~-5 slot.container 11 emerald 6
replaceitem block ~0 ~-4 ~-5 slot.container 12 saddle 1
replaceitem block ~0 ~-4 ~-5 slot.container 13 golden_apple 6
replaceitem block ~0 ~-4 ~-5 slot.container 14 iron_sword 1
loot insert ~0 ~-4 ~-5 loot "rsf/savanna"
loot insert ~0 ~-4 ~-5 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 acacia_planks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 stone_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 stone_bricks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 acacia_planks []
fill ~0 ~15 ~0 ~0 ~17 ~0 chiseled_stone_bricks []
setblock ~0 ~18 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 acacia_fence []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~6 ~0 ~7 ~6 ~6 ~7 acacia_log []
fill ~5 ~6 ~6 ~7 ~6 ~8 acacia_slab []
setblock ~6 ~7 ~7 orange_terracotta []
setblock ~6 ~8 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 arrow 20
replaceitem block ~-3 ~1 ~4 slot.container 1 leather 13
replaceitem block ~-3 ~1 ~4 slot.container 2 spider_eye 10
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 9 gold_ingot 9
replaceitem block ~-3 ~1 ~4 slot.container 10 emerald 9
replaceitem block ~-3 ~1 ~4 slot.container 11 saddle 1
replaceitem block ~-3 ~1 ~4 slot.container 12 golden_apple 2
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_sword 1
replaceitem block ~-3 ~1 ~4 slot.container 14 torch 19
loot insert ~-3 ~1 ~4 loot "rsf/savanna"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 spider_eye 5
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 3 bone 14
replaceitem block ~3 ~1 ~4 slot.container 4 string 13
replaceitem block ~3 ~1 ~4 slot.container 5 gunpowder 14
replaceitem block ~3 ~1 ~4 slot.container 9 gold_ingot 7
replaceitem block ~3 ~1 ~4 slot.container 10 emerald 7
replaceitem block ~3 ~1 ~4 slot.container 11 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 12 golden_apple 7
replaceitem block ~3 ~1 ~4 slot.container 13 iron_sword 1
replaceitem block ~3 ~1 ~4 slot.container 14 torch 17
loot insert ~3 ~1 ~4 loot "rsf/savanna"
loot insert ~3 ~1 ~4 loot "chests/village/village_savanna_house"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
