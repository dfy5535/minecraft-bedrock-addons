# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1277/4224 | 主题内编号: b125/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·巨型阶梯金字塔神王殿 (savanna_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pagoda_double] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 5格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 hardened_clay [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 hardened_clay [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 coarse_dirt []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 obsidian []
setblock ~0 ~-6 ~0 hay_block []
setblock ~0 ~-7 ~0 campfire []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~4 ~-4 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-4 ~0 slot.container 0 leather 10
replaceitem block ~4 ~-4 ~0 slot.container 1 spider_eye 7
replaceitem block ~4 ~-4 ~0 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-4 ~0 slot.container 3 rotten_flesh 17
replaceitem block ~4 ~-4 ~0 slot.container 4 bone 16
replaceitem block ~4 ~-4 ~0 slot.container 5 string 15
replaceitem block ~4 ~-4 ~0 slot.container 9 golden_apple 2
replaceitem block ~4 ~-4 ~0 slot.container 10 iron_sword 1
replaceitem block ~4 ~-4 ~0 slot.container 11 torch 19
replaceitem block ~4 ~-4 ~0 slot.container 12 bread 14
replaceitem block ~4 ~-4 ~0 slot.container 13 cooked_beef 13
replaceitem block ~4 ~-4 ~0 slot.container 14 acacia_log 22
loot insert ~4 ~-4 ~0 loot "rsf/savanna"
loot insert ~4 ~-4 ~0 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 hardened_clay []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 acacia_planks []
fill ~-4 ~5 ~-5 ~4 ~9 ~5 stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~8 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 acacia_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 acacia_slab []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 cobblestone []
fill ~-4 ~11 ~-5 ~4 ~11 ~5 cobblestone_slab []
setblock ~0 ~12 ~0 gold_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 stripped_acacia_log []
setblock ~0 ~4 ~-9 gold_block []
setblock ~0 ~5 ~-9 campfire []
fill ~0 ~0 ~9 ~0 ~3 ~9 stripped_acacia_log []
setblock ~0 ~4 ~9 gold_block []
setblock ~0 ~5 ~9 campfire []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 stripped_acacia_log []
setblock ~-8 ~4 ~0 gold_block []
setblock ~-8 ~5 ~0 campfire []
fill ~8 ~0 ~0 ~8 ~3 ~0 stripped_acacia_log []
setblock ~8 ~4 ~0 gold_block []
setblock ~8 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~8 ~0 ~8 ~8 ~5 ~8 acacia_log []
fill ~7 ~5 ~7 ~9 ~5 ~9 acacia_slab []
setblock ~8 ~6 ~8 orange_terracotta []
setblock ~8 ~7 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 hay_block []
setblock ~0 ~2 ~0 campfire []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 leather 13
replaceitem block ~5 ~1 ~6 slot.container 1 spider_eye 10
replaceitem block ~5 ~1 ~6 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 4 bone 11
replaceitem block ~5 ~1 ~6 slot.container 5 string 10
replaceitem block ~5 ~1 ~6 slot.container 9 cooked_beef 11
replaceitem block ~5 ~1 ~6 slot.container 10 acacia_log 20
replaceitem block ~5 ~1 ~6 slot.container 11 iron_ingot 11
replaceitem block ~5 ~1 ~6 slot.container 12 gold_ingot 10
replaceitem block ~5 ~1 ~6 slot.container 13 emerald 3
replaceitem block ~5 ~1 ~6 slot.container 14 saddle 1
loot insert ~5 ~1 ~6 loot "rsf/savanna"
summon llama ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-4 ~0
