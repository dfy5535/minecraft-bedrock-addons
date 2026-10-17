# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1155/4224 | 主题内编号: b003/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·环柱巨石方尖祭坛 (savanna_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobblestone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 acacia_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 acacia_planks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-2 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~-2 ~-2 ~3 slot.container 1 bone 16
replaceitem block ~-2 ~-2 ~3 slot.container 2 string 15
replaceitem block ~-2 ~-2 ~3 slot.container 3 gunpowder 8
replaceitem block ~-2 ~-2 ~3 slot.container 4 arrow 17
replaceitem block ~-2 ~-2 ~3 slot.container 5 leather 10
replaceitem block ~-2 ~-2 ~3 slot.container 9 gold_ingot 5
replaceitem block ~-2 ~-2 ~3 slot.container 10 emerald 5
replaceitem block ~-2 ~-2 ~3 slot.container 11 saddle 1
replaceitem block ~-2 ~-2 ~3 slot.container 12 golden_apple 5
replaceitem block ~-2 ~-2 ~3 slot.container 13 iron_sword 1
replaceitem block ~-2 ~-2 ~3 slot.container 14 torch 22
loot insert ~-2 ~-2 ~3 loot "rsf/savanna"
loot insert ~-2 ~-2 ~3 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 orange_terracotta []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 acacia_log []
fill ~-5 ~1 ~6 ~-5 ~8 ~6 acacia_log []
fill ~-3 ~1 ~-6 ~-3 ~8 ~-6 acacia_log []
fill ~-3 ~1 ~6 ~-3 ~8 ~6 acacia_log []
fill ~-1 ~1 ~-6 ~-1 ~8 ~-6 acacia_log []
fill ~-1 ~1 ~6 ~-1 ~8 ~6 acacia_log []
fill ~1 ~1 ~-6 ~1 ~8 ~-6 acacia_log []
fill ~1 ~1 ~6 ~1 ~8 ~6 acacia_log []
fill ~3 ~1 ~-6 ~3 ~8 ~-6 acacia_log []
fill ~3 ~1 ~6 ~3 ~8 ~6 acacia_log []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 acacia_log []
fill ~5 ~1 ~6 ~5 ~8 ~6 acacia_log []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 acacia_log []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 acacia_log []
fill ~-5 ~1 ~-2 ~-5 ~8 ~-2 acacia_log []
fill ~5 ~1 ~-2 ~5 ~8 ~-2 acacia_log []
fill ~-5 ~1 ~0 ~-5 ~8 ~0 acacia_log []
fill ~5 ~1 ~0 ~5 ~8 ~0 acacia_log []
fill ~-5 ~1 ~2 ~-5 ~8 ~2 acacia_log []
fill ~5 ~1 ~2 ~5 ~8 ~2 acacia_log []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 acacia_log []
fill ~5 ~1 ~4 ~5 ~8 ~4 acacia_log []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 orange_terracotta []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 cobblestone []
fill ~0 ~15 ~0 ~0 ~17 ~0 emerald_block []
setblock ~0 ~18 ~0 torch []

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

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~7 ~0 ~8 ~7 ~8 ~8 acacia_log []
fill ~6 ~8 ~7 ~8 ~8 ~9 acacia_slab []
setblock ~7 ~9 ~8 orange_terracotta []
setblock ~7 ~10 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 emerald_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 11
replaceitem block ~4 ~1 ~5 slot.container 1 arrow 20
replaceitem block ~4 ~1 ~5 slot.container 2 leather 13
replaceitem block ~4 ~1 ~5 slot.container 3 spider_eye 10
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 9 emerald 3
replaceitem block ~4 ~1 ~5 slot.container 10 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 3
replaceitem block ~4 ~1 ~5 slot.container 12 iron_sword 1
replaceitem block ~4 ~1 ~5 slot.container 13 torch 20
replaceitem block ~4 ~1 ~5 slot.container 14 bread 15
loot insert ~4 ~1 ~5 loot "rsf/savanna"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
