# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1264/4224 | 主题内编号: b112/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·U型回廊学者修道院 (savanna_arcane_u_cloister)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 acacia_planks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 acacia_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 acacia_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 hardened_clay []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~4 slot.container 0 arrow 17
replaceitem block ~3 ~-2 ~4 slot.container 1 leather 10
replaceitem block ~3 ~-2 ~4 slot.container 2 spider_eye 7
replaceitem block ~3 ~-2 ~4 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-2 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~3 ~-2 ~4 slot.container 5 bone 16
replaceitem block ~3 ~-2 ~4 slot.container 9 saddle 1
replaceitem block ~3 ~-2 ~4 slot.container 10 golden_apple 2
replaceitem block ~3 ~-2 ~4 slot.container 11 iron_sword 1
replaceitem block ~3 ~-2 ~4 slot.container 12 torch 19
replaceitem block ~3 ~-2 ~4 slot.container 13 bread 14
replaceitem block ~3 ~-2 ~4 slot.container 14 cooked_beef 13
loot insert ~3 ~-2 ~4 loot "rsf/savanna"
loot insert ~3 ~-2 ~4 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 acacia_planks []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-7 ~-6 ~7 ~7 acacia_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-7 ~6 ~7 ~7 acacia_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-6 ~-5 ~8 ~6 acacia_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-6 ~5 ~8 ~6 acacia_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~4 ~8 ~6 acacia_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 acacia_fence []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x9x4) ---
fill ~7 ~0 ~9 ~7 ~7 ~9 acacia_log []
fill ~6 ~7 ~8 ~8 ~7 ~10 acacia_slab []
setblock ~7 ~8 ~9 orange_terracotta []
setblock ~7 ~9 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 gold_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 1 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 2 string 10
replaceitem block ~-4 ~1 ~5 slot.container 3 gunpowder 11
replaceitem block ~-4 ~1 ~5 slot.container 4 arrow 20
replaceitem block ~-4 ~1 ~5 slot.container 5 leather 13
replaceitem block ~-4 ~1 ~5 slot.container 9 acacia_log 20
replaceitem block ~-4 ~1 ~5 slot.container 10 iron_ingot 11
replaceitem block ~-4 ~1 ~5 slot.container 11 gold_ingot 10
replaceitem block ~-4 ~1 ~5 slot.container 12 emerald 3
replaceitem block ~-4 ~1 ~5 slot.container 13 saddle 1
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 3
loot insert ~-4 ~1 ~5 loot "rsf/savanna"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 string 13
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 14
replaceitem block ~4 ~1 ~5 slot.container 2 arrow 23
replaceitem block ~4 ~1 ~5 slot.container 3 leather 8
replaceitem block ~4 ~1 ~5 slot.container 4 spider_eye 5
replaceitem block ~4 ~1 ~5 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 9 acacia_log 18
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 12 emerald 8
replaceitem block ~4 ~1 ~5 slot.container 13 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 1
loot insert ~4 ~1 ~5 loot "rsf/savanna"
loot insert ~4 ~1 ~5 loot "chests/village/village_savanna_house"
summon pillager ~0 ~1 ~-1
summon llama ~-1 ~1 ~1
summon husk ~1 ~1 ~1
