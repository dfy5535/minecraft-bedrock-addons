# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1235/4224 | 主题内编号: b083/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·铁砧锻造与模具工坊 (savanna_mine_smithing_foundry)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobblestone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 acacia_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 1 rotten_flesh 17
replaceitem block ~3 ~-3 ~4 slot.container 2 bone 16
replaceitem block ~3 ~-3 ~4 slot.container 3 string 15
replaceitem block ~3 ~-3 ~4 slot.container 4 gunpowder 8
replaceitem block ~3 ~-3 ~4 slot.container 5 arrow 17
replaceitem block ~3 ~-3 ~4 slot.container 9 cooked_beef 10
replaceitem block ~3 ~-3 ~4 slot.container 10 acacia_log 19
replaceitem block ~3 ~-3 ~4 slot.container 11 iron_ingot 10
replaceitem block ~3 ~-3 ~4 slot.container 12 gold_ingot 9
replaceitem block ~3 ~-3 ~4 slot.container 13 emerald 9
replaceitem block ~3 ~-3 ~4 slot.container 14 saddle 1
loot insert ~3 ~-3 ~4 loot "rsf/savanna"
loot insert ~3 ~-3 ~4 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~6 ~6 cobblestone []
fill ~-5 ~1 ~0 ~5 ~5 ~6 acacia_planks []
fill ~-4 ~1 ~-5 ~-1 ~5 ~5 air []
fill ~-1 ~1 ~1 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-7 ~-6 ~7 ~7 stone_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-7 ~6 ~7 ~7 stone_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-6 ~-5 ~8 ~6 stone_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-6 ~5 ~8 ~6 stone_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~4 ~8 ~6 cobblestone_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 orange_terracotta []

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

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~7 ~0 ~7 ~7 ~8 ~7 acacia_log []
fill ~6 ~8 ~6 ~8 ~8 ~8 acacia_slab []
setblock ~7 ~9 ~7 orange_terracotta []
setblock ~7 ~10 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 11
replaceitem block ~4 ~1 ~5 slot.container 1 arrow 20
replaceitem block ~4 ~1 ~5 slot.container 2 leather 13
replaceitem block ~4 ~1 ~5 slot.container 3 spider_eye 10
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 9 emerald 6
replaceitem block ~4 ~1 ~5 slot.container 10 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 6
replaceitem block ~4 ~1 ~5 slot.container 12 iron_sword 1
replaceitem block ~4 ~1 ~5 slot.container 13 torch 16
replaceitem block ~4 ~1 ~5 slot.container 14 bread 11
loot insert ~4 ~1 ~5 loot "rsf/savanna"
summon llama ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
