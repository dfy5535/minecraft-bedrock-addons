# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1200/4224 | 主题内编号: b048/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·阶梯王座巅峰试炼台 (savanna_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 acacia_planks [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 acacia_planks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 acacia_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobblestone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 hardened_clay []
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 stone_bricks []
setblock ~0 ~-5 ~0 hay_block []
fill ~0 ~-4 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 torch []
setblock ~2 ~-4 ~0 torch []
setblock ~0 ~-2 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-5 slot.container 0 string 15
replaceitem block ~0 ~-2 ~-5 slot.container 1 gunpowder 8
replaceitem block ~0 ~-2 ~-5 slot.container 2 arrow 17
replaceitem block ~0 ~-2 ~-5 slot.container 3 leather 10
replaceitem block ~0 ~-2 ~-5 slot.container 4 spider_eye 7
replaceitem block ~0 ~-2 ~-5 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-2 ~-5 slot.container 9 saddle 1
replaceitem block ~0 ~-2 ~-5 slot.container 10 golden_apple 1
replaceitem block ~0 ~-2 ~-5 slot.container 11 iron_sword 1
replaceitem block ~0 ~-2 ~-5 slot.container 12 torch 18
replaceitem block ~0 ~-2 ~-5 slot.container 13 bread 13
replaceitem block ~0 ~-2 ~-5 slot.container 14 cooked_beef 12
loot insert ~0 ~-2 ~-5 loot "rsf/savanna"
loot insert ~0 ~-2 ~-5 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 acacia_planks []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 stone_bricks []
fill ~-4 ~5 ~-5 ~4 ~7 ~5 hardened_clay []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 acacia_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 acacia_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-4 ~7 ~-1 ~-4 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 acacia_log []
setblock ~0 ~4 ~-9 hay_block []
setblock ~0 ~5 ~-9 torch []
fill ~0 ~0 ~9 ~0 ~3 ~9 acacia_log []
setblock ~0 ~4 ~9 hay_block []
setblock ~0 ~5 ~9 torch []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 acacia_log []
setblock ~-8 ~4 ~0 hay_block []
setblock ~-8 ~5 ~0 torch []
fill ~8 ~0 ~0 ~8 ~3 ~0 acacia_log []
setblock ~8 ~4 ~0 hay_block []
setblock ~8 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 8x9x5) ---
fill ~8 ~0 ~9 ~8 ~8 ~9 acacia_log []
fill ~7 ~8 ~8 ~9 ~8 ~10 acacia_slab []
setblock ~8 ~9 ~9 orange_terracotta []
setblock ~8 ~10 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~6 slot.container 2 string 10
replaceitem block ~-5 ~1 ~6 slot.container 3 gunpowder 11
replaceitem block ~-5 ~1 ~6 slot.container 4 arrow 20
replaceitem block ~-5 ~1 ~6 slot.container 5 leather 13
replaceitem block ~-5 ~1 ~6 slot.container 9 bread 13
replaceitem block ~-5 ~1 ~6 slot.container 10 cooked_beef 12
replaceitem block ~-5 ~1 ~6 slot.container 11 acacia_log 21
replaceitem block ~-5 ~1 ~6 slot.container 12 iron_ingot 12
replaceitem block ~-5 ~1 ~6 slot.container 13 gold_ingot 4
replaceitem block ~-5 ~1 ~6 slot.container 14 emerald 4
loot insert ~-5 ~1 ~6 loot "rsf/savanna"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 13
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 14
replaceitem block ~5 ~1 ~6 slot.container 2 arrow 23
replaceitem block ~5 ~1 ~6 slot.container 3 leather 8
replaceitem block ~5 ~1 ~6 slot.container 4 spider_eye 5
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 9 bread 11
replaceitem block ~5 ~1 ~6 slot.container 10 cooked_beef 10
replaceitem block ~5 ~1 ~6 slot.container 11 acacia_log 19
replaceitem block ~5 ~1 ~6 slot.container 12 iron_ingot 10
replaceitem block ~5 ~1 ~6 slot.container 13 gold_ingot 9
replaceitem block ~5 ~1 ~6 slot.container 14 emerald 9
loot insert ~5 ~1 ~6 loot "rsf/savanna"
loot insert ~5 ~1 ~6 loot "chests/village/village_savanna_house"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
