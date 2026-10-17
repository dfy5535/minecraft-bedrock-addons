# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1266/4224 | 主题内编号: b114/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·双联拱顶植物培育馆 (savanna_conservatory_twin_house)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 acacia_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 coarse_dirt []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 acacia_planks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 acacia_planks []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 ender_pearl 6
replaceitem block ~-2 ~-4 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~-2 ~-4 ~3 slot.container 2 bone 16
replaceitem block ~-2 ~-4 ~3 slot.container 3 string 15
replaceitem block ~-2 ~-4 ~3 slot.container 4 gunpowder 8
replaceitem block ~-2 ~-4 ~3 slot.container 5 arrow 17
replaceitem block ~-2 ~-4 ~3 slot.container 9 golden_apple 4
replaceitem block ~-2 ~-4 ~3 slot.container 10 iron_sword 1
replaceitem block ~-2 ~-4 ~3 slot.container 11 torch 21
replaceitem block ~-2 ~-4 ~3 slot.container 12 bread 16
replaceitem block ~-2 ~-4 ~3 slot.container 13 cooked_beef 8
replaceitem block ~-2 ~-4 ~3 slot.container 14 acacia_log 17
loot insert ~-2 ~-4 ~3 loot "rsf/savanna"
loot insert ~-2 ~-4 ~3 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~7 ~5 stone_bricks []
fill ~2 ~1 ~-5 ~6 ~7 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 acacia_planks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 acacia_planks []
fill ~-5 ~7 ~-4 ~5 ~8 ~4 glass []
fill ~-4 ~7 ~-3 ~4 ~7 ~3 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 acacia_planks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~8 ~0 ~7 ~8 ~9 ~7 acacia_log []
fill ~7 ~9 ~6 ~9 ~9 ~8 acacia_slab []
setblock ~8 ~10 ~7 orange_terracotta []
setblock ~8 ~11 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 smoker []
setblock ~-4 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~5 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 string 10
replaceitem block ~-5 ~1 ~4 slot.container 1 gunpowder 11
replaceitem block ~-5 ~1 ~4 slot.container 2 arrow 20
replaceitem block ~-5 ~1 ~4 slot.container 3 leather 13
replaceitem block ~-5 ~1 ~4 slot.container 4 spider_eye 10
replaceitem block ~-5 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 9 iron_sword 1
replaceitem block ~-5 ~1 ~4 slot.container 10 torch 16
replaceitem block ~-5 ~1 ~4 slot.container 11 bread 11
replaceitem block ~-5 ~1 ~4 slot.container 12 cooked_beef 10
replaceitem block ~-5 ~1 ~4 slot.container 13 acacia_log 19
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 10
loot insert ~-5 ~1 ~4 loot "rsf/savanna"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 arrow 23
replaceitem block ~5 ~1 ~4 slot.container 1 leather 8
replaceitem block ~5 ~1 ~4 slot.container 2 spider_eye 5
replaceitem block ~5 ~1 ~4 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 5 bone 14
replaceitem block ~5 ~1 ~4 slot.container 9 iron_sword 1
replaceitem block ~5 ~1 ~4 slot.container 10 torch 21
replaceitem block ~5 ~1 ~4 slot.container 11 bread 16
replaceitem block ~5 ~1 ~4 slot.container 12 cooked_beef 8
replaceitem block ~5 ~1 ~4 slot.container 13 acacia_log 17
replaceitem block ~5 ~1 ~4 slot.container 14 iron_ingot 8
loot insert ~5 ~1 ~4 loot "rsf/savanna"
loot insert ~5 ~1 ~4 loot "chests/village/village_savanna_house"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
