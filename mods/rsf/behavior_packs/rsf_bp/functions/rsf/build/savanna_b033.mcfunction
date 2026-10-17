# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1185/4224 | 主题内编号: b033/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·太阳金顶高耸方尖碑 (savanna_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 9x11 | 地上高度 11格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace log2
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 hardened_clay [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 hardened_clay [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 coarse_dirt []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 orange_terracotta []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~4 slot.container 0 leather 10
replaceitem block ~-3 ~-3 ~4 slot.container 1 spider_eye 7
replaceitem block ~-3 ~-3 ~4 slot.container 2 ender_pearl 6
replaceitem block ~-3 ~-3 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~-3 ~-3 ~4 slot.container 4 bone 16
replaceitem block ~-3 ~-3 ~4 slot.container 5 string 15
replaceitem block ~-3 ~-3 ~4 slot.container 9 golden_apple 2
replaceitem block ~-3 ~-3 ~4 slot.container 10 iron_sword 1
replaceitem block ~-3 ~-3 ~4 slot.container 11 torch 19
replaceitem block ~-3 ~-3 ~4 slot.container 12 bread 14
replaceitem block ~-3 ~-3 ~4 slot.container 13 cooked_beef 13
replaceitem block ~-3 ~-3 ~4 slot.container 14 acacia_log 22
loot insert ~-3 ~-3 ~4 loot "rsf/savanna"
loot insert ~-3 ~-3 ~4 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-3 ~1 ~-4 ~3 ~2 ~4 hardened_clay []
fill ~-2 ~3 ~-3 ~2 ~4 ~3 acacia_planks []
fill ~-1 ~5 ~-2 ~1 ~11 ~2 stone_bricks []
fill ~-1 ~1 ~-2 ~1 ~10 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 acacia_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 acacia_planks []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 hardened_clay []
fill ~0 ~17 ~0 ~0 ~19 ~0 hay_block []
setblock ~0 ~20 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-5 ~0 ~-6 ~-5 ~4 ~-6 stripped_acacia_log []
setblock ~-5 ~5 ~-6 campfire []
fill ~-5 ~0 ~6 ~-5 ~4 ~6 stripped_acacia_log []
setblock ~-5 ~5 ~6 campfire []
fill ~5 ~0 ~-6 ~5 ~4 ~-6 stripped_acacia_log []
setblock ~5 ~5 ~-6 campfire []
fill ~5 ~0 ~6 ~5 ~4 ~6 stripped_acacia_log []
setblock ~5 ~5 ~6 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 5x6x5) ---
fill ~5 ~0 ~6 ~5 ~8 ~6 acacia_log []
fill ~4 ~8 ~5 ~6 ~8 ~7 acacia_slab []
setblock ~5 ~9 ~6 orange_terracotta []
setblock ~5 ~10 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~1 ~0 hay_block []
setblock ~0 ~2 ~0 campfire []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 bone 11
replaceitem block ~2 ~1 ~3 slot.container 1 string 10
replaceitem block ~2 ~1 ~3 slot.container 2 gunpowder 11
replaceitem block ~2 ~1 ~3 slot.container 3 arrow 20
replaceitem block ~2 ~1 ~3 slot.container 4 leather 13
replaceitem block ~2 ~1 ~3 slot.container 5 spider_eye 10
replaceitem block ~2 ~1 ~3 slot.container 9 emerald 5
replaceitem block ~2 ~1 ~3 slot.container 10 saddle 1
replaceitem block ~2 ~1 ~3 slot.container 11 golden_apple 5
replaceitem block ~2 ~1 ~3 slot.container 12 iron_sword 1
replaceitem block ~2 ~1 ~3 slot.container 13 torch 22
replaceitem block ~2 ~1 ~3 slot.container 14 bread 10
loot insert ~2 ~1 ~3 loot "rsf/savanna"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
