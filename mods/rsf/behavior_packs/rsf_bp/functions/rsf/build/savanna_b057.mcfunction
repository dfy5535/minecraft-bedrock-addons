# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1209/4224 | 主题内编号: b057/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·中央石棺帝王地下陵寝 (savanna_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pagoda_double] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x17 | 地上高度 5格 | 地下深度 5格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~9 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~9 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~9 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~9 ~9 air [] replace log2
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 hardened_clay [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 hardened_clay [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 stone_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 stone_bricks []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 coarse_dirt []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 stone_bricks []
fill ~-4 ~-6 ~-6 ~4 ~-1 ~6 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 acacia_planks []
setblock ~0 ~-7 ~0 gold_block []
fill ~0 ~-6 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 campfire []
setblock ~2 ~-6 ~0 campfire []
setblock ~0 ~-4 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-5 slot.container 0 gunpowder 8
replaceitem block ~0 ~-4 ~-5 slot.container 1 arrow 17
replaceitem block ~0 ~-4 ~-5 slot.container 2 leather 10
replaceitem block ~0 ~-4 ~-5 slot.container 3 spider_eye 7
replaceitem block ~0 ~-4 ~-5 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-4 ~-5 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-4 ~-5 slot.container 9 iron_ingot 7
replaceitem block ~0 ~-4 ~-5 slot.container 10 gold_ingot 6
replaceitem block ~0 ~-4 ~-5 slot.container 11 emerald 6
replaceitem block ~0 ~-4 ~-5 slot.container 12 saddle 1
replaceitem block ~0 ~-4 ~-5 slot.container 13 golden_apple 6
replaceitem block ~0 ~-4 ~-5 slot.container 14 iron_sword 1
loot insert ~0 ~-4 ~-5 loot "rsf/savanna"
loot insert ~0 ~-4 ~-5 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-7 ~5 ~2 ~7 hardened_clay []
fill ~-4 ~1 ~-6 ~4 ~3 ~6 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 acacia_planks []
fill ~0 ~1 ~-7 ~0 ~2 ~7 acacia_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 acacia_slab []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 cobblestone []
fill ~-4 ~11 ~-5 ~4 ~11 ~5 cobblestone_slab []
setblock ~0 ~12 ~0 gold_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 acacia_planks []
fill ~-2 ~1 ~-9 ~-2 ~3 ~-9 stripped_acacia_log []
fill ~2 ~1 ~-9 ~2 ~3 ~-9 stripped_acacia_log []
fill ~-2 ~4 ~-9 ~2 ~4 ~-8 stone_brick_slab []
setblock ~0 ~3 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x9x4) ---
fill ~7 ~0 ~9 ~7 ~7 ~9 acacia_log []
fill ~6 ~7 ~8 ~8 ~7 ~10 acacia_slab []
setblock ~7 ~8 ~9 orange_terracotta []
setblock ~7 ~9 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 hay_block []
setblock ~0 ~2 ~0 campfire []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 bone 11
replaceitem block ~4 ~1 ~6 slot.container 1 string 10
replaceitem block ~4 ~1 ~6 slot.container 2 gunpowder 11
replaceitem block ~4 ~1 ~6 slot.container 3 arrow 20
replaceitem block ~4 ~1 ~6 slot.container 4 leather 13
replaceitem block ~4 ~1 ~6 slot.container 5 spider_eye 10
replaceitem block ~4 ~1 ~6 slot.container 9 golden_apple 6
replaceitem block ~4 ~1 ~6 slot.container 10 iron_sword 1
replaceitem block ~4 ~1 ~6 slot.container 11 torch 16
replaceitem block ~4 ~1 ~6 slot.container 12 bread 11
replaceitem block ~4 ~1 ~6 slot.container 13 cooked_beef 10
replaceitem block ~4 ~1 ~6 slot.container 14 acacia_log 19
loot insert ~4 ~1 ~6 loot "rsf/savanna"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
