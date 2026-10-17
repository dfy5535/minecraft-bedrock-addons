# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1165/4224 | 主题内编号: b013/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·地底熔炉苦工地牢 (savanna_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[trial_pit] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x17 | 地上高度 6格 | 地下深度 5格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace log2
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 hardened_clay [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 hardened_clay [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 stone_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 stone_bricks []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 coarse_dirt []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cobblestone []
fill ~-4 ~-6 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 emerald_block []
setblock ~-3 ~-6 ~-4 torch []
setblock ~3 ~-6 ~4 torch []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 gunpowder 8
replaceitem block ~0 ~-4 ~4 slot.container 1 arrow 17
replaceitem block ~0 ~-4 ~4 slot.container 2 leather 10
replaceitem block ~0 ~-4 ~4 slot.container 3 spider_eye 7
replaceitem block ~0 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-4 ~4 slot.container 9 cooked_beef 13
replaceitem block ~0 ~-4 ~4 slot.container 10 acacia_log 22
replaceitem block ~0 ~-4 ~4 slot.container 11 iron_ingot 6
replaceitem block ~0 ~-4 ~4 slot.container 12 gold_ingot 5
replaceitem block ~0 ~-4 ~4 slot.container 13 emerald 5
replaceitem block ~0 ~-4 ~4 slot.container 14 saddle 1
loot insert ~0 ~-4 ~4 loot "rsf/savanna"
loot insert ~0 ~-4 ~4 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-7 ~5 ~6 ~7 hardened_clay []
fill ~-4 ~1 ~-6 ~4 ~5 ~6 air []
fill ~-5 ~1 ~-7 ~-5 ~6 ~-7 stripped_acacia_log []
fill ~-5 ~1 ~7 ~-5 ~6 ~7 stripped_acacia_log []
fill ~5 ~1 ~-7 ~5 ~6 ~-7 stripped_acacia_log []
fill ~5 ~1 ~7 ~5 ~6 ~7 stripped_acacia_log []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-7 ~5 ~6 ~7 acacia_planks []
fill ~-5 ~7 ~-7 ~5 ~7 ~7 cobblestone_wall []
fill ~-4 ~7 ~-6 ~4 ~7 ~6 air []
setblock ~-5 ~7 ~-7 stripped_acacia_log []
setblock ~-5 ~8 ~-7 campfire []
setblock ~-5 ~7 ~7 stripped_acacia_log []
setblock ~-5 ~8 ~7 campfire []
setblock ~5 ~7 ~-7 stripped_acacia_log []
setblock ~5 ~8 ~-7 campfire []
setblock ~5 ~7 ~7 stripped_acacia_log []
setblock ~5 ~8 ~7 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 stone_bricks []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x10x5) ---
fill ~7 ~0 ~10 ~7 ~8 ~10 acacia_log []
fill ~6 ~8 ~9 ~8 ~8 ~11 acacia_slab []
setblock ~7 ~9 ~10 orange_terracotta []
setblock ~7 ~10 ~10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 leather 13
replaceitem block ~4 ~1 ~6 slot.container 1 spider_eye 10
replaceitem block ~4 ~1 ~6 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~6 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~6 slot.container 4 bone 11
replaceitem block ~4 ~1 ~6 slot.container 5 string 10
replaceitem block ~4 ~1 ~6 slot.container 9 emerald 6
replaceitem block ~4 ~1 ~6 slot.container 10 saddle 1
replaceitem block ~4 ~1 ~6 slot.container 11 golden_apple 6
replaceitem block ~4 ~1 ~6 slot.container 12 iron_sword 1
replaceitem block ~4 ~1 ~6 slot.container 13 torch 16
replaceitem block ~4 ~1 ~6 slot.container 14 bread 11
loot insert ~4 ~1 ~6 loot "rsf/savanna"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
