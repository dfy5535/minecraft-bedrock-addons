# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1224/4224 | 主题内编号: b072/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·L型古商会废墟暗窖 (savanna_ruin_l_guildhall)
# 建筑构造: 主体[l_compound] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 acacia_planks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 acacia_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 acacia_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 lantern []
setblock ~4 ~-6 ~0 lantern []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-4 ~5 slot.container 1 bone 16
replaceitem block ~0 ~-4 ~5 slot.container 2 string 15
replaceitem block ~0 ~-4 ~5 slot.container 3 gunpowder 8
replaceitem block ~0 ~-4 ~5 slot.container 4 arrow 17
replaceitem block ~0 ~-4 ~5 slot.container 5 leather 10
replaceitem block ~0 ~-4 ~5 slot.container 9 iron_sword 1
replaceitem block ~0 ~-4 ~5 slot.container 10 torch 16
replaceitem block ~0 ~-4 ~5 slot.container 11 bread 11
replaceitem block ~0 ~-4 ~5 slot.container 12 cooked_beef 10
replaceitem block ~0 ~-4 ~5 slot.container 13 acacia_log 19
replaceitem block ~0 ~-4 ~5 slot.container 14 iron_ingot 10
loot insert ~0 ~-4 ~5 loot "rsf/savanna"
loot insert ~0 ~-4 ~5 loot "chests/village/village_savanna_house"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-4 ~-5 slot.container 1 bone 14
replaceitem block ~0 ~-4 ~-5 slot.container 2 string 13
replaceitem block ~0 ~-4 ~-5 slot.container 3 gunpowder 14
replaceitem block ~0 ~-4 ~-5 slot.container 4 arrow 23
replaceitem block ~0 ~-4 ~-5 slot.container 5 leather 8
replaceitem block ~0 ~-4 ~-5 slot.container 9 iron_sword 1
replaceitem block ~0 ~-4 ~-5 slot.container 10 torch 22
replaceitem block ~0 ~-4 ~-5 slot.container 11 bread 10
replaceitem block ~0 ~-4 ~-5 slot.container 12 cooked_beef 9
replaceitem block ~0 ~-4 ~-5 slot.container 13 acacia_log 18
replaceitem block ~0 ~-4 ~-5 slot.container 14 iron_ingot 9
loot insert ~0 ~-4 ~-5 loot "rsf/savanna"
loot insert ~0 ~-4 ~-5 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~6 ~6 acacia_planks []
fill ~-5 ~1 ~0 ~5 ~5 ~6 hardened_clay []
fill ~-4 ~1 ~-5 ~-1 ~5 ~5 air []
fill ~-1 ~1 ~1 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 acacia_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-5 ~5 ~-1 ~-5 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 stone_bricks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 acacia_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 acacia_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 acacia_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~7 ~0 ~8 ~7 ~7 ~8 acacia_log []
fill ~6 ~7 ~7 ~8 ~7 ~9 acacia_slab []
setblock ~7 ~8 ~8 orange_terracotta []
setblock ~7 ~9 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 stonecutter_block []
setblock ~0 ~1 ~5 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 1 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 2 string 10
replaceitem block ~-4 ~1 ~5 slot.container 3 gunpowder 11
replaceitem block ~-4 ~1 ~5 slot.container 4 arrow 20
replaceitem block ~-4 ~1 ~5 slot.container 5 leather 13
replaceitem block ~-4 ~1 ~5 slot.container 9 acacia_log 22
replaceitem block ~-4 ~1 ~5 slot.container 10 iron_ingot 6
replaceitem block ~-4 ~1 ~5 slot.container 11 gold_ingot 5
replaceitem block ~-4 ~1 ~5 slot.container 12 emerald 5
replaceitem block ~-4 ~1 ~5 slot.container 13 saddle 1
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 5
loot insert ~-4 ~1 ~5 loot "rsf/savanna"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 string 13
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 14
replaceitem block ~4 ~1 ~5 slot.container 2 arrow 23
replaceitem block ~4 ~1 ~5 slot.container 3 leather 8
replaceitem block ~4 ~1 ~5 slot.container 4 spider_eye 5
replaceitem block ~4 ~1 ~5 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 9 acacia_log 20
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 12 emerald 3
replaceitem block ~4 ~1 ~5 slot.container 13 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 3
loot insert ~4 ~1 ~5 loot "rsf/savanna"
loot insert ~4 ~1 ~5 loot "chests/village/village_savanna_house"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
