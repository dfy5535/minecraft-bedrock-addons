# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1230/4224 | 主题内编号: b078/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·下沉祭池图腾柱群 (savanna_totem_sunken_ritual_pool)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 acacia_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 coarse_dirt []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 acacia_planks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 acacia_planks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~-3 ~-3 ~4 slot.container 1 bone 16
replaceitem block ~-3 ~-3 ~4 slot.container 2 string 15
replaceitem block ~-3 ~-3 ~4 slot.container 3 gunpowder 8
replaceitem block ~-3 ~-3 ~4 slot.container 4 arrow 17
replaceitem block ~-3 ~-3 ~4 slot.container 5 leather 10
replaceitem block ~-3 ~-3 ~4 slot.container 9 saddle 1
replaceitem block ~-3 ~-3 ~4 slot.container 10 golden_apple 1
replaceitem block ~-3 ~-3 ~4 slot.container 11 iron_sword 1
replaceitem block ~-3 ~-3 ~4 slot.container 12 torch 18
replaceitem block ~-3 ~-3 ~4 slot.container 13 bread 13
replaceitem block ~-3 ~-3 ~4 slot.container 14 cooked_beef 12
loot insert ~-3 ~-3 ~4 loot "rsf/savanna"
loot insert ~-3 ~-3 ~4 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 acacia_planks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 acacia_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~6 ~-6 ~-5 ~8 ~-6 acacia_log []
setblock ~-5 ~9 ~-6 lantern []
fill ~-5 ~6 ~6 ~-5 ~8 ~6 acacia_log []
setblock ~-5 ~9 ~6 lantern []
fill ~5 ~6 ~-6 ~5 ~8 ~-6 acacia_log []
setblock ~5 ~9 ~-6 lantern []
fill ~5 ~6 ~6 ~5 ~8 ~6 acacia_log []
setblock ~5 ~9 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~7 ~0 ~8 ~7 ~8 ~8 acacia_log []
fill ~6 ~8 ~7 ~8 ~8 ~9 acacia_slab []
setblock ~7 ~9 ~8 orange_terracotta []
setblock ~7 ~10 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 spider_eye 10
replaceitem block ~-4 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 4 string 10
replaceitem block ~-4 ~1 ~5 slot.container 5 gunpowder 11
replaceitem block ~-4 ~1 ~5 slot.container 9 bread 15
replaceitem block ~-4 ~1 ~5 slot.container 10 cooked_beef 14
replaceitem block ~-4 ~1 ~5 slot.container 11 acacia_log 16
replaceitem block ~-4 ~1 ~5 slot.container 12 iron_ingot 7
replaceitem block ~-4 ~1 ~5 slot.container 13 gold_ingot 6
replaceitem block ~-4 ~1 ~5 slot.container 14 emerald 6
loot insert ~-4 ~1 ~5 loot "rsf/savanna"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 1 bone 14
replaceitem block ~4 ~1 ~5 slot.container 2 string 13
replaceitem block ~4 ~1 ~5 slot.container 3 gunpowder 14
replaceitem block ~4 ~1 ~5 slot.container 4 arrow 23
replaceitem block ~4 ~1 ~5 slot.container 5 leather 8
replaceitem block ~4 ~1 ~5 slot.container 9 bread 13
replaceitem block ~4 ~1 ~5 slot.container 10 cooked_beef 12
replaceitem block ~4 ~1 ~5 slot.container 11 acacia_log 21
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 13 gold_ingot 4
replaceitem block ~4 ~1 ~5 slot.container 14 emerald 4
loot insert ~4 ~1 ~5 loot "rsf/savanna"
loot insert ~4 ~1 ~5 loot "chests/village/village_savanna_house"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
