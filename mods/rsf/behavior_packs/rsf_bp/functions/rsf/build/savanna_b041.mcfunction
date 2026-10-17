# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1193/4224 | 主题内编号: b041/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·八角看台古罗马斗技场 (savanna_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 hardened_clay [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 hardened_clay [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 coarse_dirt []
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

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-7 ~6 ~6 ~7 hardened_clay []
fill ~-5 ~1 ~-6 ~5 ~5 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~7 ~-7 air []
fill ~6 ~1 ~-7 ~6 ~7 ~-7 air []
fill ~-6 ~1 ~7 ~-6 ~7 ~7 air []
fill ~6 ~1 ~7 ~6 ~7 ~7 air []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 stripped_acacia_log []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 stripped_acacia_log []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 stripped_acacia_log []
fill ~5 ~1 ~6 ~5 ~6 ~6 stripped_acacia_log []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-7 ~-6 ~8 ~-7 stripped_acacia_log []
setblock ~-6 ~9 ~-7 campfire []
fill ~-6 ~6 ~7 ~-6 ~8 ~7 stripped_acacia_log []
setblock ~-6 ~9 ~7 campfire []
fill ~6 ~6 ~-7 ~6 ~8 ~-7 stripped_acacia_log []
setblock ~6 ~9 ~-7 campfire []
fill ~6 ~6 ~7 ~6 ~8 ~7 stripped_acacia_log []
setblock ~6 ~9 ~7 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~4 ~-9 stripped_acacia_log []
setblock ~-8 ~5 ~-9 campfire []
fill ~-8 ~0 ~9 ~-8 ~4 ~9 stripped_acacia_log []
setblock ~-8 ~5 ~9 campfire []
fill ~8 ~0 ~-9 ~8 ~4 ~-9 stripped_acacia_log []
setblock ~8 ~5 ~-9 campfire []
fill ~8 ~0 ~9 ~8 ~4 ~9 stripped_acacia_log []
setblock ~8 ~5 ~9 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~8 ~0 ~8 ~8 ~6 ~8 acacia_log []
fill ~7 ~6 ~7 ~9 ~6 ~9 acacia_slab []
setblock ~8 ~7 ~8 orange_terracotta []
setblock ~8 ~8 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~-4 ~1 ~6 anvil []
setblock ~4 ~1 ~6 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 bone 11
replaceitem block ~5 ~1 ~6 slot.container 1 string 10
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 11
replaceitem block ~5 ~1 ~6 slot.container 3 arrow 20
replaceitem block ~5 ~1 ~6 slot.container 4 leather 13
replaceitem block ~5 ~1 ~6 slot.container 5 spider_eye 10
replaceitem block ~5 ~1 ~6 slot.container 9 torch 19
replaceitem block ~5 ~1 ~6 slot.container 10 bread 14
replaceitem block ~5 ~1 ~6 slot.container 11 cooked_beef 13
replaceitem block ~5 ~1 ~6 slot.container 12 acacia_log 22
replaceitem block ~5 ~1 ~6 slot.container 13 iron_ingot 6
replaceitem block ~5 ~1 ~6 slot.container 14 gold_ingot 5
loot insert ~5 ~1 ~6 loot "rsf/savanna"
summon llama ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
