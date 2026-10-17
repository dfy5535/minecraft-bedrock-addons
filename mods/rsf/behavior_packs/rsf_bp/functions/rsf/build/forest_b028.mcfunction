# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0156/4224 | 主题内编号: b028/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·重檐挑角古钟楼 (forest_tower_pagoda_bell)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 11x13 | 地上高度 11格 | 地下深度 2格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~15 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~15 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~15 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~15 ~7 air [] replace log2
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-5 ~4 ~-1 ~5 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~5 ~5 mossy_stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~4 ~4 air []
fill ~-5 ~5 ~-6 ~5 ~5 ~6 stone_brick_slab []
fill ~-3 ~6 ~-4 ~3 ~11 ~4 oak_planks []
fill ~-2 ~6 ~-3 ~2 ~10 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~6 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~11 ~-6 ~5 ~11 ~6 stone_brick_slab []
fill ~-3 ~12 ~-4 ~3 ~13 ~4 oak_planks []
fill ~-4 ~14 ~-5 ~4 ~14 ~5 oak_slab []
setblock ~0 ~15 ~0 chiseled_stone_bricks []
setblock ~0 ~16 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 oak_log []
fill ~-7 ~0 ~2 ~-7 ~6 ~2 oak_log []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 oak_log []
fill ~7 ~0 ~2 ~7 ~6 ~2 oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 oak_log []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 oak_log []
fill ~-7 ~4 ~-6 ~7 ~4 ~-6 moss_block []
setblock ~0 ~5 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gunpowder 10
replaceitem block ~-3 ~1 ~4 slot.container 1 arrow 21
replaceitem block ~-3 ~1 ~4 slot.container 2 slime_ball 10
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 rotten_flesh 10
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 9 bow 1
replaceitem block ~-3 ~1 ~4 slot.container 10 lantern 7
replaceitem block ~-3 ~1 ~4 slot.container 11 honey_bottle 8
replaceitem block ~-3 ~1 ~4 slot.container 12 sweet_berries 15
replaceitem block ~-3 ~1 ~4 slot.container 13 cooked_porkchop 12
replaceitem block ~-3 ~1 ~4 slot.container 14 iron_ingot 6
loot insert ~-3 ~1 ~4 loot "rsf/forest"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 slime_ball 5
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 13
replaceitem block ~3 ~1 ~4 slot.container 3 bone 14
replaceitem block ~3 ~1 ~4 slot.container 4 string 15
replaceitem block ~3 ~1 ~4 slot.container 5 spider_eye 11
replaceitem block ~3 ~1 ~4 slot.container 9 bow 1
replaceitem block ~3 ~1 ~4 slot.container 10 lantern 5
replaceitem block ~3 ~1 ~4 slot.container 11 honey_bottle 6
replaceitem block ~3 ~1 ~4 slot.container 12 sweet_berries 13
replaceitem block ~3 ~1 ~4 slot.container 13 cooked_porkchop 10
replaceitem block ~3 ~1 ~4 slot.container 14 iron_ingot 11
loot insert ~3 ~1 ~4 loot "rsf/forest"
loot insert ~3 ~1 ~4 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
