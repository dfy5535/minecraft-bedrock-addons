# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1268/4224 | 主题内编号: b116/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·U型围合秘密花园驿站 (savanna_conservatory_u_garden)
# 建筑构造: 主体[u_courtyard] + 屋顶[dome_glass] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 2格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 acacia_planks [] replace air
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 acacia_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 acacia_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 acacia_planks []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 stone_bricks []
fill ~-4 ~7 ~-5 ~4 ~8 ~5 glass []
fill ~-3 ~7 ~-4 ~3 ~7 ~4 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 acacia_log []
setblock ~0 ~4 ~-8 chiseled_stone_bricks []
setblock ~0 ~5 ~-8 torch []
fill ~0 ~0 ~8 ~0 ~3 ~8 acacia_log []
setblock ~0 ~4 ~8 chiseled_stone_bricks []
setblock ~0 ~5 ~8 torch []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 acacia_log []
setblock ~-7 ~4 ~0 chiseled_stone_bricks []
setblock ~-7 ~5 ~0 torch []
fill ~7 ~0 ~0 ~7 ~3 ~0 acacia_log []
setblock ~7 ~4 ~0 chiseled_stone_bricks []
setblock ~7 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~7 ~0 ~7 ~7 ~6 ~7 acacia_log []
fill ~6 ~6 ~6 ~8 ~6 ~8 acacia_slab []
setblock ~7 ~7 ~7 orange_terracotta []
setblock ~7 ~8 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 arrow 20
replaceitem block ~-4 ~1 ~5 slot.container 1 leather 13
replaceitem block ~-4 ~1 ~5 slot.container 2 spider_eye 10
replaceitem block ~-4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 9 gold_ingot 5
replaceitem block ~-4 ~1 ~5 slot.container 10 emerald 5
replaceitem block ~-4 ~1 ~5 slot.container 11 saddle 1
replaceitem block ~-4 ~1 ~5 slot.container 12 golden_apple 5
replaceitem block ~-4 ~1 ~5 slot.container 13 iron_sword 1
replaceitem block ~-4 ~1 ~5 slot.container 14 torch 22
loot insert ~-4 ~1 ~5 loot "rsf/savanna"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 5
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 3 bone 14
replaceitem block ~4 ~1 ~5 slot.container 4 string 13
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 14
replaceitem block ~4 ~1 ~5 slot.container 9 gold_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 10 emerald 3
replaceitem block ~4 ~1 ~5 slot.container 11 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 3
replaceitem block ~4 ~1 ~5 slot.container 13 iron_sword 1
replaceitem block ~4 ~1 ~5 slot.container 14 torch 20
loot insert ~4 ~1 ~5 loot "rsf/savanna"
loot insert ~4 ~1 ~5 loot "chests/village/village_savanna_house"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon llama ~0 ~2 ~0
