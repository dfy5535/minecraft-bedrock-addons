# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1182/4224 | 主题内编号: b030/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·双坡顶驻军卫戍塔 (savanna_tower_gabled_keep)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 acacia_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 coarse_dirt []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 acacia_planks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-4 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-4 ~3 lantern []
setblock ~2 ~-4 ~-3 lantern []
setblock ~2 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-2 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~2 ~-2 ~3 slot.container 1 bone 16
replaceitem block ~2 ~-2 ~3 slot.container 2 string 15
replaceitem block ~2 ~-2 ~3 slot.container 3 gunpowder 8
replaceitem block ~2 ~-2 ~3 slot.container 4 arrow 17
replaceitem block ~2 ~-2 ~3 slot.container 5 leather 10
replaceitem block ~2 ~-2 ~3 slot.container 9 iron_sword 1
replaceitem block ~2 ~-2 ~3 slot.container 10 torch 18
replaceitem block ~2 ~-2 ~3 slot.container 11 bread 13
replaceitem block ~2 ~-2 ~3 slot.container 12 cooked_beef 12
replaceitem block ~2 ~-2 ~3 slot.container 13 acacia_log 21
replaceitem block ~2 ~-2 ~3 slot.container 14 iron_ingot 12
loot insert ~2 ~-2 ~3 loot "rsf/savanna"
loot insert ~2 ~-2 ~3 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-4 ~1 ~-5 ~0 ~9 ~5 stone_bricks []
fill ~-4 ~1 ~0 ~4 ~8 ~5 cobblestone []
fill ~-3 ~1 ~-4 ~-1 ~8 ~4 air []
fill ~-1 ~1 ~1 ~3 ~7 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~10 ~-6 ~-5 ~10 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~10 ~-6 ~5 ~10 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~11 ~-5 ~-4 ~11 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~4 ~11 ~-5 ~4 ~11 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~11 ~-5 ~3 ~11 ~5 acacia_slab []
fill ~0 ~12 ~-6 ~0 ~12 ~6 acacia_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 acacia_log []
setblock ~0 ~4 ~-8 chiseled_stone_bricks []
setblock ~0 ~5 ~-8 torch []
fill ~0 ~0 ~8 ~0 ~3 ~8 acacia_log []
setblock ~0 ~4 ~8 chiseled_stone_bricks []
setblock ~0 ~5 ~8 torch []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 acacia_log []
setblock ~-7 ~4 ~0 chiseled_stone_bricks []
setblock ~-7 ~5 ~0 torch []
fill ~7 ~0 ~0 ~7 ~3 ~0 acacia_log []
setblock ~7 ~4 ~0 chiseled_stone_bricks []
setblock ~7 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~6 ~0 ~7 ~6 ~5 ~7 acacia_log []
fill ~5 ~5 ~6 ~7 ~5 ~8 acacia_slab []
setblock ~6 ~6 ~7 orange_terracotta []
setblock ~6 ~7 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-3 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 spider_eye 10
replaceitem block ~-3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 4 string 10
replaceitem block ~-3 ~1 ~4 slot.container 5 gunpowder 11
replaceitem block ~-3 ~1 ~4 slot.container 9 saddle 1
replaceitem block ~-3 ~1 ~4 slot.container 10 golden_apple 1
replaceitem block ~-3 ~1 ~4 slot.container 11 iron_sword 1
replaceitem block ~-3 ~1 ~4 slot.container 12 torch 18
replaceitem block ~-3 ~1 ~4 slot.container 13 bread 13
replaceitem block ~-3 ~1 ~4 slot.container 14 cooked_beef 12
loot insert ~-3 ~1 ~4 loot "rsf/savanna"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 1 bone 14
replaceitem block ~3 ~1 ~4 slot.container 2 string 13
replaceitem block ~3 ~1 ~4 slot.container 3 gunpowder 14
replaceitem block ~3 ~1 ~4 slot.container 4 arrow 23
replaceitem block ~3 ~1 ~4 slot.container 5 leather 8
replaceitem block ~3 ~1 ~4 slot.container 9 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 10 golden_apple 6
replaceitem block ~3 ~1 ~4 slot.container 11 iron_sword 1
replaceitem block ~3 ~1 ~4 slot.container 12 torch 16
replaceitem block ~3 ~1 ~4 slot.container 13 bread 11
replaceitem block ~3 ~1 ~4 slot.container 14 cooked_beef 10
loot insert ~3 ~1 ~4 loot "rsf/savanna"
loot insert ~3 ~1 ~4 loot "chests/village/village_savanna_house"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
