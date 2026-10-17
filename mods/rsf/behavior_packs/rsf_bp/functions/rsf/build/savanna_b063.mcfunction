# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1215/4224 | 主题内编号: b063/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·方尖碑镇压古墓穴 (savanna_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 5格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log2
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 cobblestone [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 cobblestone [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 acacia_planks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-6 ~-1 ~3 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 torch []
setblock ~2 ~-6 ~0 torch []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 leather 10
replaceitem block ~0 ~-4 ~3 slot.container 1 spider_eye 7
replaceitem block ~0 ~-4 ~3 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-4 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-4 ~3 slot.container 4 bone 16
replaceitem block ~0 ~-4 ~3 slot.container 5 string 15
replaceitem block ~0 ~-4 ~3 slot.container 9 golden_apple 4
replaceitem block ~0 ~-4 ~3 slot.container 10 iron_sword 1
replaceitem block ~0 ~-4 ~3 slot.container 11 torch 21
replaceitem block ~0 ~-4 ~3 slot.container 12 bread 16
replaceitem block ~0 ~-4 ~3 slot.container 13 cooked_beef 8
replaceitem block ~0 ~-4 ~3 slot.container 14 acacia_log 17
loot insert ~0 ~-4 ~3 loot "rsf/savanna"
loot insert ~0 ~-4 ~3 loot "chests/village/village_savanna_house"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 leather 8
replaceitem block ~0 ~-4 ~-3 slot.container 1 spider_eye 5
replaceitem block ~0 ~-4 ~-3 slot.container 2 ender_pearl 4
replaceitem block ~0 ~-4 ~-3 slot.container 3 rotten_flesh 15
replaceitem block ~0 ~-4 ~-3 slot.container 4 bone 14
replaceitem block ~0 ~-4 ~-3 slot.container 5 string 13
replaceitem block ~0 ~-4 ~-3 slot.container 9 golden_apple 3
replaceitem block ~0 ~-4 ~-3 slot.container 10 iron_sword 1
replaceitem block ~0 ~-4 ~-3 slot.container 11 torch 20
replaceitem block ~0 ~-4 ~-3 slot.container 12 bread 15
replaceitem block ~0 ~-4 ~-3 slot.container 13 cooked_beef 14
replaceitem block ~0 ~-4 ~-3 slot.container 14 acacia_log 16
loot insert ~0 ~-4 ~-3 loot "rsf/savanna"
loot insert ~0 ~-4 ~-3 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~9 ~5 cobblestone []
fill ~-3 ~1 ~-4 ~3 ~8 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~10 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~10 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~10 ~5 air []
fill ~4 ~1 ~5 ~4 ~10 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~9 ~-4 acacia_log []
fill ~3 ~1 ~-4 ~3 ~9 ~-4 acacia_log []
fill ~-3 ~1 ~4 ~-3 ~9 ~4 acacia_log []
fill ~3 ~1 ~4 ~3 ~9 ~4 acacia_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 orange_terracotta []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 cobblestone []
fill ~0 ~15 ~0 ~0 ~17 ~0 emerald_block []
setblock ~0 ~18 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 stone_bricks []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~6 ~0 ~7 ~6 ~8 ~7 acacia_log []
fill ~5 ~8 ~6 ~7 ~8 ~8 acacia_slab []
setblock ~6 ~9 ~7 orange_terracotta []
setblock ~6 ~10 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-3 ~1 ~0 lectern []
setblock ~3 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 2 bone 11
replaceitem block ~3 ~1 ~4 slot.container 3 string 10
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 11
replaceitem block ~3 ~1 ~4 slot.container 5 arrow 20
replaceitem block ~3 ~1 ~4 slot.container 9 emerald 7
replaceitem block ~3 ~1 ~4 slot.container 10 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 11 golden_apple 7
replaceitem block ~3 ~1 ~4 slot.container 12 iron_sword 1
replaceitem block ~3 ~1 ~4 slot.container 13 torch 17
replaceitem block ~3 ~1 ~4 slot.container 14 bread 12
loot insert ~3 ~1 ~4 loot "rsf/savanna"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
