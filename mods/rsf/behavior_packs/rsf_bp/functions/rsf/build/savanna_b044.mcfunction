# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1196/4224 | 主题内编号: b044/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·双子祭台勇士角斗场 (savanna_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace log2
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 acacia_planks [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 acacia_planks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 acacia_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 cobblestone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 hardened_clay []
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-2 ~4 slot.container 1 bone 16
replaceitem block ~4 ~-2 ~4 slot.container 2 string 15
replaceitem block ~4 ~-2 ~4 slot.container 3 gunpowder 8
replaceitem block ~4 ~-2 ~4 slot.container 4 arrow 17
replaceitem block ~4 ~-2 ~4 slot.container 5 leather 10
replaceitem block ~4 ~-2 ~4 slot.container 9 acacia_log 18
replaceitem block ~4 ~-2 ~4 slot.container 10 iron_ingot 9
replaceitem block ~4 ~-2 ~4 slot.container 11 gold_ingot 8
replaceitem block ~4 ~-2 ~4 slot.container 12 emerald 8
replaceitem block ~4 ~-2 ~4 slot.container 13 saddle 1
replaceitem block ~4 ~-2 ~4 slot.container 14 golden_apple 1
loot insert ~4 ~-2 ~4 loot "rsf/savanna"
loot insert ~4 ~-2 ~4 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~7 ~6 acacia_planks []
fill ~2 ~1 ~-6 ~6 ~7 ~6 acacia_planks []
fill ~-5 ~1 ~-5 ~-3 ~6 ~5 air []
fill ~3 ~1 ~-5 ~5 ~6 ~5 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 stone_bricks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-6 ~-6 ~8 ~-6 acacia_log []
setblock ~-6 ~9 ~-6 torch []
fill ~-6 ~6 ~6 ~-6 ~8 ~6 acacia_log []
setblock ~-6 ~9 ~6 torch []
fill ~6 ~6 ~-6 ~6 ~8 ~-6 acacia_log []
setblock ~6 ~9 ~-6 torch []
fill ~6 ~6 ~6 ~6 ~8 ~6 acacia_log []
setblock ~6 ~9 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 acacia_planks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~8 ~0 ~7 ~8 ~9 ~7 acacia_log []
fill ~7 ~9 ~6 ~9 ~9 ~8 acacia_slab []
setblock ~8 ~10 ~7 orange_terracotta []
setblock ~8 ~11 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 arrow 20
replaceitem block ~-5 ~1 ~5 slot.container 1 leather 13
replaceitem block ~-5 ~1 ~5 slot.container 2 spider_eye 10
replaceitem block ~-5 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~5 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~5 slot.container 9 iron_sword 1
replaceitem block ~-5 ~1 ~5 slot.container 10 torch 16
replaceitem block ~-5 ~1 ~5 slot.container 11 bread 11
replaceitem block ~-5 ~1 ~5 slot.container 12 cooked_beef 10
replaceitem block ~-5 ~1 ~5 slot.container 13 acacia_log 19
replaceitem block ~-5 ~1 ~5 slot.container 14 iron_ingot 10
loot insert ~-5 ~1 ~5 loot "rsf/savanna"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 spider_eye 5
replaceitem block ~5 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~5 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~5 slot.container 3 bone 14
replaceitem block ~5 ~1 ~5 slot.container 4 string 13
replaceitem block ~5 ~1 ~5 slot.container 5 gunpowder 14
replaceitem block ~5 ~1 ~5 slot.container 9 iron_sword 1
replaceitem block ~5 ~1 ~5 slot.container 10 torch 21
replaceitem block ~5 ~1 ~5 slot.container 11 bread 16
replaceitem block ~5 ~1 ~5 slot.container 12 cooked_beef 8
replaceitem block ~5 ~1 ~5 slot.container 13 acacia_log 17
replaceitem block ~5 ~1 ~5 slot.container 14 iron_ingot 8
loot insert ~5 ~1 ~5 loot "rsf/savanna"
loot insert ~5 ~1 ~5 loot "chests/village/village_savanna_house"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon llama ~0 ~-2 ~0
