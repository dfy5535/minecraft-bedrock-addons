# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1250/4224 | 主题内编号: b098/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·四角炮楼重装要塞 (savanna_bunker_corner_citadel)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 acacia_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 coarse_dirt []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 acacia_planks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-6 ~0 ~0 ~-6 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~5 lantern []
setblock ~4 ~-5 ~-5 lantern []
setblock ~4 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~5 slot.container 0 arrow 17
replaceitem block ~4 ~-3 ~5 slot.container 1 leather 10
replaceitem block ~4 ~-3 ~5 slot.container 2 spider_eye 7
replaceitem block ~4 ~-3 ~5 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-3 ~5 slot.container 4 rotten_flesh 17
replaceitem block ~4 ~-3 ~5 slot.container 5 bone 16
replaceitem block ~4 ~-3 ~5 slot.container 9 acacia_log 22
replaceitem block ~4 ~-3 ~5 slot.container 10 iron_ingot 6
replaceitem block ~4 ~-3 ~5 slot.container 11 gold_ingot 5
replaceitem block ~4 ~-3 ~5 slot.container 12 emerald 5
replaceitem block ~4 ~-3 ~5 slot.container 13 saddle 1
replaceitem block ~4 ~-3 ~5 slot.container 14 golden_apple 5
loot insert ~4 ~-3 ~5 loot "rsf/savanna"
loot insert ~4 ~-3 ~5 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 stone_bricks []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~9 ~-6 acacia_planks []
setblock ~-6 ~10 ~-7 lantern []
fill ~-6 ~1 ~6 ~-5 ~9 ~7 acacia_planks []
setblock ~-6 ~10 ~6 lantern []
fill ~5 ~1 ~-7 ~6 ~9 ~-6 acacia_planks []
setblock ~5 ~10 ~-7 lantern []
fill ~5 ~1 ~6 ~6 ~9 ~7 acacia_planks []
setblock ~5 ~10 ~6 lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 acacia_planks []
fill ~-6 ~8 ~-7 ~6 ~8 ~7 acacia_fence []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 air []
setblock ~-6 ~8 ~-7 acacia_log []
setblock ~-6 ~9 ~-7 lantern []
setblock ~-6 ~8 ~7 acacia_log []
setblock ~-6 ~9 ~7 lantern []
setblock ~6 ~8 ~-7 acacia_log []
setblock ~6 ~9 ~-7 lantern []
setblock ~6 ~8 ~7 acacia_log []
setblock ~6 ~9 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~8 ~0 ~8 ~8 ~8 ~8 acacia_log []
fill ~7 ~8 ~7 ~9 ~8 ~9 acacia_slab []
setblock ~8 ~9 ~8 orange_terracotta []
setblock ~8 ~10 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 string 10
replaceitem block ~-5 ~1 ~6 slot.container 1 gunpowder 11
replaceitem block ~-5 ~1 ~6 slot.container 2 arrow 20
replaceitem block ~-5 ~1 ~6 slot.container 3 leather 13
replaceitem block ~-5 ~1 ~6 slot.container 4 spider_eye 10
replaceitem block ~-5 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 9 bread 14
replaceitem block ~-5 ~1 ~6 slot.container 10 cooked_beef 13
replaceitem block ~-5 ~1 ~6 slot.container 11 acacia_log 22
replaceitem block ~-5 ~1 ~6 slot.container 12 iron_ingot 6
replaceitem block ~-5 ~1 ~6 slot.container 13 gold_ingot 5
replaceitem block ~-5 ~1 ~6 slot.container 14 emerald 5
loot insert ~-5 ~1 ~6 loot "rsf/savanna"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 arrow 23
replaceitem block ~5 ~1 ~6 slot.container 1 leather 8
replaceitem block ~5 ~1 ~6 slot.container 2 spider_eye 5
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 5 bone 14
replaceitem block ~5 ~1 ~6 slot.container 9 bread 12
replaceitem block ~5 ~1 ~6 slot.container 10 cooked_beef 11
replaceitem block ~5 ~1 ~6 slot.container 11 acacia_log 20
replaceitem block ~5 ~1 ~6 slot.container 12 iron_ingot 11
replaceitem block ~5 ~1 ~6 slot.container 13 gold_ingot 10
replaceitem block ~5 ~1 ~6 slot.container 14 emerald 3
loot insert ~5 ~1 ~6 loot "rsf/savanna"
loot insert ~5 ~1 ~6 loot "chests/village/village_savanna_house"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon llama ~0 ~-3 ~0
