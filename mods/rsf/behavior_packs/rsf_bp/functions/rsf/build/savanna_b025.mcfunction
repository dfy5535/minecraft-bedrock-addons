# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1177/4224 | 主题内编号: b025/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·雉堞女墙四方哨塔 (savanna_tower_battlement_watch)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 9x11 | 地上高度 10格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace log2
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 hardened_clay [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 hardened_clay [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 coarse_dirt []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 hardened_clay []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 bone 16
replaceitem block ~3 ~-4 ~5 slot.container 1 string 15
replaceitem block ~3 ~-4 ~5 slot.container 2 gunpowder 8
replaceitem block ~3 ~-4 ~5 slot.container 3 arrow 17
replaceitem block ~3 ~-4 ~5 slot.container 4 leather 10
replaceitem block ~3 ~-4 ~5 slot.container 5 spider_eye 7
replaceitem block ~3 ~-4 ~5 slot.container 9 cooked_beef 10
replaceitem block ~3 ~-4 ~5 slot.container 10 acacia_log 19
replaceitem block ~3 ~-4 ~5 slot.container 11 iron_ingot 10
replaceitem block ~3 ~-4 ~5 slot.container 12 gold_ingot 9
replaceitem block ~3 ~-4 ~5 slot.container 13 emerald 9
replaceitem block ~3 ~-4 ~5 slot.container 14 saddle 1
loot insert ~3 ~-4 ~5 loot "rsf/savanna"
loot insert ~3 ~-4 ~5 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~10 ~4 hardened_clay []
fill ~-2 ~1 ~-3 ~2 ~9 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~10 ~-4 stripped_acacia_log []
fill ~-3 ~1 ~4 ~-3 ~10 ~4 stripped_acacia_log []
fill ~3 ~1 ~-4 ~3 ~10 ~-4 stripped_acacia_log []
fill ~3 ~1 ~4 ~3 ~10 ~4 stripped_acacia_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-3 ~10 ~-4 ~3 ~10 ~4 acacia_planks []
fill ~-3 ~11 ~-4 ~3 ~11 ~4 cobblestone_wall []
fill ~-2 ~11 ~-3 ~2 ~11 ~3 air []
setblock ~-3 ~11 ~-4 stripped_acacia_log []
setblock ~-3 ~12 ~-4 campfire []
setblock ~-3 ~11 ~4 stripped_acacia_log []
setblock ~-3 ~12 ~4 campfire []
setblock ~3 ~11 ~-4 stripped_acacia_log []
setblock ~3 ~12 ~-4 campfire []
setblock ~3 ~11 ~4 stripped_acacia_log []
setblock ~3 ~12 ~4 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 acacia_planks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 stripped_acacia_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 stripped_acacia_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 stone_brick_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 5x7x2) ---
fill ~5 ~0 ~7 ~5 ~5 ~7 acacia_log []
fill ~4 ~5 ~6 ~6 ~5 ~8 acacia_slab []
setblock ~5 ~6 ~7 orange_terracotta []
setblock ~5 ~7 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~9 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 bone 11
replaceitem block ~2 ~1 ~3 slot.container 1 string 10
replaceitem block ~2 ~1 ~3 slot.container 2 gunpowder 11
replaceitem block ~2 ~1 ~3 slot.container 3 arrow 20
replaceitem block ~2 ~1 ~3 slot.container 4 leather 13
replaceitem block ~2 ~1 ~3 slot.container 5 spider_eye 10
replaceitem block ~2 ~1 ~3 slot.container 9 cooked_beef 9
replaceitem block ~2 ~1 ~3 slot.container 10 acacia_log 18
replaceitem block ~2 ~1 ~3 slot.container 11 iron_ingot 9
replaceitem block ~2 ~1 ~3 slot.container 12 gold_ingot 8
replaceitem block ~2 ~1 ~3 slot.container 13 emerald 8
replaceitem block ~2 ~1 ~3 slot.container 14 saddle 1
loot insert ~2 ~1 ~3 loot "rsf/savanna"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
