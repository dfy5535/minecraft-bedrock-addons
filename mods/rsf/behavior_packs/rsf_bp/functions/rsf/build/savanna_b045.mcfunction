# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1197/4224 | 主题内编号: b045/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·十二柱神殿试炼场 (savanna_arena_pillared_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 hardened_clay [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 hardened_clay [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 coarse_dirt []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 acacia_planks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-2 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~-2 ~-2 ~3 slot.container 1 bone 16
replaceitem block ~-2 ~-2 ~3 slot.container 2 string 15
replaceitem block ~-2 ~-2 ~3 slot.container 3 gunpowder 8
replaceitem block ~-2 ~-2 ~3 slot.container 4 arrow 17
replaceitem block ~-2 ~-2 ~3 slot.container 5 leather 10
replaceitem block ~-2 ~-2 ~3 slot.container 9 gold_ingot 5
replaceitem block ~-2 ~-2 ~3 slot.container 10 emerald 5
replaceitem block ~-2 ~-2 ~3 slot.container 11 saddle 1
replaceitem block ~-2 ~-2 ~3 slot.container 12 golden_apple 5
replaceitem block ~-2 ~-2 ~3 slot.container 13 iron_sword 1
replaceitem block ~-2 ~-2 ~3 slot.container 14 torch 22
loot insert ~-2 ~-2 ~3 loot "rsf/savanna"
loot insert ~-2 ~-2 ~3 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 acacia_planks []
fill ~-6 ~1 ~-7 ~-6 ~6 ~-7 stripped_acacia_log []
fill ~-6 ~1 ~7 ~-6 ~6 ~7 stripped_acacia_log []
fill ~-4 ~1 ~-7 ~-4 ~6 ~-7 stripped_acacia_log []
fill ~-4 ~1 ~7 ~-4 ~6 ~7 stripped_acacia_log []
fill ~-2 ~1 ~-7 ~-2 ~6 ~-7 stripped_acacia_log []
fill ~-2 ~1 ~7 ~-2 ~6 ~7 stripped_acacia_log []
fill ~0 ~1 ~-7 ~0 ~6 ~-7 stripped_acacia_log []
fill ~0 ~1 ~7 ~0 ~6 ~7 stripped_acacia_log []
fill ~2 ~1 ~-7 ~2 ~6 ~-7 stripped_acacia_log []
fill ~2 ~1 ~7 ~2 ~6 ~7 stripped_acacia_log []
fill ~4 ~1 ~-7 ~4 ~6 ~-7 stripped_acacia_log []
fill ~4 ~1 ~7 ~4 ~6 ~7 stripped_acacia_log []
fill ~6 ~1 ~-7 ~6 ~6 ~-7 stripped_acacia_log []
fill ~6 ~1 ~7 ~6 ~6 ~7 stripped_acacia_log []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 stripped_acacia_log []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 stripped_acacia_log []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 stripped_acacia_log []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 stripped_acacia_log []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 stripped_acacia_log []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 stripped_acacia_log []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 stripped_acacia_log []
fill ~6 ~1 ~1 ~6 ~6 ~1 stripped_acacia_log []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 stripped_acacia_log []
fill ~6 ~1 ~3 ~6 ~6 ~3 stripped_acacia_log []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 stripped_acacia_log []
fill ~6 ~1 ~5 ~6 ~6 ~5 stripped_acacia_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-7 ~-6 ~9 ~-7 stripped_acacia_log []
setblock ~-6 ~10 ~-7 campfire []
fill ~-6 ~7 ~7 ~-6 ~9 ~7 stripped_acacia_log []
setblock ~-6 ~10 ~7 campfire []
fill ~6 ~7 ~-7 ~6 ~9 ~-7 stripped_acacia_log []
setblock ~6 ~10 ~-7 campfire []
fill ~6 ~7 ~7 ~6 ~9 ~7 stripped_acacia_log []
setblock ~6 ~10 ~7 campfire []

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

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~8 ~0 ~9 ~8 ~5 ~9 acacia_log []
fill ~7 ~5 ~8 ~9 ~5 ~10 acacia_slab []
setblock ~8 ~6 ~9 orange_terracotta []
setblock ~8 ~7 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 hay_block []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 leather 13
replaceitem block ~5 ~1 ~6 slot.container 1 spider_eye 10
replaceitem block ~5 ~1 ~6 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 4 bone 11
replaceitem block ~5 ~1 ~6 slot.container 5 string 10
replaceitem block ~5 ~1 ~6 slot.container 9 cooked_beef 8
replaceitem block ~5 ~1 ~6 slot.container 10 acacia_log 17
replaceitem block ~5 ~1 ~6 slot.container 11 iron_ingot 8
replaceitem block ~5 ~1 ~6 slot.container 12 gold_ingot 7
replaceitem block ~5 ~1 ~6 slot.container 13 emerald 7
replaceitem block ~5 ~1 ~6 slot.container 14 saddle 1
loot insert ~5 ~1 ~6 loot "rsf/savanna"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
