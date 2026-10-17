# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1171/4224 | 主题内编号: b019/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·琉璃穹顶圣物秘室 (savanna_chamber_domed_reliquary)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cobblestone [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cobblestone [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 acacia_planks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 acacia_planks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 orange_terracotta []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 leather 10
replaceitem block ~0 ~-3 ~-4 slot.container 1 spider_eye 7
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 4 bone 16
replaceitem block ~0 ~-3 ~-4 slot.container 5 string 15
replaceitem block ~0 ~-3 ~-4 slot.container 9 cooked_beef 11
replaceitem block ~0 ~-3 ~-4 slot.container 10 acacia_log 20
replaceitem block ~0 ~-3 ~-4 slot.container 11 iron_ingot 11
replaceitem block ~0 ~-3 ~-4 slot.container 12 gold_ingot 10
replaceitem block ~0 ~-3 ~-4 slot.container 13 emerald 3
replaceitem block ~0 ~-3 ~-4 slot.container 14 saddle 1
loot insert ~0 ~-3 ~-4 loot "rsf/savanna"
loot insert ~0 ~-3 ~-4 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~7 ~5 cobblestone []
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
fill ~-4 ~7 ~-5 ~4 ~7 ~5 orange_terracotta []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 glass []
fill ~-2 ~8 ~-3 ~2 ~8 ~3 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~4 ~-7 acacia_log []
setblock ~-6 ~5 ~-7 torch []
fill ~-6 ~0 ~7 ~-6 ~4 ~7 acacia_log []
setblock ~-6 ~5 ~7 torch []
fill ~6 ~0 ~-7 ~6 ~4 ~-7 acacia_log []
setblock ~6 ~5 ~-7 torch []
fill ~6 ~0 ~7 ~6 ~4 ~7 acacia_log []
setblock ~6 ~5 ~7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 6x8x6) ---
fill ~6 ~0 ~8 ~6 ~9 ~8 acacia_log []
fill ~5 ~9 ~7 ~7 ~9 ~9 acacia_slab []
setblock ~6 ~10 ~8 orange_terracotta []
setblock ~6 ~11 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-3 ~1 ~0 lectern []
setblock ~3 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 gunpowder 11
replaceitem block ~3 ~1 ~4 slot.container 1 arrow 20
replaceitem block ~3 ~1 ~4 slot.container 2 leather 13
replaceitem block ~3 ~1 ~4 slot.container 3 spider_eye 10
replaceitem block ~3 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 9 iron_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 10 gold_ingot 7
replaceitem block ~3 ~1 ~4 slot.container 11 emerald 7
replaceitem block ~3 ~1 ~4 slot.container 12 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 13 golden_apple 7
replaceitem block ~3 ~1 ~4 slot.container 14 iron_sword 1
loot insert ~3 ~1 ~4 loot "rsf/savanna"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
