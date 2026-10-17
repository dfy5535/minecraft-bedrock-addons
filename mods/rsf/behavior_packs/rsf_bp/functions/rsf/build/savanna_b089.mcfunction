# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1241/4224 | 主题内编号: b089/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·四柱挑檐祈愿凉亭 (savanna_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 9x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~11 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~11 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~11 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~11 ~6 air [] replace log2
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 hardened_clay [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 hardened_clay [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 coarse_dirt []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 acacia_planks []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~7 ~4 hardened_clay []
fill ~-2 ~1 ~-3 ~2 ~6 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 stripped_acacia_log []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 stripped_acacia_log []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 stripped_acacia_log []
fill ~3 ~1 ~4 ~3 ~7 ~4 stripped_acacia_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 stone_brick_slab []
fill ~-2 ~8 ~-3 ~2 ~9 ~3 stone_bricks []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 acacia_slab []
setblock ~0 ~11 ~0 hay_block []
setblock ~0 ~12 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 cobblestone_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 5x5x6) ---
fill ~5 ~0 ~5 ~5 ~9 ~5 acacia_log []
fill ~4 ~9 ~4 ~6 ~9 ~6 acacia_slab []
setblock ~5 ~10 ~5 orange_terracotta []
setblock ~5 ~11 ~5 lantern []

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
replaceitem block ~2 ~1 ~3 slot.container 9 iron_ingot 8
replaceitem block ~2 ~1 ~3 slot.container 10 gold_ingot 7
replaceitem block ~2 ~1 ~3 slot.container 11 emerald 7
replaceitem block ~2 ~1 ~3 slot.container 12 saddle 1
replaceitem block ~2 ~1 ~3 slot.container 13 golden_apple 7
replaceitem block ~2 ~1 ~3 slot.container 14 iron_sword 1
loot insert ~2 ~1 ~3 loot "rsf/savanna"
summon llama ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~2 ~0
