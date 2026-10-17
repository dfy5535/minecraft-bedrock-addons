# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1154/4224 | 主题内编号: b002/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·十字拱门祈愿圣殿 (savanna_altar_cross_sanctuary)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 2格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 acacia_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 coarse_dirt []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 acacia_planks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 acacia_planks []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~7 ~6 stone_bricks []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 stone_bricks []
fill ~-1 ~1 ~-5 ~1 ~6 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~6 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 acacia_fence []
setblock ~5 ~2 ~0 acacia_fence []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 acacia_planks []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 cobblestone []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 gold_block []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 orange_terracotta []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 torch []
setblock ~2 ~4 ~-10 torch []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~7 ~0 ~7 ~7 ~7 ~7 acacia_log []
fill ~6 ~7 ~6 ~8 ~7 ~8 acacia_slab []
setblock ~7 ~8 ~7 orange_terracotta []
setblock ~7 ~9 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 string 10
replaceitem block ~-4 ~1 ~5 slot.container 1 gunpowder 11
replaceitem block ~-4 ~1 ~5 slot.container 2 arrow 20
replaceitem block ~-4 ~1 ~5 slot.container 3 leather 13
replaceitem block ~-4 ~1 ~5 slot.container 4 spider_eye 10
replaceitem block ~-4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 9 acacia_log 22
replaceitem block ~-4 ~1 ~5 slot.container 10 iron_ingot 6
replaceitem block ~-4 ~1 ~5 slot.container 11 gold_ingot 5
replaceitem block ~-4 ~1 ~5 slot.container 12 emerald 5
replaceitem block ~-4 ~1 ~5 slot.container 13 saddle 1
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 5
loot insert ~-4 ~1 ~5 loot "rsf/savanna"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 arrow 23
replaceitem block ~4 ~1 ~5 slot.container 1 leather 8
replaceitem block ~4 ~1 ~5 slot.container 2 spider_eye 5
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 5 bone 14
replaceitem block ~4 ~1 ~5 slot.container 9 acacia_log 20
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 12 emerald 3
replaceitem block ~4 ~1 ~5 slot.container 13 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 3
loot insert ~4 ~1 ~5 loot "rsf/savanna"
loot insert ~4 ~1 ~5 loot "chests/village/village_savanna_house"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon llama ~0 ~2 ~0
