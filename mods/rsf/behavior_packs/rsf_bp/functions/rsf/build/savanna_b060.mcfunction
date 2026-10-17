# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1212/4224 | 主题内编号: b060/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·圆形穹顶万骨祠堂 (savanna_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 acacia_planks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 acacia_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 acacia_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 acacia_planks []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 torch []
setblock ~3 ~-5 ~0 torch []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 string 15
replaceitem block ~0 ~-3 ~4 slot.container 1 gunpowder 8
replaceitem block ~0 ~-3 ~4 slot.container 2 arrow 17
replaceitem block ~0 ~-3 ~4 slot.container 3 leather 10
replaceitem block ~0 ~-3 ~4 slot.container 4 spider_eye 7
replaceitem block ~0 ~-3 ~4 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-3 ~4 slot.container 9 iron_sword 1
replaceitem block ~0 ~-3 ~4 slot.container 10 torch 17
replaceitem block ~0 ~-3 ~4 slot.container 11 bread 12
replaceitem block ~0 ~-3 ~4 slot.container 12 cooked_beef 11
replaceitem block ~0 ~-3 ~4 slot.container 13 acacia_log 20
replaceitem block ~0 ~-3 ~4 slot.container 14 iron_ingot 11
loot insert ~0 ~-3 ~4 loot "rsf/savanna"
loot insert ~0 ~-3 ~4 loot "chests/village/village_savanna_house"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 string 13
replaceitem block ~0 ~-3 ~-4 slot.container 1 gunpowder 14
replaceitem block ~0 ~-3 ~-4 slot.container 2 arrow 23
replaceitem block ~0 ~-3 ~-4 slot.container 3 leather 8
replaceitem block ~0 ~-3 ~-4 slot.container 4 spider_eye 5
replaceitem block ~0 ~-3 ~-4 slot.container 5 ender_pearl 4
replaceitem block ~0 ~-3 ~-4 slot.container 9 iron_sword 1
replaceitem block ~0 ~-3 ~-4 slot.container 10 torch 16
replaceitem block ~0 ~-3 ~-4 slot.container 11 bread 11
replaceitem block ~0 ~-3 ~-4 slot.container 12 cooked_beef 10
replaceitem block ~0 ~-3 ~-4 slot.container 13 acacia_log 19
replaceitem block ~0 ~-3 ~-4 slot.container 14 iron_ingot 10
loot insert ~0 ~-3 ~-4 loot "rsf/savanna"
loot insert ~0 ~-3 ~-4 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 stone_bricks []
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

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 stone_bricks []
fill ~-4 ~8 ~-5 ~4 ~9 ~5 glass []
fill ~-3 ~8 ~-4 ~3 ~8 ~4 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 stone_bricks []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~7 ~0 ~8 ~7 ~5 ~8 acacia_log []
fill ~6 ~5 ~7 ~8 ~5 ~9 acacia_slab []
setblock ~7 ~6 ~8 orange_terracotta []
setblock ~7 ~7 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 chiseled_stone_bricks []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 arrow 20
replaceitem block ~-4 ~1 ~5 slot.container 1 leather 13
replaceitem block ~-4 ~1 ~5 slot.container 2 spider_eye 10
replaceitem block ~-4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 9 saddle 1
replaceitem block ~-4 ~1 ~5 slot.container 10 golden_apple 3
replaceitem block ~-4 ~1 ~5 slot.container 11 iron_sword 1
replaceitem block ~-4 ~1 ~5 slot.container 12 torch 20
replaceitem block ~-4 ~1 ~5 slot.container 13 bread 15
replaceitem block ~-4 ~1 ~5 slot.container 14 cooked_beef 14
loot insert ~-4 ~1 ~5 loot "rsf/savanna"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 5
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 3 bone 14
replaceitem block ~4 ~1 ~5 slot.container 4 string 13
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 14
replaceitem block ~4 ~1 ~5 slot.container 9 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 1
replaceitem block ~4 ~1 ~5 slot.container 11 iron_sword 1
replaceitem block ~4 ~1 ~5 slot.container 12 torch 18
replaceitem block ~4 ~1 ~5 slot.container 13 bread 13
replaceitem block ~4 ~1 ~5 slot.container 14 cooked_beef 12
loot insert ~4 ~1 ~5 loot "rsf/savanna"
loot insert ~4 ~1 ~5 loot "chests/village/village_savanna_house"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
