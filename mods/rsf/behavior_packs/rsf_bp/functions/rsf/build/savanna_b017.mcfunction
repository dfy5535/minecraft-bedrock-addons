# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1169/4224 | 主题内编号: b017/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·双坡顶皇家藏宝室 (savanna_chamber_gabled_treasury)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 11x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-8 ~6 ~10 ~8 air [] replace leaves
fill ~-6 ~1 ~-8 ~6 ~10 ~8 air [] replace leaves2
fill ~-6 ~1 ~-8 ~6 ~10 ~8 air [] replace log
fill ~-6 ~1 ~-8 ~6 ~10 ~8 air [] replace log2
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 hardened_clay [] replace air
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 hardened_clay [] replace water
fill ~-5 ~0 ~-7 ~5 ~0 ~7 stone_brick_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 stone_bricks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 coarse_dirt []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-5 ~3 ~-1 ~5 stone_bricks []
fill ~-2 ~-5 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~4 slot.container 0 leather 10
replaceitem block ~2 ~-3 ~4 slot.container 1 spider_eye 7
replaceitem block ~2 ~-3 ~4 slot.container 2 ender_pearl 6
replaceitem block ~2 ~-3 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~2 ~-3 ~4 slot.container 4 bone 16
replaceitem block ~2 ~-3 ~4 slot.container 5 string 15
replaceitem block ~2 ~-3 ~4 slot.container 9 cooked_beef 11
replaceitem block ~2 ~-3 ~4 slot.container 10 acacia_log 20
replaceitem block ~2 ~-3 ~4 slot.container 11 iron_ingot 11
replaceitem block ~2 ~-3 ~4 slot.container 12 gold_ingot 10
replaceitem block ~2 ~-3 ~4 slot.container 13 emerald 3
replaceitem block ~2 ~-3 ~4 slot.container 14 saddle 1
loot insert ~2 ~-3 ~4 loot "rsf/savanna"
loot insert ~2 ~-3 ~4 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-6 ~4 ~6 ~6 hardened_clay []
fill ~-3 ~1 ~-5 ~3 ~5 ~5 air []
fill ~-4 ~1 ~-6 ~-4 ~6 ~-6 stripped_acacia_log []
fill ~-4 ~1 ~6 ~-4 ~6 ~6 stripped_acacia_log []
fill ~4 ~1 ~-6 ~4 ~6 ~-6 stripped_acacia_log []
fill ~4 ~1 ~6 ~4 ~6 ~6 stripped_acacia_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~7 ~-7 ~-5 ~7 ~7 acacia_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-7 ~5 ~7 ~7 acacia_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~-4 ~8 ~6 acacia_stairs ["weirdo_direction"=0]
fill ~4 ~8 ~-6 ~4 ~8 ~6 acacia_stairs ["weirdo_direction"=1]
fill ~-3 ~8 ~-6 ~3 ~8 ~6 stone_brick_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 acacia_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 cobblestone_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~6 ~0 ~7 ~6 ~7 ~7 acacia_log []
fill ~5 ~7 ~6 ~7 ~7 ~8 acacia_slab []
setblock ~6 ~8 ~7 orange_terracotta []
setblock ~6 ~9 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 bone 11
replaceitem block ~3 ~1 ~5 slot.container 1 string 10
replaceitem block ~3 ~1 ~5 slot.container 2 gunpowder 11
replaceitem block ~3 ~1 ~5 slot.container 3 arrow 20
replaceitem block ~3 ~1 ~5 slot.container 4 leather 13
replaceitem block ~3 ~1 ~5 slot.container 5 spider_eye 10
replaceitem block ~3 ~1 ~5 slot.container 9 golden_apple 1
replaceitem block ~3 ~1 ~5 slot.container 10 iron_sword 1
replaceitem block ~3 ~1 ~5 slot.container 11 torch 18
replaceitem block ~3 ~1 ~5 slot.container 12 bread 13
replaceitem block ~3 ~1 ~5 slot.container 13 cooked_beef 12
replaceitem block ~3 ~1 ~5 slot.container 14 acacia_log 21
loot insert ~3 ~1 ~5 loot "rsf/savanna"
summon llama ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
