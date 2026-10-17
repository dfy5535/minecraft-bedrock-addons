# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1258/4224 | 主题内编号: b106/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·琉璃穹顶魔药炼金室 (savanna_arcane_alchemy_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[underground_forge] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_alchemy]
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

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 hardened_clay []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 bone 16
replaceitem block ~3 ~-4 ~5 slot.container 1 string 15
replaceitem block ~3 ~-4 ~5 slot.container 2 gunpowder 8
replaceitem block ~3 ~-4 ~5 slot.container 3 arrow 17
replaceitem block ~3 ~-4 ~5 slot.container 4 leather 10
replaceitem block ~3 ~-4 ~5 slot.container 5 spider_eye 7
replaceitem block ~3 ~-4 ~5 slot.container 9 cooked_beef 10
replaceitem block ~3 ~-4 ~5 slot.container 10 acacia_log 19
replaceitem block ~3 ~-4 ~5 slot.container 11 iron_ingot 10
replaceitem block ~3 ~-4 ~5 slot.container 12 gold_ingot 9
replaceitem block ~3 ~-4 ~5 slot.container 13 emerald 9
replaceitem block ~3 ~-4 ~5 slot.container 14 saddle 1
loot insert ~3 ~-4 ~5 loot "rsf/savanna"
loot insert ~3 ~-4 ~5 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~7 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 air []
fill ~4 ~1 ~5 ~4 ~8 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 acacia_log []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 acacia_log []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 acacia_log []
fill ~3 ~1 ~4 ~3 ~7 ~4 acacia_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 acacia_planks []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 glass []
fill ~-2 ~8 ~-3 ~2 ~8 ~3 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~4 ~-7 acacia_log []
setblock ~-6 ~5 ~-7 lantern []
fill ~-6 ~0 ~7 ~-6 ~4 ~7 acacia_log []
setblock ~-6 ~5 ~7 lantern []
fill ~6 ~0 ~-7 ~6 ~4 ~-7 acacia_log []
setblock ~6 ~5 ~-7 lantern []
fill ~6 ~0 ~7 ~6 ~4 ~7 acacia_log []
setblock ~6 ~5 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 6x8x3) ---
fill ~6 ~0 ~8 ~6 ~6 ~8 acacia_log []
fill ~5 ~6 ~7 ~7 ~6 ~9 acacia_slab []
setblock ~6 ~7 ~8 orange_terracotta []
setblock ~6 ~8 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 gold_block []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 string 10
replaceitem block ~-3 ~1 ~4 slot.container 1 gunpowder 11
replaceitem block ~-3 ~1 ~4 slot.container 2 arrow 20
replaceitem block ~-3 ~1 ~4 slot.container 3 leather 13
replaceitem block ~-3 ~1 ~4 slot.container 4 spider_eye 10
replaceitem block ~-3 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 9 gold_ingot 9
replaceitem block ~-3 ~1 ~4 slot.container 10 emerald 9
replaceitem block ~-3 ~1 ~4 slot.container 11 saddle 1
replaceitem block ~-3 ~1 ~4 slot.container 12 golden_apple 2
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_sword 1
replaceitem block ~-3 ~1 ~4 slot.container 14 torch 19
loot insert ~-3 ~1 ~4 loot "rsf/savanna"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 arrow 23
replaceitem block ~3 ~1 ~4 slot.container 1 leather 8
replaceitem block ~3 ~1 ~4 slot.container 2 spider_eye 5
replaceitem block ~3 ~1 ~4 slot.container 3 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 5 bone 14
replaceitem block ~3 ~1 ~4 slot.container 9 gold_ingot 7
replaceitem block ~3 ~1 ~4 slot.container 10 emerald 7
replaceitem block ~3 ~1 ~4 slot.container 11 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 12 golden_apple 7
replaceitem block ~3 ~1 ~4 slot.container 13 iron_sword 1
replaceitem block ~3 ~1 ~4 slot.container 14 torch 17
loot insert ~3 ~1 ~4 loot "rsf/savanna"
loot insert ~3 ~1 ~4 loot "chests/village/village_savanna_house"
summon pillager ~0 ~1 ~-1
summon llama ~-1 ~1 ~1
summon husk ~1 ~1 ~1
