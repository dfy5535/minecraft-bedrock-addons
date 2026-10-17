# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1181/4224 | 主题内编号: b029/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·奥术星象琉璃塔 (savanna_tower_mage_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log2
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

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-4 ~1 ~-5 ~4 ~10 ~5 hardened_clay []
fill ~-3 ~1 ~-4 ~3 ~9 ~4 air []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 acacia_slab []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~4 ~0 ~10 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~10 ~-5 ~4 ~10 ~5 acacia_planks []
fill ~-3 ~11 ~-4 ~3 ~12 ~4 glass []
fill ~-2 ~11 ~-3 ~2 ~11 ~3 air []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 stripped_acacia_log []
setblock ~0 ~4 ~-7 gold_block []
setblock ~0 ~5 ~-7 campfire []
fill ~0 ~0 ~7 ~0 ~3 ~7 stripped_acacia_log []
setblock ~0 ~4 ~7 gold_block []
setblock ~0 ~5 ~7 campfire []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 stripped_acacia_log []
setblock ~-6 ~4 ~0 gold_block []
setblock ~-6 ~5 ~0 campfire []
fill ~6 ~0 ~0 ~6 ~3 ~0 stripped_acacia_log []
setblock ~6 ~4 ~0 gold_block []
setblock ~6 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 6x6x6) ---
fill ~6 ~0 ~6 ~6 ~9 ~6 acacia_log []
fill ~5 ~9 ~5 ~7 ~9 ~7 acacia_slab []
setblock ~6 ~10 ~6 orange_terracotta []
setblock ~6 ~11 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-3 ~1 ~0 lectern []
setblock ~3 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 leather 13
replaceitem block ~3 ~1 ~4 slot.container 1 spider_eye 10
replaceitem block ~3 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 4 bone 11
replaceitem block ~3 ~1 ~4 slot.container 5 string 10
replaceitem block ~3 ~1 ~4 slot.container 9 iron_ingot 11
replaceitem block ~3 ~1 ~4 slot.container 10 gold_ingot 10
replaceitem block ~3 ~1 ~4 slot.container 11 emerald 3
replaceitem block ~3 ~1 ~4 slot.container 12 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 13 golden_apple 3
replaceitem block ~3 ~1 ~4 slot.container 14 iron_sword 1
loot insert ~3 ~1 ~4 loot "rsf/savanna"
summon llama ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
