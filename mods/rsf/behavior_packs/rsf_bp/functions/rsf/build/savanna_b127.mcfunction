# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1279/4224 | 主题内编号: b127/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·万神殿巨型穹顶与试炼宫 (savanna_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 5格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 cobblestone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 acacia_planks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone []
fill ~-5 ~-6 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 emerald_block []
setblock ~-4 ~-6 ~-5 torch []
setblock ~4 ~-6 ~5 torch []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~5 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-4 ~5 slot.container 2 bone 16
replaceitem block ~0 ~-4 ~5 slot.container 3 string 15
replaceitem block ~0 ~-4 ~5 slot.container 4 gunpowder 8
replaceitem block ~0 ~-4 ~5 slot.container 5 arrow 17
replaceitem block ~0 ~-4 ~5 slot.container 9 torch 18
replaceitem block ~0 ~-4 ~5 slot.container 10 bread 13
replaceitem block ~0 ~-4 ~5 slot.container 11 cooked_beef 12
replaceitem block ~0 ~-4 ~5 slot.container 12 acacia_log 21
replaceitem block ~0 ~-4 ~5 slot.container 13 iron_ingot 12
replaceitem block ~0 ~-4 ~5 slot.container 14 gold_ingot 4
loot insert ~0 ~-4 ~5 loot "rsf/savanna"
loot insert ~0 ~-4 ~5 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 orange_terracotta []
fill ~-6 ~1 ~-7 ~-6 ~7 ~-7 acacia_log []
fill ~-6 ~1 ~7 ~-6 ~7 ~7 acacia_log []
fill ~-4 ~1 ~-7 ~-4 ~7 ~-7 acacia_log []
fill ~-4 ~1 ~7 ~-4 ~7 ~7 acacia_log []
fill ~-2 ~1 ~-7 ~-2 ~7 ~-7 acacia_log []
fill ~-2 ~1 ~7 ~-2 ~7 ~7 acacia_log []
fill ~0 ~1 ~-7 ~0 ~7 ~-7 acacia_log []
fill ~0 ~1 ~7 ~0 ~7 ~7 acacia_log []
fill ~2 ~1 ~-7 ~2 ~7 ~-7 acacia_log []
fill ~2 ~1 ~7 ~2 ~7 ~7 acacia_log []
fill ~4 ~1 ~-7 ~4 ~7 ~-7 acacia_log []
fill ~4 ~1 ~7 ~4 ~7 ~7 acacia_log []
fill ~6 ~1 ~-7 ~6 ~7 ~-7 acacia_log []
fill ~6 ~1 ~7 ~6 ~7 ~7 acacia_log []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 acacia_log []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 acacia_log []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 acacia_log []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 acacia_log []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 acacia_log []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 acacia_log []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 acacia_log []
fill ~6 ~1 ~1 ~6 ~7 ~1 acacia_log []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 acacia_log []
fill ~6 ~1 ~3 ~6 ~7 ~3 acacia_log []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 acacia_log []
fill ~6 ~1 ~5 ~6 ~7 ~5 acacia_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 orange_terracotta []
fill ~-5 ~9 ~-6 ~5 ~10 ~6 glass []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 cobblestone_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 8x10x4) ---
fill ~8 ~0 ~10 ~8 ~7 ~10 acacia_log []
fill ~7 ~7 ~9 ~9 ~7 ~11 acacia_slab []
setblock ~8 ~8 ~10 orange_terracotta []
setblock ~8 ~9 ~10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~6 brewing_stand []
setblock ~1 ~1 ~6 cauldron []
setblock ~0 ~1 ~6 emerald_block []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 2 bone 11
replaceitem block ~5 ~1 ~6 slot.container 3 string 10
replaceitem block ~5 ~1 ~6 slot.container 4 gunpowder 11
replaceitem block ~5 ~1 ~6 slot.container 5 arrow 20
replaceitem block ~5 ~1 ~6 slot.container 9 golden_apple 6
replaceitem block ~5 ~1 ~6 slot.container 10 iron_sword 1
replaceitem block ~5 ~1 ~6 slot.container 11 torch 16
replaceitem block ~5 ~1 ~6 slot.container 12 bread 11
replaceitem block ~5 ~1 ~6 slot.container 13 cooked_beef 10
replaceitem block ~5 ~1 ~6 slot.container 14 acacia_log 19
loot insert ~5 ~1 ~6 loot "rsf/savanna"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
