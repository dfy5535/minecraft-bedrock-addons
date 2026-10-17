# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0252/4224 | 主题内编号: b124/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·三层重檐帝王阁楼与秘库 (forest_grand_pagoda_imperial)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x17 | 地上高度 11格 | 地下深度 4格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~15 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~15 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~15 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~15 ~9 air [] replace log2
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 stone_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 mossy_cobblestone []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cobblestone []
fill ~-4 ~-6 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 emerald_block []
setblock ~-3 ~-6 ~-4 lantern []
setblock ~3 ~-6 ~4 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 spider_eye 5
replaceitem block ~0 ~-4 ~4 slot.container 1 gunpowder 7
replaceitem block ~0 ~-4 ~4 slot.container 2 arrow 18
replaceitem block ~0 ~-4 ~4 slot.container 3 slime_ball 7
replaceitem block ~0 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~0 ~-4 ~4 slot.container 9 lantern 7
replaceitem block ~0 ~-4 ~4 slot.container 10 honey_bottle 8
replaceitem block ~0 ~-4 ~4 slot.container 11 sweet_berries 15
replaceitem block ~0 ~-4 ~4 slot.container 12 cooked_porkchop 12
replaceitem block ~0 ~-4 ~4 slot.container 13 iron_ingot 6
replaceitem block ~0 ~-4 ~4 slot.container 14 oak_log 17
loot insert ~0 ~-4 ~4 loot "rsf/forest"
loot insert ~0 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-7 ~5 ~5 ~7 mossy_stone_bricks []
fill ~-4 ~1 ~-6 ~4 ~4 ~6 air []
fill ~-6 ~5 ~-8 ~6 ~5 ~8 stone_brick_slab []
fill ~-4 ~6 ~-6 ~4 ~11 ~6 oak_planks []
fill ~-3 ~6 ~-5 ~3 ~10 ~5 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~5 ~0 ~6 ~5 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~11 ~-8 ~6 ~11 ~8 stone_brick_slab []
fill ~-4 ~12 ~-6 ~4 ~13 ~6 oak_planks []
fill ~-5 ~14 ~-7 ~5 ~14 ~7 oak_slab []
setblock ~0 ~15 ~0 chiseled_stone_bricks []
setblock ~0 ~16 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-9 ~-7 ~5 ~-9 oak_log []
setblock ~-7 ~6 ~-9 lantern []
fill ~-7 ~0 ~9 ~-7 ~5 ~9 oak_log []
setblock ~-7 ~6 ~9 lantern []
fill ~7 ~0 ~-9 ~7 ~5 ~-9 oak_log []
setblock ~7 ~6 ~-9 lantern []
fill ~7 ~0 ~9 ~7 ~5 ~9 oak_log []
setblock ~7 ~6 ~9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-8 ~0 ~-8 ~-8 ~5 ~-8 oak_log []
fill ~8 ~0 ~-8 ~8 ~5 ~-8 oak_log []
fill ~-8 ~5 ~-8 ~8 ~5 ~-8 moss_block []
setblock ~-2 ~6 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~6 bookshelf []
setblock ~4 ~1 ~6 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~6 slot.container 0 gunpowder 10
replaceitem block ~-4 ~1 ~6 slot.container 1 arrow 21
replaceitem block ~-4 ~1 ~6 slot.container 2 slime_ball 10
replaceitem block ~-4 ~1 ~6 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~6 slot.container 4 rotten_flesh 10
replaceitem block ~-4 ~1 ~6 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~6 slot.container 9 golden_apple 1
replaceitem block ~-4 ~1 ~6 slot.container 10 iron_axe 1
replaceitem block ~-4 ~1 ~6 slot.container 11 bow 1
replaceitem block ~-4 ~1 ~6 slot.container 12 lantern 7
replaceitem block ~-4 ~1 ~6 slot.container 13 honey_bottle 8
replaceitem block ~-4 ~1 ~6 slot.container 14 sweet_berries 15
loot insert ~-4 ~1 ~6 loot "rsf/forest"
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 slime_ball 5
replaceitem block ~4 ~1 ~6 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~6 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~1 ~6 slot.container 3 bone 14
replaceitem block ~4 ~1 ~6 slot.container 4 string 15
replaceitem block ~4 ~1 ~6 slot.container 5 spider_eye 11
replaceitem block ~4 ~1 ~6 slot.container 9 golden_apple 6
replaceitem block ~4 ~1 ~6 slot.container 10 iron_axe 1
replaceitem block ~4 ~1 ~6 slot.container 11 bow 1
replaceitem block ~4 ~1 ~6 slot.container 12 lantern 5
replaceitem block ~4 ~1 ~6 slot.container 13 honey_bottle 6
replaceitem block ~4 ~1 ~6 slot.container 14 sweet_berries 13
loot insert ~4 ~1 ~6 loot "rsf/forest"
loot insert ~4 ~1 ~6 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
