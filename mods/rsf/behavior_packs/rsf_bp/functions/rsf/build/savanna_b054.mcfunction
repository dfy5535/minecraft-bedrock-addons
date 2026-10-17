# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1206/4224 | 主题内编号: b054/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·切石与伐木工匠棚屋 (savanna_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log2
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 stone_bricks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 stone_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 acacia_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 coarse_dirt []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 acacia_planks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 acacia_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~7 ~5 stone_bricks []
fill ~2 ~1 ~-5 ~5 ~7 ~5 stone_bricks []
fill ~-4 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 acacia_planks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-6 ~-6 ~7 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-6 ~6 ~7 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~-5 ~8 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-5 ~5 ~8 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-5 ~4 ~8 ~5 acacia_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 acacia_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 acacia_log []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 acacia_log []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 acacia_log []
fill ~7 ~0 ~2 ~7 ~5 ~2 acacia_log []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~7 ~0 ~7 ~7 ~9 ~7 acacia_log []
fill ~6 ~9 ~6 ~8 ~9 ~8 acacia_slab []
setblock ~7 ~10 ~7 orange_terracotta []
setblock ~7 ~11 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 spider_eye 10
replaceitem block ~-4 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-4 ~1 ~4 slot.container 4 string 10
replaceitem block ~-4 ~1 ~4 slot.container 5 gunpowder 11
replaceitem block ~-4 ~1 ~4 slot.container 9 iron_sword 1
replaceitem block ~-4 ~1 ~4 slot.container 10 torch 19
replaceitem block ~-4 ~1 ~4 slot.container 11 bread 14
replaceitem block ~-4 ~1 ~4 slot.container 12 cooked_beef 13
replaceitem block ~-4 ~1 ~4 slot.container 13 acacia_log 22
replaceitem block ~-4 ~1 ~4 slot.container 14 iron_ingot 6
loot insert ~-4 ~1 ~4 loot "rsf/savanna"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~4 slot.container 1 bone 14
replaceitem block ~4 ~1 ~4 slot.container 2 string 13
replaceitem block ~4 ~1 ~4 slot.container 3 gunpowder 14
replaceitem block ~4 ~1 ~4 slot.container 4 arrow 23
replaceitem block ~4 ~1 ~4 slot.container 5 leather 8
replaceitem block ~4 ~1 ~4 slot.container 9 iron_sword 1
replaceitem block ~4 ~1 ~4 slot.container 10 torch 17
replaceitem block ~4 ~1 ~4 slot.container 11 bread 12
replaceitem block ~4 ~1 ~4 slot.container 12 cooked_beef 11
replaceitem block ~4 ~1 ~4 slot.container 13 acacia_log 20
replaceitem block ~4 ~1 ~4 slot.container 14 iron_ingot 11
loot insert ~4 ~1 ~4 loot "rsf/savanna"
loot insert ~4 ~1 ~4 loot "chests/village/village_savanna_house"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
