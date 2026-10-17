# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1246/4224 | 主题内编号: b094/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·圆形圣泉祈祷亭 (savanna_shrine_rotunda_fountain)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 acacia_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 coarse_dirt []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 acacia_planks []
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
fill ~-4 ~7 ~-5 ~4 ~7 ~5 acacia_planks []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 acacia_log []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 acacia_log []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 acacia_log []
fill ~-2 ~1 ~5 ~-2 ~6 ~5 acacia_log []
fill ~0 ~1 ~-5 ~0 ~6 ~-5 acacia_log []
fill ~0 ~1 ~5 ~0 ~6 ~5 acacia_log []
fill ~2 ~1 ~-5 ~2 ~6 ~-5 acacia_log []
fill ~2 ~1 ~5 ~2 ~6 ~5 acacia_log []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 acacia_log []
fill ~4 ~1 ~5 ~4 ~6 ~5 acacia_log []
fill ~-4 ~1 ~-3 ~-4 ~6 ~-3 acacia_log []
fill ~4 ~1 ~-3 ~4 ~6 ~-3 acacia_log []
fill ~-4 ~1 ~-1 ~-4 ~6 ~-1 acacia_log []
fill ~4 ~1 ~-1 ~4 ~6 ~-1 acacia_log []
fill ~-4 ~1 ~1 ~-4 ~6 ~1 acacia_log []
fill ~4 ~1 ~1 ~4 ~6 ~1 acacia_log []
fill ~-4 ~1 ~3 ~-4 ~6 ~3 acacia_log []
fill ~4 ~1 ~3 ~4 ~6 ~3 acacia_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 acacia_planks []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 glass []
fill ~-2 ~8 ~-3 ~2 ~8 ~3 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 acacia_log []
setblock ~0 ~4 ~-7 emerald_block []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 acacia_log []
setblock ~0 ~4 ~7 emerald_block []
setblock ~0 ~5 ~7 lantern []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 acacia_log []
setblock ~-6 ~4 ~0 emerald_block []
setblock ~-6 ~5 ~0 lantern []
fill ~6 ~0 ~0 ~6 ~3 ~0 acacia_log []
setblock ~6 ~4 ~0 emerald_block []
setblock ~6 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 6x8x6) ---
fill ~6 ~0 ~8 ~6 ~9 ~8 acacia_log []
fill ~5 ~9 ~7 ~7 ~9 ~9 acacia_slab []
setblock ~6 ~10 ~8 orange_terracotta []
setblock ~6 ~11 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 gold_block []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 spider_eye 10
replaceitem block ~-3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 4 string 10
replaceitem block ~-3 ~1 ~4 slot.container 5 gunpowder 11
replaceitem block ~-3 ~1 ~4 slot.container 9 iron_sword 1
replaceitem block ~-3 ~1 ~4 slot.container 10 torch 17
replaceitem block ~-3 ~1 ~4 slot.container 11 bread 12
replaceitem block ~-3 ~1 ~4 slot.container 12 cooked_beef 11
replaceitem block ~-3 ~1 ~4 slot.container 13 acacia_log 20
replaceitem block ~-3 ~1 ~4 slot.container 14 iron_ingot 11
loot insert ~-3 ~1 ~4 loot "rsf/savanna"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 1 bone 14
replaceitem block ~3 ~1 ~4 slot.container 2 string 13
replaceitem block ~3 ~1 ~4 slot.container 3 gunpowder 14
replaceitem block ~3 ~1 ~4 slot.container 4 arrow 23
replaceitem block ~3 ~1 ~4 slot.container 5 leather 8
replaceitem block ~3 ~1 ~4 slot.container 9 iron_sword 1
replaceitem block ~3 ~1 ~4 slot.container 10 torch 22
replaceitem block ~3 ~1 ~4 slot.container 11 bread 10
replaceitem block ~3 ~1 ~4 slot.container 12 cooked_beef 9
replaceitem block ~3 ~1 ~4 slot.container 13 acacia_log 18
replaceitem block ~3 ~1 ~4 slot.container 14 iron_ingot 9
loot insert ~3 ~1 ~4 loot "rsf/savanna"
loot insert ~3 ~1 ~4 loot "chests/village/village_savanna_house"
summon pillager ~0 ~1 ~-1
summon llama ~-1 ~1 ~1
summon husk ~1 ~1 ~1
