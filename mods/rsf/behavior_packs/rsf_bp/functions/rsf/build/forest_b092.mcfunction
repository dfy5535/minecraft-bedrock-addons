# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0220/4224 | 主题内编号: b092/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·双层重檐供奉宝塔 (forest_shrine_terrace_pagoda)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-6 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-6 ~3 campfire []
setblock ~2 ~-6 ~-3 campfire []
setblock ~2 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-4 ~3 slot.container 0 gunpowder 7
replaceitem block ~2 ~-4 ~3 slot.container 1 arrow 18
replaceitem block ~2 ~-4 ~3 slot.container 2 slime_ball 7
replaceitem block ~2 ~-4 ~3 slot.container 3 ender_pearl 6
replaceitem block ~2 ~-4 ~3 slot.container 4 rotten_flesh 15
replaceitem block ~2 ~-4 ~3 slot.container 5 bone 16
replaceitem block ~2 ~-4 ~3 slot.container 9 cooked_porkchop 8
replaceitem block ~2 ~-4 ~3 slot.container 10 iron_ingot 9
replaceitem block ~2 ~-4 ~3 slot.container 11 oak_log 20
replaceitem block ~2 ~-4 ~3 slot.container 12 emerald 8
replaceitem block ~2 ~-4 ~3 slot.container 13 golden_apple 7
replaceitem block ~2 ~-4 ~3 slot.container 14 iron_axe 1
loot insert ~2 ~-4 ~3 loot "rsf/forest"
loot insert ~2 ~-4 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~5 ~5 mossy_stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~4 ~4 air []
fill ~-5 ~5 ~-6 ~5 ~5 ~6 stone_brick_slab []
fill ~-3 ~6 ~-4 ~3 ~10 ~4 oak_planks []
fill ~-2 ~6 ~-3 ~2 ~9 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~6 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~10 ~-6 ~5 ~10 ~6 stone_brick_slab []
fill ~-3 ~11 ~-4 ~3 ~12 ~4 oak_planks []
fill ~-4 ~13 ~-5 ~4 ~13 ~5 oak_slab []
setblock ~0 ~14 ~0 chiseled_stone_bricks []
setblock ~0 ~15 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 oak_log []
setblock ~-6 ~6 ~-7 lantern []
fill ~-6 ~0 ~7 ~-6 ~5 ~7 oak_log []
setblock ~-6 ~6 ~7 lantern []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 oak_log []
setblock ~6 ~6 ~-7 lantern []
fill ~6 ~0 ~7 ~6 ~5 ~7 oak_log []
setblock ~6 ~6 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-7 ~0 ~-7 ~-7 ~8 ~-7 oak_log []
fill ~7 ~0 ~-7 ~7 ~8 ~-7 oak_log []
fill ~-7 ~8 ~-7 ~7 ~8 ~-7 moss_block []
setblock ~0 ~9 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gunpowder 10
replaceitem block ~-3 ~1 ~4 slot.container 1 arrow 21
replaceitem block ~-3 ~1 ~4 slot.container 2 slime_ball 10
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 rotten_flesh 10
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 9 honey_bottle 7
replaceitem block ~-3 ~1 ~4 slot.container 10 sweet_berries 14
replaceitem block ~-3 ~1 ~4 slot.container 11 cooked_porkchop 11
replaceitem block ~-3 ~1 ~4 slot.container 12 iron_ingot 12
replaceitem block ~-3 ~1 ~4 slot.container 13 oak_log 16
replaceitem block ~-3 ~1 ~4 slot.container 14 emerald 4
loot insert ~-3 ~1 ~4 loot "rsf/forest"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 slime_ball 5
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 13
replaceitem block ~3 ~1 ~4 slot.container 3 bone 14
replaceitem block ~3 ~1 ~4 slot.container 4 string 15
replaceitem block ~3 ~1 ~4 slot.container 5 spider_eye 11
replaceitem block ~3 ~1 ~4 slot.container 9 honey_bottle 5
replaceitem block ~3 ~1 ~4 slot.container 10 sweet_berries 12
replaceitem block ~3 ~1 ~4 slot.container 11 cooked_porkchop 9
replaceitem block ~3 ~1 ~4 slot.container 12 iron_ingot 10
replaceitem block ~3 ~1 ~4 slot.container 13 oak_log 21
replaceitem block ~3 ~1 ~4 slot.container 14 emerald 9
loot insert ~3 ~1 ~4 loot "rsf/forest"
loot insert ~3 ~1 ~4 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
