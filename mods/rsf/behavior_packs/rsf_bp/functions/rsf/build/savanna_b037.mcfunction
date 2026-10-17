# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1189/4224 | 主题内编号: b037/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·环廊聖柱纪念碑 (savanna_obelisk_rotunda_pillar)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 hardened_clay [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 hardened_clay [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 coarse_dirt []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 hay_block []
setblock ~0 ~-6 ~0 campfire []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 leather 10
replaceitem block ~3 ~-3 ~0 slot.container 1 spider_eye 7
replaceitem block ~3 ~-3 ~0 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-3 ~0 slot.container 3 rotten_flesh 17
replaceitem block ~3 ~-3 ~0 slot.container 4 bone 16
replaceitem block ~3 ~-3 ~0 slot.container 5 string 15
replaceitem block ~3 ~-3 ~0 slot.container 9 iron_ingot 10
replaceitem block ~3 ~-3 ~0 slot.container 10 gold_ingot 9
replaceitem block ~3 ~-3 ~0 slot.container 11 emerald 9
replaceitem block ~3 ~-3 ~0 slot.container 12 saddle 1
replaceitem block ~3 ~-3 ~0 slot.container 13 golden_apple 2
replaceitem block ~3 ~-3 ~0 slot.container 14 iron_sword 1
loot insert ~3 ~-3 ~0 loot "rsf/savanna"
loot insert ~3 ~-3 ~0 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 acacia_planks []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 stripped_acacia_log []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 stripped_acacia_log []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 stripped_acacia_log []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 stripped_acacia_log []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 stripped_acacia_log []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 stripped_acacia_log []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 stripped_acacia_log []
fill ~1 ~1 ~6 ~1 ~7 ~6 stripped_acacia_log []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 stripped_acacia_log []
fill ~3 ~1 ~6 ~3 ~7 ~6 stripped_acacia_log []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 stripped_acacia_log []
fill ~5 ~1 ~6 ~5 ~7 ~6 stripped_acacia_log []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 stripped_acacia_log []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 stripped_acacia_log []
fill ~-5 ~1 ~-2 ~-5 ~7 ~-2 stripped_acacia_log []
fill ~5 ~1 ~-2 ~5 ~7 ~-2 stripped_acacia_log []
fill ~-5 ~1 ~0 ~-5 ~7 ~0 stripped_acacia_log []
fill ~5 ~1 ~0 ~5 ~7 ~0 stripped_acacia_log []
fill ~-5 ~1 ~2 ~-5 ~7 ~2 stripped_acacia_log []
fill ~5 ~1 ~2 ~5 ~7 ~2 stripped_acacia_log []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 stripped_acacia_log []
fill ~5 ~1 ~4 ~5 ~7 ~4 stripped_acacia_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~8 ~-6 ~-5 ~10 ~-6 stripped_acacia_log []
setblock ~-5 ~11 ~-6 campfire []
fill ~-5 ~8 ~6 ~-5 ~10 ~6 stripped_acacia_log []
setblock ~-5 ~11 ~6 campfire []
fill ~5 ~8 ~-6 ~5 ~10 ~-6 stripped_acacia_log []
setblock ~5 ~11 ~-6 campfire []
fill ~5 ~8 ~6 ~5 ~10 ~6 stripped_acacia_log []
setblock ~5 ~11 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x9x4) ---
fill ~7 ~0 ~9 ~7 ~7 ~9 acacia_log []
fill ~6 ~7 ~8 ~8 ~7 ~10 acacia_slab []
setblock ~7 ~8 ~9 orange_terracotta []
setblock ~7 ~9 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 hay_block []
setblock ~0 ~2 ~0 campfire []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 leather 13
replaceitem block ~4 ~1 ~5 slot.container 1 spider_eye 10
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 4 bone 11
replaceitem block ~4 ~1 ~5 slot.container 5 string 10
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 7
replaceitem block ~4 ~1 ~5 slot.container 10 iron_sword 1
replaceitem block ~4 ~1 ~5 slot.container 11 torch 17
replaceitem block ~4 ~1 ~5 slot.container 12 bread 12
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_beef 11
replaceitem block ~4 ~1 ~5 slot.container 14 acacia_log 20
loot insert ~4 ~1 ~5 loot "rsf/savanna"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
