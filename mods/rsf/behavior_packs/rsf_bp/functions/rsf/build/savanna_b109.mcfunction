# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1261/4224 | 主题内编号: b109/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·环柱能量矩阵奥术厅 (savanna_arcane_rotunda_nexus)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_beacon_base]
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

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 hardened_clay []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~4 campfire []
setblock ~3 ~-6 ~-4 campfire []
setblock ~3 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~4 slot.container 0 gunpowder 8
replaceitem block ~3 ~-4 ~4 slot.container 1 arrow 17
replaceitem block ~3 ~-4 ~4 slot.container 2 leather 10
replaceitem block ~3 ~-4 ~4 slot.container 3 spider_eye 7
replaceitem block ~3 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-4 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-4 ~4 slot.container 9 emerald 4
replaceitem block ~3 ~-4 ~4 slot.container 10 saddle 1
replaceitem block ~3 ~-4 ~4 slot.container 11 golden_apple 4
replaceitem block ~3 ~-4 ~4 slot.container 12 iron_sword 1
replaceitem block ~3 ~-4 ~4 slot.container 13 torch 21
replaceitem block ~3 ~-4 ~4 slot.container 14 bread 16
loot insert ~3 ~-4 ~4 loot "rsf/savanna"
loot insert ~3 ~-4 ~4 loot "chests/village/village_savanna_house"

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

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 acacia_planks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 hardened_clay []
fill ~0 ~14 ~0 ~0 ~16 ~0 hay_block []
setblock ~0 ~17 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 stripped_acacia_log []
setblock ~0 ~4 ~-8 gold_block []
setblock ~0 ~5 ~-8 campfire []
fill ~0 ~0 ~8 ~0 ~3 ~8 stripped_acacia_log []
setblock ~0 ~4 ~8 gold_block []
setblock ~0 ~5 ~8 campfire []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 stripped_acacia_log []
setblock ~-7 ~4 ~0 gold_block []
setblock ~-7 ~5 ~0 campfire []
fill ~7 ~0 ~0 ~7 ~3 ~0 stripped_acacia_log []
setblock ~7 ~4 ~0 gold_block []
setblock ~7 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x9x6) ---
fill ~7 ~0 ~9 ~7 ~9 ~9 acacia_log []
fill ~6 ~9 ~8 ~8 ~9 ~10 acacia_slab []
setblock ~7 ~10 ~9 orange_terracotta []
setblock ~7 ~11 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 hay_block []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 leather 13
replaceitem block ~4 ~1 ~5 slot.container 1 spider_eye 10
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 4 bone 11
replaceitem block ~4 ~1 ~5 slot.container 5 string 10
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 7
replaceitem block ~4 ~1 ~5 slot.container 10 gold_ingot 6
replaceitem block ~4 ~1 ~5 slot.container 11 emerald 6
replaceitem block ~4 ~1 ~5 slot.container 12 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 13 golden_apple 6
replaceitem block ~4 ~1 ~5 slot.container 14 iron_sword 1
loot insert ~4 ~1 ~5 loot "rsf/savanna"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
