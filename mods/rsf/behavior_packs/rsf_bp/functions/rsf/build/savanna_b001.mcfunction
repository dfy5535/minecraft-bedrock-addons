# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1153/4224 | 主题内编号: b001/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·三层阶梯圣火祭坛 (savanna_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 hardened_clay [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 hardened_clay [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 coarse_dirt []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 stone_bricks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 leather 10
replaceitem block ~2 ~-3 ~3 slot.container 1 spider_eye 7
replaceitem block ~2 ~-3 ~3 slot.container 2 ender_pearl 6
replaceitem block ~2 ~-3 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~2 ~-3 ~3 slot.container 4 bone 16
replaceitem block ~2 ~-3 ~3 slot.container 5 string 15
replaceitem block ~2 ~-3 ~3 slot.container 9 iron_ingot 7
replaceitem block ~2 ~-3 ~3 slot.container 10 gold_ingot 6
replaceitem block ~2 ~-3 ~3 slot.container 11 emerald 6
replaceitem block ~2 ~-3 ~3 slot.container 12 saddle 1
replaceitem block ~2 ~-3 ~3 slot.container 13 golden_apple 6
replaceitem block ~2 ~-3 ~3 slot.container 14 iron_sword 1
loot insert ~2 ~-3 ~3 loot "rsf/savanna"
loot insert ~2 ~-3 ~3 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 hardened_clay []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 acacia_planks []
fill ~-2 ~5 ~-3 ~2 ~6 ~3 stone_bricks []
fill ~-2 ~1 ~-3 ~2 ~5 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 acacia_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-4 ~6 ~-5 ~-4 ~8 ~-5 stripped_acacia_log []
setblock ~-4 ~9 ~-5 campfire []
fill ~-4 ~6 ~5 ~-4 ~8 ~5 stripped_acacia_log []
setblock ~-4 ~9 ~5 campfire []
fill ~4 ~6 ~-5 ~4 ~8 ~-5 stripped_acacia_log []
setblock ~4 ~9 ~-5 campfire []
fill ~4 ~6 ~5 ~4 ~8 ~5 stripped_acacia_log []
setblock ~4 ~9 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 acacia_planks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 6x8x3) ---
fill ~6 ~0 ~8 ~6 ~6 ~8 acacia_log []
fill ~5 ~6 ~7 ~7 ~6 ~9 acacia_slab []
setblock ~6 ~7 ~8 orange_terracotta []
setblock ~6 ~8 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 emerald_block []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 11
replaceitem block ~3 ~1 ~4 slot.container 1 string 10
replaceitem block ~3 ~1 ~4 slot.container 2 gunpowder 11
replaceitem block ~3 ~1 ~4 slot.container 3 arrow 20
replaceitem block ~3 ~1 ~4 slot.container 4 leather 13
replaceitem block ~3 ~1 ~4 slot.container 5 spider_eye 10
replaceitem block ~3 ~1 ~4 slot.container 9 torch 21
replaceitem block ~3 ~1 ~4 slot.container 10 bread 16
replaceitem block ~3 ~1 ~4 slot.container 11 cooked_beef 8
replaceitem block ~3 ~1 ~4 slot.container 12 acacia_log 17
replaceitem block ~3 ~1 ~4 slot.container 13 iron_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 14 gold_ingot 7
loot insert ~3 ~1 ~4 loot "rsf/savanna"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
