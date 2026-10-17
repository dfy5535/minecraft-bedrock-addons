# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1225/4224 | 主题内编号: b073/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·八方图腾圣火石阵 (savanna_totem_eight_pillars)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 hardened_clay [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 hardened_clay [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 coarse_dirt []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 leather 10
replaceitem block ~3 ~-3 ~4 slot.container 1 spider_eye 7
replaceitem block ~3 ~-3 ~4 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~3 ~-3 ~4 slot.container 4 bone 16
replaceitem block ~3 ~-3 ~4 slot.container 5 string 15
replaceitem block ~3 ~-3 ~4 slot.container 9 torch 19
replaceitem block ~3 ~-3 ~4 slot.container 10 bread 14
replaceitem block ~3 ~-3 ~4 slot.container 11 cooked_beef 13
replaceitem block ~3 ~-3 ~4 slot.container 12 acacia_log 22
replaceitem block ~3 ~-3 ~4 slot.container 13 iron_ingot 6
replaceitem block ~3 ~-3 ~4 slot.container 14 gold_ingot 5
loot insert ~3 ~-3 ~4 loot "rsf/savanna"
loot insert ~3 ~-3 ~4 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 hardened_clay []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~8 ~6 air []
fill ~5 ~1 ~6 ~5 ~8 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 stripped_acacia_log []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 stripped_acacia_log []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 stripped_acacia_log []
fill ~4 ~1 ~5 ~4 ~7 ~5 stripped_acacia_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~7 ~-6 ~-5 ~9 ~-6 stripped_acacia_log []
setblock ~-5 ~10 ~-6 campfire []
fill ~-5 ~7 ~6 ~-5 ~9 ~6 stripped_acacia_log []
setblock ~-5 ~10 ~6 campfire []
fill ~5 ~7 ~-6 ~5 ~9 ~-6 stripped_acacia_log []
setblock ~5 ~10 ~-6 campfire []
fill ~5 ~7 ~6 ~5 ~9 ~6 stripped_acacia_log []
setblock ~5 ~10 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 acacia_planks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x9x5) ---
fill ~7 ~0 ~9 ~7 ~8 ~9 acacia_log []
fill ~6 ~8 ~8 ~8 ~8 ~10 acacia_slab []
setblock ~7 ~9 ~9 orange_terracotta []
setblock ~7 ~10 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 11
replaceitem block ~4 ~1 ~5 slot.container 1 string 10
replaceitem block ~4 ~1 ~5 slot.container 2 gunpowder 11
replaceitem block ~4 ~1 ~5 slot.container 3 arrow 20
replaceitem block ~4 ~1 ~5 slot.container 4 leather 13
replaceitem block ~4 ~1 ~5 slot.container 5 spider_eye 10
replaceitem block ~4 ~1 ~5 slot.container 9 emerald 3
replaceitem block ~4 ~1 ~5 slot.container 10 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 3
replaceitem block ~4 ~1 ~5 slot.container 12 iron_sword 1
replaceitem block ~4 ~1 ~5 slot.container 13 torch 20
replaceitem block ~4 ~1 ~5 slot.container 14 bread 15
loot insert ~4 ~1 ~5 loot "rsf/savanna"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
