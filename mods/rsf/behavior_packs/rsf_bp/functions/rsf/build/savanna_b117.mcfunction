# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1269/4224 | 主题内编号: b117/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·环柱生态标本采集馆 (savanna_conservatory_rotunda_bio)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 hardened_clay [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 hardened_clay [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 coarse_dirt []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 bone 16
replaceitem block ~3 ~-3 ~4 slot.container 1 string 15
replaceitem block ~3 ~-3 ~4 slot.container 2 gunpowder 8
replaceitem block ~3 ~-3 ~4 slot.container 3 arrow 17
replaceitem block ~3 ~-3 ~4 slot.container 4 leather 10
replaceitem block ~3 ~-3 ~4 slot.container 5 spider_eye 7
replaceitem block ~3 ~-3 ~4 slot.container 9 cooked_beef 13
replaceitem block ~3 ~-3 ~4 slot.container 10 acacia_log 22
replaceitem block ~3 ~-3 ~4 slot.container 11 iron_ingot 6
replaceitem block ~3 ~-3 ~4 slot.container 12 gold_ingot 5
replaceitem block ~3 ~-3 ~4 slot.container 13 emerald 5
replaceitem block ~3 ~-3 ~4 slot.container 14 saddle 1
loot insert ~3 ~-3 ~4 loot "rsf/savanna"
loot insert ~3 ~-3 ~4 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 acacia_planks []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 stripped_acacia_log []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 stripped_acacia_log []
fill ~-3 ~1 ~-6 ~-3 ~6 ~-6 stripped_acacia_log []
fill ~-3 ~1 ~6 ~-3 ~6 ~6 stripped_acacia_log []
fill ~-1 ~1 ~-6 ~-1 ~6 ~-6 stripped_acacia_log []
fill ~-1 ~1 ~6 ~-1 ~6 ~6 stripped_acacia_log []
fill ~1 ~1 ~-6 ~1 ~6 ~-6 stripped_acacia_log []
fill ~1 ~1 ~6 ~1 ~6 ~6 stripped_acacia_log []
fill ~3 ~1 ~-6 ~3 ~6 ~-6 stripped_acacia_log []
fill ~3 ~1 ~6 ~3 ~6 ~6 stripped_acacia_log []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 stripped_acacia_log []
fill ~5 ~1 ~6 ~5 ~6 ~6 stripped_acacia_log []
fill ~-5 ~1 ~-4 ~-5 ~6 ~-4 stripped_acacia_log []
fill ~5 ~1 ~-4 ~5 ~6 ~-4 stripped_acacia_log []
fill ~-5 ~1 ~-2 ~-5 ~6 ~-2 stripped_acacia_log []
fill ~5 ~1 ~-2 ~5 ~6 ~-2 stripped_acacia_log []
fill ~-5 ~1 ~0 ~-5 ~6 ~0 stripped_acacia_log []
fill ~5 ~1 ~0 ~5 ~6 ~0 stripped_acacia_log []
fill ~-5 ~1 ~2 ~-5 ~6 ~2 stripped_acacia_log []
fill ~5 ~1 ~2 ~5 ~6 ~2 stripped_acacia_log []
fill ~-5 ~1 ~4 ~-5 ~6 ~4 stripped_acacia_log []
fill ~5 ~1 ~4 ~5 ~6 ~4 stripped_acacia_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 acacia_planks []
fill ~-4 ~8 ~-5 ~4 ~9 ~5 glass []
fill ~-3 ~8 ~-4 ~3 ~8 ~4 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 stone_bricks []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~7 ~0 ~8 ~7 ~7 ~8 acacia_log []
fill ~6 ~7 ~7 ~8 ~7 ~9 acacia_slab []
setblock ~7 ~8 ~8 orange_terracotta []
setblock ~7 ~9 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 hay_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 leather 13
replaceitem block ~4 ~1 ~5 slot.container 1 spider_eye 10
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 4 bone 11
replaceitem block ~4 ~1 ~5 slot.container 5 string 10
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 3
replaceitem block ~4 ~1 ~5 slot.container 10 iron_sword 1
replaceitem block ~4 ~1 ~5 slot.container 11 torch 20
replaceitem block ~4 ~1 ~5 slot.container 12 bread 15
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_beef 14
replaceitem block ~4 ~1 ~5 slot.container 14 acacia_log 16
loot insert ~4 ~1 ~5 loot "rsf/savanna"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
