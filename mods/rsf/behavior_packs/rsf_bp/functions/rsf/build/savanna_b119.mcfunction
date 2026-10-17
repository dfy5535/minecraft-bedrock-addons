# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1271/4224 | 主题内编号: b119/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·半地下恒温洞穴苗圃 (savanna_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 11x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-8 ~6 ~9 ~8 air [] replace leaves
fill ~-6 ~1 ~-8 ~6 ~9 ~8 air [] replace leaves2
fill ~-6 ~1 ~-8 ~6 ~9 ~8 air [] replace log
fill ~-6 ~1 ~-8 ~6 ~9 ~8 air [] replace log2
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 cobblestone [] replace air
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 cobblestone [] replace water
fill ~-5 ~0 ~-7 ~5 ~0 ~7 cobblestone_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 acacia_planks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 hardened_clay []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~4 campfire []
setblock ~3 ~-6 ~-4 campfire []
setblock ~3 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~4 slot.container 0 gunpowder 8
replaceitem block ~3 ~-4 ~4 slot.container 1 arrow 17
replaceitem block ~3 ~-4 ~4 slot.container 2 leather 10
replaceitem block ~3 ~-4 ~4 slot.container 3 spider_eye 7
replaceitem block ~3 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-4 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-4 ~4 slot.container 9 emerald 4
replaceitem block ~3 ~-4 ~4 slot.container 10 saddle 1
replaceitem block ~3 ~-4 ~4 slot.container 11 golden_apple 4
replaceitem block ~3 ~-4 ~4 slot.container 12 iron_sword 1
replaceitem block ~3 ~-4 ~4 slot.container 13 torch 21
replaceitem block ~3 ~-4 ~4 slot.container 14 bread 16
loot insert ~3 ~-4 ~4 loot "rsf/savanna"
loot insert ~3 ~-4 ~4 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-6 ~4 ~2 ~6 cobblestone []
fill ~-3 ~1 ~-5 ~3 ~3 ~5 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 orange_terracotta []
fill ~0 ~1 ~-6 ~0 ~2 ~6 orange_terracotta []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~5 ~-6 ~4 ~5 ~6 orange_terracotta []
fill ~-3 ~6 ~-5 ~3 ~7 ~5 glass []
fill ~-2 ~6 ~-4 ~2 ~6 ~4 air []
setblock ~0 ~7 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-8 ~6 ~2 ~8 cobblestone_wall []
fill ~-5 ~1 ~-7 ~5 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~6 ~0 ~7 ~6 ~9 ~7 acacia_log []
fill ~5 ~9 ~6 ~7 ~9 ~8 acacia_slab []
setblock ~6 ~10 ~7 orange_terracotta []
setblock ~6 ~11 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~5 composter []
setblock ~2 ~1 ~5 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~5 slot.container 2 bone 11
replaceitem block ~3 ~1 ~5 slot.container 3 string 10
replaceitem block ~3 ~1 ~5 slot.container 4 gunpowder 11
replaceitem block ~3 ~1 ~5 slot.container 5 arrow 20
replaceitem block ~3 ~1 ~5 slot.container 9 iron_ingot 10
replaceitem block ~3 ~1 ~5 slot.container 10 gold_ingot 9
replaceitem block ~3 ~1 ~5 slot.container 11 emerald 9
replaceitem block ~3 ~1 ~5 slot.container 12 saddle 1
replaceitem block ~3 ~1 ~5 slot.container 13 golden_apple 2
replaceitem block ~3 ~1 ~5 slot.container 14 iron_sword 1
loot insert ~3 ~1 ~5 loot "rsf/savanna"
summon llama ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-4 ~0
