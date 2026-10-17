# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1217/4224 | 主题内编号: b065/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·断柱露天古神庙废墟 (savanna_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace log2
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 hardened_clay [] replace air
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 hardened_clay [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 stone_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 stone_bricks []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 coarse_dirt []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 acacia_planks []

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~6 ~-7 ~5 ~6 ~7 acacia_planks []
fill ~-5 ~1 ~-7 ~-5 ~5 ~-7 stripped_acacia_log []
fill ~-5 ~1 ~7 ~-5 ~5 ~7 stripped_acacia_log []
fill ~-3 ~1 ~-7 ~-3 ~5 ~-7 stripped_acacia_log []
fill ~-3 ~1 ~7 ~-3 ~5 ~7 stripped_acacia_log []
fill ~-1 ~1 ~-7 ~-1 ~5 ~-7 stripped_acacia_log []
fill ~-1 ~1 ~7 ~-1 ~5 ~7 stripped_acacia_log []
fill ~1 ~1 ~-7 ~1 ~5 ~-7 stripped_acacia_log []
fill ~1 ~1 ~7 ~1 ~5 ~7 stripped_acacia_log []
fill ~3 ~1 ~-7 ~3 ~5 ~-7 stripped_acacia_log []
fill ~3 ~1 ~7 ~3 ~5 ~7 stripped_acacia_log []
fill ~5 ~1 ~-7 ~5 ~5 ~-7 stripped_acacia_log []
fill ~5 ~1 ~7 ~5 ~5 ~7 stripped_acacia_log []
fill ~-5 ~1 ~-5 ~-5 ~5 ~-5 stripped_acacia_log []
fill ~5 ~1 ~-5 ~5 ~5 ~-5 stripped_acacia_log []
fill ~-5 ~1 ~-3 ~-5 ~5 ~-3 stripped_acacia_log []
fill ~5 ~1 ~-3 ~5 ~5 ~-3 stripped_acacia_log []
fill ~-5 ~1 ~-1 ~-5 ~5 ~-1 stripped_acacia_log []
fill ~5 ~1 ~-1 ~5 ~5 ~-1 stripped_acacia_log []
fill ~-5 ~1 ~1 ~-5 ~5 ~1 stripped_acacia_log []
fill ~5 ~1 ~1 ~5 ~5 ~1 stripped_acacia_log []
fill ~-5 ~1 ~3 ~-5 ~5 ~3 stripped_acacia_log []
fill ~5 ~1 ~3 ~5 ~5 ~3 stripped_acacia_log []
fill ~-5 ~1 ~5 ~-5 ~5 ~5 stripped_acacia_log []
fill ~5 ~1 ~5 ~5 ~5 ~5 stripped_acacia_log []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~6 ~-7 ~5 ~6 ~7 stone_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-5 ~5 ~-1 ~-5 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-9 ~-7 ~4 ~-9 stripped_acacia_log []
setblock ~-7 ~5 ~-9 campfire []
fill ~-7 ~0 ~9 ~-7 ~4 ~9 stripped_acacia_log []
setblock ~-7 ~5 ~9 campfire []
fill ~7 ~0 ~-9 ~7 ~4 ~-9 stripped_acacia_log []
setblock ~7 ~5 ~-9 campfire []
fill ~7 ~0 ~9 ~7 ~4 ~9 stripped_acacia_log []
setblock ~7 ~5 ~9 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~7 ~0 ~8 ~7 ~5 ~8 acacia_log []
fill ~6 ~5 ~7 ~8 ~5 ~9 acacia_slab []
setblock ~7 ~6 ~8 orange_terracotta []
setblock ~7 ~7 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 hay_block []
setblock ~0 ~2 ~0 campfire []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 bone 11
replaceitem block ~4 ~1 ~6 slot.container 1 string 10
replaceitem block ~4 ~1 ~6 slot.container 2 gunpowder 11
replaceitem block ~4 ~1 ~6 slot.container 3 arrow 20
replaceitem block ~4 ~1 ~6 slot.container 4 leather 13
replaceitem block ~4 ~1 ~6 slot.container 5 spider_eye 10
replaceitem block ~4 ~1 ~6 slot.container 9 cooked_beef 14
replaceitem block ~4 ~1 ~6 slot.container 10 acacia_log 16
replaceitem block ~4 ~1 ~6 slot.container 11 iron_ingot 7
replaceitem block ~4 ~1 ~6 slot.container 12 gold_ingot 6
replaceitem block ~4 ~1 ~6 slot.container 13 emerald 6
replaceitem block ~4 ~1 ~6 slot.container 14 saddle 1
loot insert ~4 ~1 ~6 loot "rsf/savanna"
summon llama ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
