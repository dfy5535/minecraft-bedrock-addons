# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1211/4224 | 主题内编号: b059/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·阶梯金字塔法老墓室 (savanna_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[underground_forge] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 5格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 cobblestone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 acacia_planks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 hardened_clay []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 bone 16
replaceitem block ~3 ~-4 ~5 slot.container 1 string 15
replaceitem block ~3 ~-4 ~5 slot.container 2 gunpowder 8
replaceitem block ~3 ~-4 ~5 slot.container 3 arrow 17
replaceitem block ~3 ~-4 ~5 slot.container 4 leather 10
replaceitem block ~3 ~-4 ~5 slot.container 5 spider_eye 7
replaceitem block ~3 ~-4 ~5 slot.container 9 cooked_beef 10
replaceitem block ~3 ~-4 ~5 slot.container 10 acacia_log 19
replaceitem block ~3 ~-4 ~5 slot.container 11 iron_ingot 10
replaceitem block ~3 ~-4 ~5 slot.container 12 gold_ingot 9
replaceitem block ~3 ~-4 ~5 slot.container 13 emerald 9
replaceitem block ~3 ~-4 ~5 slot.container 14 saddle 1
loot insert ~3 ~-4 ~5 loot "rsf/savanna"
loot insert ~3 ~-4 ~5 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 cobblestone []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 orange_terracotta []
fill ~-4 ~5 ~-5 ~4 ~7 ~5 acacia_planks []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 stone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 orange_terracotta []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 acacia_planks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 emerald_block []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~4 ~-9 acacia_log []
setblock ~-8 ~5 ~-9 torch []
fill ~-8 ~0 ~9 ~-8 ~4 ~9 acacia_log []
setblock ~-8 ~5 ~9 torch []
fill ~8 ~0 ~-9 ~8 ~4 ~-9 acacia_log []
setblock ~8 ~5 ~-9 torch []
fill ~8 ~0 ~9 ~8 ~4 ~9 acacia_log []
setblock ~8 ~5 ~9 torch []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~8 ~0 ~8 ~8 ~9 ~8 acacia_log []
fill ~7 ~9 ~7 ~9 ~9 ~9 acacia_slab []
setblock ~8 ~10 ~8 orange_terracotta []
setblock ~8 ~11 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 lantern []
fill ~-5 ~1 ~6 ~-1 ~2 ~6 barrel ["facing_direction"=2]
setblock ~0 ~1 ~6 crafting_table []
setblock ~0 ~1 ~0 emerald_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 11
replaceitem block ~5 ~1 ~6 slot.container 1 arrow 20
replaceitem block ~5 ~1 ~6 slot.container 2 leather 13
replaceitem block ~5 ~1 ~6 slot.container 3 spider_eye 10
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 9 iron_ingot 6
replaceitem block ~5 ~1 ~6 slot.container 10 gold_ingot 5
replaceitem block ~5 ~1 ~6 slot.container 11 emerald 5
replaceitem block ~5 ~1 ~6 slot.container 12 saddle 1
replaceitem block ~5 ~1 ~6 slot.container 13 golden_apple 5
replaceitem block ~5 ~1 ~6 slot.container 14 iron_sword 1
loot insert ~5 ~1 ~6 loot "rsf/savanna"
summon llama ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-4 ~0
