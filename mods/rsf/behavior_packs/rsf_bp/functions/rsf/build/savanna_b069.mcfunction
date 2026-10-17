# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1221/4224 | 主题内编号: b069/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·藤蔓侵蚀十字修道院 (savanna_ruin_overgrown_abbey)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 hardened_clay [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 hardened_clay [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 coarse_dirt []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 acacia_planks []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 campfire []
setblock ~2 ~-5 ~0 campfire []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 2 bone 16
replaceitem block ~0 ~-3 ~-4 slot.container 3 string 15
replaceitem block ~0 ~-3 ~-4 slot.container 4 gunpowder 8
replaceitem block ~0 ~-3 ~-4 slot.container 5 arrow 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 torch 22
replaceitem block ~0 ~-3 ~-4 slot.container 10 bread 10
replaceitem block ~0 ~-3 ~-4 slot.container 11 cooked_beef 9
replaceitem block ~0 ~-3 ~-4 slot.container 12 acacia_log 18
replaceitem block ~0 ~-3 ~-4 slot.container 13 iron_ingot 9
replaceitem block ~0 ~-3 ~-4 slot.container 14 gold_ingot 8
loot insert ~0 ~-3 ~-4 loot "rsf/savanna"
loot insert ~0 ~-3 ~-4 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~6 ~6 hardened_clay []
fill ~-5 ~1 ~-2 ~5 ~6 ~2 hardened_clay []
fill ~-1 ~1 ~-5 ~1 ~5 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~5 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 stone_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-5 ~5 ~-1 ~-5 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 acacia_log []
setblock ~0 ~4 ~-8 hay_block []
setblock ~0 ~5 ~-8 torch []
fill ~0 ~0 ~8 ~0 ~3 ~8 acacia_log []
setblock ~0 ~4 ~8 hay_block []
setblock ~0 ~5 ~8 torch []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 acacia_log []
setblock ~-7 ~4 ~0 hay_block []
setblock ~-7 ~5 ~0 torch []
fill ~7 ~0 ~0 ~7 ~3 ~0 acacia_log []
setblock ~7 ~4 ~0 hay_block []
setblock ~7 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~7 ~0 ~8 ~7 ~9 ~8 acacia_log []
fill ~6 ~9 ~7 ~8 ~9 ~9 acacia_slab []
setblock ~7 ~10 ~8 orange_terracotta []
setblock ~7 ~11 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~5 bookshelf []
setblock ~4 ~1 ~5 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 leather 13
replaceitem block ~4 ~1 ~5 slot.container 1 spider_eye 10
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 4 bone 11
replaceitem block ~4 ~1 ~5 slot.container 5 string 10
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 10 gold_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 11 emerald 8
replaceitem block ~4 ~1 ~5 slot.container 12 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 13 golden_apple 1
replaceitem block ~4 ~1 ~5 slot.container 14 iron_sword 1
loot insert ~4 ~1 ~5 loot "rsf/savanna"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
