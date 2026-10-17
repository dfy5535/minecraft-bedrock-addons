# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1692/4224 | 主题内编号: b028/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·重檐挑角古钟楼 (mangrove_swamp_tower_pagoda_bell)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 11x13 | 地上高度 11格 | 地下深度 2格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~15 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~15 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~15 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~15 ~7 air [] replace log2
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 mud_bricks [] replace air
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 mud_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mud_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_mud []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks []
fill ~-4 ~-6 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 gold_block []
setblock ~-3 ~-6 ~-4 lantern []
setblock ~3 ~-6 ~4 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 rotten_flesh 10
replaceitem block ~0 ~-4 ~4 slot.container 1 spider_eye 7
replaceitem block ~0 ~-4 ~4 slot.container 2 gunpowder 8
replaceitem block ~0 ~-4 ~4 slot.container 3 prismarine_shard 7
replaceitem block ~0 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 5 slime_ball 19
replaceitem block ~0 ~-4 ~4 slot.container 9 golden_apple 7
replaceitem block ~0 ~-4 ~4 slot.container 10 boat 1
replaceitem block ~0 ~-4 ~4 slot.container 11 lantern 5
replaceitem block ~0 ~-4 ~4 slot.container 12 mangrove_log 18
replaceitem block ~0 ~-4 ~4 slot.container 13 mud_bricks 19
replaceitem block ~0 ~-4 ~4 slot.container 14 cooked_salmon 12
loot insert ~0 ~-4 ~4 loot "rsf/mangrove_swamp"
loot insert ~0 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~5 ~5 mud_bricks []
fill ~-3 ~1 ~-4 ~3 ~4 ~4 air []
fill ~-5 ~5 ~-6 ~5 ~5 ~6 mud_brick_slab []
fill ~-3 ~6 ~-4 ~3 ~11 ~4 mangrove_planks []
fill ~-2 ~6 ~-3 ~2 ~10 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~6 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~11 ~-6 ~5 ~11 ~6 mud_brick_slab []
fill ~-3 ~12 ~-4 ~3 ~13 ~4 mangrove_planks []
fill ~-4 ~14 ~-5 ~4 ~14 ~5 mangrove_slab []
setblock ~0 ~15 ~0 chiseled_stone_bricks []
setblock ~0 ~16 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 mangrove_log []
setblock ~-6 ~6 ~-7 lantern []
fill ~-6 ~0 ~7 ~-6 ~5 ~7 mangrove_log []
setblock ~-6 ~6 ~7 lantern []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 mangrove_log []
setblock ~6 ~6 ~-7 lantern []
fill ~6 ~0 ~7 ~6 ~5 ~7 mangrove_log []
setblock ~6 ~6 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~-7 ~-2 ~1 ~-7 ~5 ~1 mangrove_roots []
fill ~7 ~-2 ~1 ~7 ~5 ~1 mangrove_roots []
fill ~-7 ~6 ~1 ~7 ~6 ~1 mud_brick_slab []
setblock ~0 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 spider_eye 10
replaceitem block ~-3 ~1 ~4 slot.container 1 gunpowder 11
replaceitem block ~-3 ~1 ~4 slot.container 2 prismarine_shard 10
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 slime_ball 14
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 9 lead 7
replaceitem block ~-3 ~1 ~4 slot.container 10 golden_apple 7
replaceitem block ~-3 ~1 ~4 slot.container 11 boat 1
replaceitem block ~-3 ~1 ~4 slot.container 12 lantern 5
replaceitem block ~-3 ~1 ~4 slot.container 13 mangrove_log 18
replaceitem block ~-3 ~1 ~4 slot.container 14 mud_bricks 19
loot insert ~-3 ~1 ~4 loot "rsf/mangrove_swamp"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 prismarine_shard 5
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 slime_ball 17
replaceitem block ~3 ~1 ~4 slot.container 3 bone 14
replaceitem block ~3 ~1 ~4 slot.container 4 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 5 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 9 lead 5
replaceitem block ~3 ~1 ~4 slot.container 10 golden_apple 5
replaceitem block ~3 ~1 ~4 slot.container 11 boat 1
replaceitem block ~3 ~1 ~4 slot.container 12 lantern 10
replaceitem block ~3 ~1 ~4 slot.container 13 mangrove_log 16
replaceitem block ~3 ~1 ~4 slot.container 14 mud_bricks 17
loot insert ~3 ~1 ~4 loot "rsf/mangrove_swamp"
loot insert ~3 ~1 ~4 loot "chests/simple_dungeon"
summon bogged ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
