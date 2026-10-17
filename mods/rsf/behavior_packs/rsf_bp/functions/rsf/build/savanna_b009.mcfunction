# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1161/4224 | 主题内编号: b009/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·铁栏双室地下死牢 (savanna_dungeon_iron_prison)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log2
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 hardened_clay [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 hardened_clay [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 coarse_dirt []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 acacia_planks []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 ender_pearl 6
replaceitem block ~-2 ~-4 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~-2 ~-4 ~3 slot.container 2 bone 16
replaceitem block ~-2 ~-4 ~3 slot.container 3 string 15
replaceitem block ~-2 ~-4 ~3 slot.container 4 gunpowder 8
replaceitem block ~-2 ~-4 ~3 slot.container 5 arrow 17
replaceitem block ~-2 ~-4 ~3 slot.container 9 golden_apple 4
replaceitem block ~-2 ~-4 ~3 slot.container 10 iron_sword 1
replaceitem block ~-2 ~-4 ~3 slot.container 11 torch 21
replaceitem block ~-2 ~-4 ~3 slot.container 12 bread 16
replaceitem block ~-2 ~-4 ~3 slot.container 13 cooked_beef 8
replaceitem block ~-2 ~-4 ~3 slot.container 14 acacia_log 17
loot insert ~-2 ~-4 ~3 loot "rsf/savanna"
loot insert ~-2 ~-4 ~3 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 hardened_clay []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 acacia_planks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 acacia_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~5 ~-6 ~5 ~5 ~6 acacia_planks []
fill ~-5 ~6 ~-6 ~5 ~6 ~6 cobblestone_wall []
fill ~-4 ~6 ~-5 ~4 ~6 ~5 air []
setblock ~-5 ~6 ~-6 stripped_acacia_log []
setblock ~-5 ~7 ~-6 campfire []
setblock ~-5 ~6 ~6 stripped_acacia_log []
setblock ~-5 ~7 ~6 campfire []
setblock ~5 ~6 ~-6 stripped_acacia_log []
setblock ~5 ~7 ~-6 campfire []
setblock ~5 ~6 ~6 stripped_acacia_log []
setblock ~5 ~7 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 acacia_planks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 stripped_acacia_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 stripped_acacia_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 stone_brick_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~7 ~0 ~8 ~7 ~9 ~8 acacia_log []
fill ~6 ~9 ~7 ~8 ~9 ~9 acacia_slab []
setblock ~7 ~10 ~8 orange_terracotta []
setblock ~7 ~11 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~4 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 hay_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 11
replaceitem block ~4 ~1 ~5 slot.container 1 string 10
replaceitem block ~4 ~1 ~5 slot.container 2 gunpowder 11
replaceitem block ~4 ~1 ~5 slot.container 3 arrow 20
replaceitem block ~4 ~1 ~5 slot.container 4 leather 13
replaceitem block ~4 ~1 ~5 slot.container 5 spider_eye 10
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 10 gold_ingot 4
replaceitem block ~4 ~1 ~5 slot.container 11 emerald 4
replaceitem block ~4 ~1 ~5 slot.container 12 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 13 golden_apple 4
replaceitem block ~4 ~1 ~5 slot.container 14 iron_sword 1
loot insert ~4 ~1 ~5 loot "rsf/savanna"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
