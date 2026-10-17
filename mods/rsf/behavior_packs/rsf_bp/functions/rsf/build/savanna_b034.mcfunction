# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1186/4224 | 主题内编号: b034/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·双子对称铭文方尖碑 (savanna_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 acacia_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 coarse_dirt []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 acacia_planks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 lantern []
setblock ~4 ~-6 ~0 lantern []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-4 ~5 slot.container 1 bone 16
replaceitem block ~0 ~-4 ~5 slot.container 2 string 15
replaceitem block ~0 ~-4 ~5 slot.container 3 gunpowder 8
replaceitem block ~0 ~-4 ~5 slot.container 4 arrow 17
replaceitem block ~0 ~-4 ~5 slot.container 5 leather 10
replaceitem block ~0 ~-4 ~5 slot.container 9 iron_sword 1
replaceitem block ~0 ~-4 ~5 slot.container 10 torch 16
replaceitem block ~0 ~-4 ~5 slot.container 11 bread 11
replaceitem block ~0 ~-4 ~5 slot.container 12 cooked_beef 10
replaceitem block ~0 ~-4 ~5 slot.container 13 acacia_log 19
replaceitem block ~0 ~-4 ~5 slot.container 14 iron_ingot 10
loot insert ~0 ~-4 ~5 loot "rsf/savanna"
loot insert ~0 ~-4 ~5 loot "chests/village/village_savanna_house"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-4 ~-5 slot.container 1 bone 14
replaceitem block ~0 ~-4 ~-5 slot.container 2 string 13
replaceitem block ~0 ~-4 ~-5 slot.container 3 gunpowder 14
replaceitem block ~0 ~-4 ~-5 slot.container 4 arrow 23
replaceitem block ~0 ~-4 ~-5 slot.container 5 leather 8
replaceitem block ~0 ~-4 ~-5 slot.container 9 iron_sword 1
replaceitem block ~0 ~-4 ~-5 slot.container 10 torch 22
replaceitem block ~0 ~-4 ~-5 slot.container 11 bread 10
replaceitem block ~0 ~-4 ~-5 slot.container 12 cooked_beef 9
replaceitem block ~0 ~-4 ~-5 slot.container 13 acacia_log 18
replaceitem block ~0 ~-4 ~-5 slot.container 14 iron_ingot 9
loot insert ~0 ~-4 ~-5 loot "rsf/savanna"
loot insert ~0 ~-4 ~-5 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~11 ~4 stone_bricks []
fill ~2 ~1 ~-4 ~5 ~11 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~-3 ~10 ~3 air []
fill ~3 ~1 ~-3 ~4 ~10 ~3 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 acacia_planks []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 acacia_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 stone_bricks []
fill ~0 ~16 ~0 ~0 ~18 ~0 gold_block []
setblock ~0 ~19 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 acacia_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

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
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 string 10
replaceitem block ~-4 ~1 ~3 slot.container 1 gunpowder 11
replaceitem block ~-4 ~1 ~3 slot.container 2 arrow 20
replaceitem block ~-4 ~1 ~3 slot.container 3 leather 13
replaceitem block ~-4 ~1 ~3 slot.container 4 spider_eye 10
replaceitem block ~-4 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~3 slot.container 9 iron_sword 1
replaceitem block ~-4 ~1 ~3 slot.container 10 torch 20
replaceitem block ~-4 ~1 ~3 slot.container 11 bread 15
replaceitem block ~-4 ~1 ~3 slot.container 12 cooked_beef 14
replaceitem block ~-4 ~1 ~3 slot.container 13 acacia_log 16
replaceitem block ~-4 ~1 ~3 slot.container 14 iron_ingot 7
loot insert ~-4 ~1 ~3 loot "rsf/savanna"
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 arrow 23
replaceitem block ~4 ~1 ~3 slot.container 1 leather 8
replaceitem block ~4 ~1 ~3 slot.container 2 spider_eye 5
replaceitem block ~4 ~1 ~3 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~3 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~3 slot.container 5 bone 14
replaceitem block ~4 ~1 ~3 slot.container 9 iron_sword 1
replaceitem block ~4 ~1 ~3 slot.container 10 torch 18
replaceitem block ~4 ~1 ~3 slot.container 11 bread 13
replaceitem block ~4 ~1 ~3 slot.container 12 cooked_beef 12
replaceitem block ~4 ~1 ~3 slot.container 13 acacia_log 21
replaceitem block ~4 ~1 ~3 slot.container 14 iron_ingot 12
loot insert ~4 ~1 ~3 loot "rsf/savanna"
loot insert ~4 ~1 ~3 loot "chests/village/village_savanna_house"
summon pillager ~0 ~1 ~-1
summon llama ~-1 ~1 ~1
summon husk ~1 ~1 ~1
