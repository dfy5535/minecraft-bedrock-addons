# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1273/4224 | 主题内编号: b121/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·卫城廊柱王座大殿与地宫 (savanna_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 5格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 hardened_clay [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 hardened_clay [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 coarse_dirt []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 hardened_clay []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 campfire []
setblock ~4 ~-6 ~0 campfire []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~5 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-4 ~5 slot.container 2 bone 16
replaceitem block ~0 ~-4 ~5 slot.container 3 string 15
replaceitem block ~0 ~-4 ~5 slot.container 4 gunpowder 8
replaceitem block ~0 ~-4 ~5 slot.container 5 arrow 17
replaceitem block ~0 ~-4 ~5 slot.container 9 cooked_beef 13
replaceitem block ~0 ~-4 ~5 slot.container 10 acacia_log 22
replaceitem block ~0 ~-4 ~5 slot.container 11 iron_ingot 6
replaceitem block ~0 ~-4 ~5 slot.container 12 gold_ingot 5
replaceitem block ~0 ~-4 ~5 slot.container 13 emerald 5
replaceitem block ~0 ~-4 ~5 slot.container 14 saddle 1
loot insert ~0 ~-4 ~5 loot "rsf/savanna"
loot insert ~0 ~-4 ~5 loot "chests/village/village_savanna_house"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 ender_pearl 4
replaceitem block ~0 ~-4 ~-5 slot.container 1 rotten_flesh 15
replaceitem block ~0 ~-4 ~-5 slot.container 2 bone 14
replaceitem block ~0 ~-4 ~-5 slot.container 3 string 13
replaceitem block ~0 ~-4 ~-5 slot.container 4 gunpowder 14
replaceitem block ~0 ~-4 ~-5 slot.container 5 arrow 23
replaceitem block ~0 ~-4 ~-5 slot.container 9 cooked_beef 12
replaceitem block ~0 ~-4 ~-5 slot.container 10 acacia_log 21
replaceitem block ~0 ~-4 ~-5 slot.container 11 iron_ingot 12
replaceitem block ~0 ~-4 ~-5 slot.container 12 gold_ingot 4
replaceitem block ~0 ~-4 ~-5 slot.container 13 emerald 4
replaceitem block ~0 ~-4 ~-5 slot.container 14 saddle 1
loot insert ~0 ~-4 ~-5 loot "rsf/savanna"
loot insert ~0 ~-4 ~-5 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-6 ~1 ~-1 ~6 ~8 ~7 hardened_clay []
fill ~-5 ~1 ~0 ~5 ~7 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~8 ~-7 stripped_acacia_log []
fill ~-4 ~1 ~-7 ~-4 ~8 ~-7 stripped_acacia_log []
fill ~-2 ~1 ~-7 ~-2 ~8 ~-7 stripped_acacia_log []
fill ~0 ~1 ~-7 ~0 ~8 ~-7 stripped_acacia_log []
fill ~2 ~1 ~-7 ~2 ~8 ~-7 stripped_acacia_log []
fill ~4 ~1 ~-7 ~4 ~8 ~-7 stripped_acacia_log []
fill ~6 ~1 ~-7 ~6 ~8 ~-7 stripped_acacia_log []
fill ~-6 ~8 ~-7 ~6 ~8 ~-1 acacia_planks []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 orange_terracotta []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 glass []
fill ~-2 ~8 ~-3 ~2 ~8 ~3 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~4 ~-9 stripped_acacia_log []
setblock ~-8 ~5 ~-9 campfire []
fill ~-8 ~0 ~9 ~-8 ~4 ~9 stripped_acacia_log []
setblock ~-8 ~5 ~9 campfire []
fill ~8 ~0 ~-9 ~8 ~4 ~-9 stripped_acacia_log []
setblock ~8 ~5 ~-9 campfire []
fill ~8 ~0 ~9 ~8 ~4 ~9 stripped_acacia_log []
setblock ~8 ~5 ~9 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 8x10x3) ---
fill ~8 ~0 ~10 ~8 ~6 ~10 acacia_log []
fill ~7 ~6 ~9 ~9 ~6 ~11 acacia_slab []
setblock ~8 ~7 ~10 orange_terracotta []
setblock ~8 ~8 ~10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 hay_block []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 bone 11
replaceitem block ~5 ~1 ~6 slot.container 1 string 10
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 11
replaceitem block ~5 ~1 ~6 slot.container 3 arrow 20
replaceitem block ~5 ~1 ~6 slot.container 4 leather 13
replaceitem block ~5 ~1 ~6 slot.container 5 spider_eye 10
replaceitem block ~5 ~1 ~6 slot.container 9 torch 22
replaceitem block ~5 ~1 ~6 slot.container 10 bread 10
replaceitem block ~5 ~1 ~6 slot.container 11 cooked_beef 9
replaceitem block ~5 ~1 ~6 slot.container 12 acacia_log 18
replaceitem block ~5 ~1 ~6 slot.container 13 iron_ingot 9
replaceitem block ~5 ~1 ~6 slot.container 14 gold_ingot 8
loot insert ~5 ~1 ~6 loot "rsf/savanna"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
