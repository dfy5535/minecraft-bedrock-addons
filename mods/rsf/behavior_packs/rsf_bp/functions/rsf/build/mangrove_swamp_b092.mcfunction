# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1756/4224 | 主题内编号: b092/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·双层重檐供奉宝塔 (mangrove_swamp_shrine_terrace_pagoda)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 mud_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 mud_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mud_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_mud []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 mangrove_planks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 slime_ball 19
replaceitem block ~2 ~-2 ~3 slot.container 1 bone 16
replaceitem block ~2 ~-2 ~3 slot.container 2 arrow 23
replaceitem block ~2 ~-2 ~3 slot.container 3 rotten_flesh 10
replaceitem block ~2 ~-2 ~3 slot.container 4 spider_eye 7
replaceitem block ~2 ~-2 ~3 slot.container 5 gunpowder 8
replaceitem block ~2 ~-2 ~3 slot.container 9 cooked_salmon 10
replaceitem block ~2 ~-2 ~3 slot.container 10 iron_ingot 9
replaceitem block ~2 ~-2 ~3 slot.container 11 gold_ingot 8
replaceitem block ~2 ~-2 ~3 slot.container 12 emerald 8
replaceitem block ~2 ~-2 ~3 slot.container 13 lead 8
replaceitem block ~2 ~-2 ~3 slot.container 14 golden_apple 1
loot insert ~2 ~-2 ~3 loot "rsf/mangrove_swamp"
loot insert ~2 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~5 ~5 mud_bricks []
fill ~-3 ~1 ~-4 ~3 ~4 ~4 air []
fill ~-5 ~5 ~-6 ~5 ~5 ~6 mud_brick_slab []
fill ~-3 ~6 ~-4 ~3 ~10 ~4 mangrove_planks []
fill ~-2 ~6 ~-3 ~2 ~9 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~6 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~10 ~-6 ~5 ~10 ~6 mud_brick_slab []
fill ~-3 ~11 ~-4 ~3 ~12 ~4 mangrove_planks []
fill ~-4 ~13 ~-5 ~4 ~13 ~5 mangrove_slab []
setblock ~0 ~14 ~0 chiseled_stone_bricks []
setblock ~0 ~15 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 mangrove_log []
fill ~-7 ~0 ~2 ~-7 ~6 ~2 mangrove_log []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 mangrove_log []
fill ~7 ~0 ~2 ~7 ~6 ~2 mangrove_log []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~-7 ~-2 ~0 ~-7 ~4 ~0 mangrove_roots []
fill ~7 ~-2 ~0 ~7 ~4 ~0 mangrove_roots []
fill ~-7 ~5 ~0 ~7 ~5 ~0 mud_brick_slab []
setblock ~0 ~6 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 spider_eye 10
replaceitem block ~-3 ~1 ~4 slot.container 1 gunpowder 11
replaceitem block ~-3 ~1 ~4 slot.container 2 prismarine_shard 10
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 slime_ball 14
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 9 boat 1
replaceitem block ~-3 ~1 ~4 slot.container 10 lantern 4
replaceitem block ~-3 ~1 ~4 slot.container 11 mangrove_log 17
replaceitem block ~-3 ~1 ~4 slot.container 12 mud_bricks 18
replaceitem block ~-3 ~1 ~4 slot.container 13 cooked_salmon 11
replaceitem block ~-3 ~1 ~4 slot.container 14 iron_ingot 10
loot insert ~-3 ~1 ~4 loot "rsf/mangrove_swamp"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 prismarine_shard 5
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 slime_ball 17
replaceitem block ~3 ~1 ~4 slot.container 3 bone 14
replaceitem block ~3 ~1 ~4 slot.container 4 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 5 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 9 boat 1
replaceitem block ~3 ~1 ~4 slot.container 10 lantern 9
replaceitem block ~3 ~1 ~4 slot.container 11 mangrove_log 22
replaceitem block ~3 ~1 ~4 slot.container 12 mud_bricks 16
replaceitem block ~3 ~1 ~4 slot.container 13 cooked_salmon 9
replaceitem block ~3 ~1 ~4 slot.container 14 iron_ingot 8
loot insert ~3 ~1 ~4 loot "rsf/mangrove_swamp"
loot insert ~3 ~1 ~4 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
