# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1278/4224 | 主题内编号: b126/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·双子主塔天桥宫殿与暗牢 (savanna_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~13 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~13 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~13 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~13 ~8 air [] replace log2
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 stone_bricks [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 stone_bricks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 acacia_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 coarse_dirt []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 acacia_planks []
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
fill ~-6 ~1 ~-6 ~-2 ~10 ~6 stone_bricks []
fill ~2 ~1 ~-6 ~6 ~10 ~6 stone_bricks []
fill ~-5 ~1 ~-5 ~-3 ~9 ~5 air []
fill ~3 ~1 ~-5 ~5 ~9 ~5 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 acacia_planks []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 acacia_planks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 stone_bricks []
fill ~0 ~15 ~0 ~0 ~17 ~0 gold_block []
setblock ~0 ~18 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 acacia_planks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 lantern []
setblock ~2 ~4 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~8 ~0 ~8 ~8 ~6 ~8 acacia_log []
fill ~7 ~6 ~7 ~9 ~6 ~9 acacia_slab []
setblock ~8 ~7 ~8 orange_terracotta []
setblock ~8 ~8 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-5 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 spider_eye 10
replaceitem block ~-5 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~5 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~5 slot.container 4 string 10
replaceitem block ~-5 ~1 ~5 slot.container 5 gunpowder 11
replaceitem block ~-5 ~1 ~5 slot.container 9 gold_ingot 8
replaceitem block ~-5 ~1 ~5 slot.container 10 emerald 8
replaceitem block ~-5 ~1 ~5 slot.container 11 saddle 1
replaceitem block ~-5 ~1 ~5 slot.container 12 golden_apple 1
replaceitem block ~-5 ~1 ~5 slot.container 13 iron_sword 1
replaceitem block ~-5 ~1 ~5 slot.container 14 torch 18
loot insert ~-5 ~1 ~5 loot "rsf/savanna"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~5 slot.container 1 bone 14
replaceitem block ~5 ~1 ~5 slot.container 2 string 13
replaceitem block ~5 ~1 ~5 slot.container 3 gunpowder 14
replaceitem block ~5 ~1 ~5 slot.container 4 arrow 23
replaceitem block ~5 ~1 ~5 slot.container 5 leather 8
replaceitem block ~5 ~1 ~5 slot.container 9 gold_ingot 6
replaceitem block ~5 ~1 ~5 slot.container 10 emerald 6
replaceitem block ~5 ~1 ~5 slot.container 11 saddle 1
replaceitem block ~5 ~1 ~5 slot.container 12 golden_apple 6
replaceitem block ~5 ~1 ~5 slot.container 13 iron_sword 1
replaceitem block ~5 ~1 ~5 slot.container 14 torch 16
loot insert ~5 ~1 ~5 loot "rsf/savanna"
loot insert ~5 ~1 ~5 loot "chests/village/village_savanna_house"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
