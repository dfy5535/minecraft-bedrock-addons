# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1174/4224 | 主题内编号: b022/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·廊柱书库秘藏室 (savanna_chamber_pillared_archive)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
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

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~4 slot.container 0 string 15
replaceitem block ~3 ~-2 ~4 slot.container 1 gunpowder 8
replaceitem block ~3 ~-2 ~4 slot.container 2 arrow 17
replaceitem block ~3 ~-2 ~4 slot.container 3 leather 10
replaceitem block ~3 ~-2 ~4 slot.container 4 spider_eye 7
replaceitem block ~3 ~-2 ~4 slot.container 5 ender_pearl 6
replaceitem block ~3 ~-2 ~4 slot.container 9 saddle 1
replaceitem block ~3 ~-2 ~4 slot.container 10 golden_apple 3
replaceitem block ~3 ~-2 ~4 slot.container 11 iron_sword 1
replaceitem block ~3 ~-2 ~4 slot.container 12 torch 20
replaceitem block ~3 ~-2 ~4 slot.container 13 bread 15
replaceitem block ~3 ~-2 ~4 slot.container 14 cooked_beef 14
loot insert ~3 ~-2 ~4 loot "rsf/savanna"
loot insert ~3 ~-2 ~4 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 acacia_planks []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 acacia_log []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 acacia_log []
fill ~-3 ~1 ~-6 ~-3 ~6 ~-6 acacia_log []
fill ~-3 ~1 ~6 ~-3 ~6 ~6 acacia_log []
fill ~-1 ~1 ~-6 ~-1 ~6 ~-6 acacia_log []
fill ~-1 ~1 ~6 ~-1 ~6 ~6 acacia_log []
fill ~1 ~1 ~-6 ~1 ~6 ~-6 acacia_log []
fill ~1 ~1 ~6 ~1 ~6 ~6 acacia_log []
fill ~3 ~1 ~-6 ~3 ~6 ~-6 acacia_log []
fill ~3 ~1 ~6 ~3 ~6 ~6 acacia_log []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 acacia_log []
fill ~5 ~1 ~6 ~5 ~6 ~6 acacia_log []
fill ~-5 ~1 ~-4 ~-5 ~6 ~-4 acacia_log []
fill ~5 ~1 ~-4 ~5 ~6 ~-4 acacia_log []
fill ~-5 ~1 ~-2 ~-5 ~6 ~-2 acacia_log []
fill ~5 ~1 ~-2 ~5 ~6 ~-2 acacia_log []
fill ~-5 ~1 ~0 ~-5 ~6 ~0 acacia_log []
fill ~5 ~1 ~0 ~5 ~6 ~0 acacia_log []
fill ~-5 ~1 ~2 ~-5 ~6 ~2 acacia_log []
fill ~5 ~1 ~2 ~5 ~6 ~2 acacia_log []
fill ~-5 ~1 ~4 ~-5 ~6 ~4 acacia_log []
fill ~5 ~1 ~4 ~5 ~6 ~4 acacia_log []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 acacia_planks []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 cobblestone []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 gold_block []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x9x4) ---
fill ~7 ~0 ~9 ~7 ~7 ~9 acacia_log []
fill ~6 ~7 ~8 ~8 ~7 ~10 acacia_slab []
setblock ~7 ~8 ~9 orange_terracotta []
setblock ~7 ~9 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 spider_eye 10
replaceitem block ~-4 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 4 string 10
replaceitem block ~-4 ~1 ~5 slot.container 5 gunpowder 11
replaceitem block ~-4 ~1 ~5 slot.container 9 acacia_log 21
replaceitem block ~-4 ~1 ~5 slot.container 10 iron_ingot 12
replaceitem block ~-4 ~1 ~5 slot.container 11 gold_ingot 4
replaceitem block ~-4 ~1 ~5 slot.container 12 emerald 4
replaceitem block ~-4 ~1 ~5 slot.container 13 saddle 1
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 4
loot insert ~-4 ~1 ~5 loot "rsf/savanna"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 1 bone 14
replaceitem block ~4 ~1 ~5 slot.container 2 string 13
replaceitem block ~4 ~1 ~5 slot.container 3 gunpowder 14
replaceitem block ~4 ~1 ~5 slot.container 4 arrow 23
replaceitem block ~4 ~1 ~5 slot.container 5 leather 8
replaceitem block ~4 ~1 ~5 slot.container 9 acacia_log 19
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 12 emerald 9
replaceitem block ~4 ~1 ~5 slot.container 13 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 2
loot insert ~4 ~1 ~5 loot "rsf/savanna"
loot insert ~4 ~1 ~5 loot "chests/village/village_savanna_house"
summon pillager ~0 ~1 ~-1
summon llama ~-1 ~1 ~1
summon husk ~1 ~1 ~1
