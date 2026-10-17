# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1254/4224 | 主题内编号: b102/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·双子箭塔联防碉楼 (savanna_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 acacia_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 coarse_dirt []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 acacia_planks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 acacia_planks []
setblock ~0 ~-7 ~0 gold_block []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 campfire []
setblock ~2 ~-6 ~0 campfire []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~-3 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-4 ~-3 slot.container 2 bone 16
replaceitem block ~0 ~-4 ~-3 slot.container 3 string 15
replaceitem block ~0 ~-4 ~-3 slot.container 4 gunpowder 8
replaceitem block ~0 ~-4 ~-3 slot.container 5 arrow 17
replaceitem block ~0 ~-4 ~-3 slot.container 9 emerald 8
replaceitem block ~0 ~-4 ~-3 slot.container 10 saddle 1
replaceitem block ~0 ~-4 ~-3 slot.container 11 golden_apple 1
replaceitem block ~0 ~-4 ~-3 slot.container 12 iron_sword 1
replaceitem block ~0 ~-4 ~-3 slot.container 13 torch 18
replaceitem block ~0 ~-4 ~-3 slot.container 14 bread 13
loot insert ~0 ~-4 ~-3 loot "rsf/savanna"
loot insert ~0 ~-4 ~-3 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~9 ~5 stone_bricks []
fill ~2 ~1 ~-5 ~6 ~9 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~5 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 acacia_planks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 acacia_planks []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 acacia_fence []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 air []
setblock ~-6 ~9 ~-5 acacia_log []
setblock ~-6 ~10 ~-5 lantern []
setblock ~-6 ~9 ~5 acacia_log []
setblock ~-6 ~10 ~5 lantern []
setblock ~6 ~9 ~-5 acacia_log []
setblock ~6 ~10 ~-5 lantern []
setblock ~6 ~9 ~5 acacia_log []
setblock ~6 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~7 ~-2 acacia_log []
fill ~-7 ~0 ~2 ~-7 ~7 ~2 acacia_log []
fill ~7 ~0 ~-2 ~7 ~7 ~-2 acacia_log []
fill ~7 ~0 ~2 ~7 ~7 ~2 acacia_log []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~8 ~0 ~7 ~8 ~7 ~7 acacia_log []
fill ~7 ~7 ~6 ~9 ~7 ~8 acacia_slab []
setblock ~8 ~8 ~7 orange_terracotta []
setblock ~8 ~9 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-5 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 spider_eye 10
replaceitem block ~-5 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 4 string 10
replaceitem block ~-5 ~1 ~4 slot.container 5 gunpowder 11
replaceitem block ~-5 ~1 ~4 slot.container 9 acacia_log 17
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_ingot 8
replaceitem block ~-5 ~1 ~4 slot.container 11 gold_ingot 7
replaceitem block ~-5 ~1 ~4 slot.container 12 emerald 7
replaceitem block ~-5 ~1 ~4 slot.container 13 saddle 1
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 7
loot insert ~-5 ~1 ~4 loot "rsf/savanna"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 1 bone 14
replaceitem block ~5 ~1 ~4 slot.container 2 string 13
replaceitem block ~5 ~1 ~4 slot.container 3 gunpowder 14
replaceitem block ~5 ~1 ~4 slot.container 4 arrow 23
replaceitem block ~5 ~1 ~4 slot.container 5 leather 8
replaceitem block ~5 ~1 ~4 slot.container 9 acacia_log 22
replaceitem block ~5 ~1 ~4 slot.container 10 iron_ingot 6
replaceitem block ~5 ~1 ~4 slot.container 11 gold_ingot 5
replaceitem block ~5 ~1 ~4 slot.container 12 emerald 5
replaceitem block ~5 ~1 ~4 slot.container 13 saddle 1
replaceitem block ~5 ~1 ~4 slot.container 14 golden_apple 5
loot insert ~5 ~1 ~4 loot "rsf/savanna"
loot insert ~5 ~1 ~4 loot "chests/village/village_savanna_house"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
