# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1788/4224 | 主题内编号: b124/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·三层重檐帝王阁楼与秘库 (mangrove_swamp_grand_pagoda_imperial)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x17 | 地上高度 11格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~15 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~15 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~15 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~15 ~9 air [] replace log2
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 mud_bricks [] replace air
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 mud_bricks [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 mud_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 packed_mud []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 mangrove_planks []
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~5 slot.container 0 slime_ball 19
replaceitem block ~3 ~-3 ~5 slot.container 1 bone 16
replaceitem block ~3 ~-3 ~5 slot.container 2 arrow 23
replaceitem block ~3 ~-3 ~5 slot.container 3 rotten_flesh 10
replaceitem block ~3 ~-3 ~5 slot.container 4 spider_eye 7
replaceitem block ~3 ~-3 ~5 slot.container 5 gunpowder 8
replaceitem block ~3 ~-3 ~5 slot.container 9 boat 1
replaceitem block ~3 ~-3 ~5 slot.container 10 lantern 4
replaceitem block ~3 ~-3 ~5 slot.container 11 mangrove_log 17
replaceitem block ~3 ~-3 ~5 slot.container 12 mud_bricks 18
replaceitem block ~3 ~-3 ~5 slot.container 13 cooked_salmon 11
replaceitem block ~3 ~-3 ~5 slot.container 14 iron_ingot 10
loot insert ~3 ~-3 ~5 loot "rsf/mangrove_swamp"
loot insert ~3 ~-3 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-7 ~5 ~5 ~7 mud_bricks []
fill ~-4 ~1 ~-6 ~4 ~4 ~6 air []
fill ~-6 ~5 ~-8 ~6 ~5 ~8 mud_brick_slab []
fill ~-4 ~6 ~-6 ~4 ~11 ~6 mangrove_planks []
fill ~-3 ~6 ~-5 ~3 ~10 ~5 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~5 ~0 ~6 ~5 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~11 ~-8 ~6 ~11 ~8 mud_brick_slab []
fill ~-4 ~12 ~-6 ~4 ~13 ~6 mangrove_planks []
fill ~-5 ~14 ~-7 ~5 ~14 ~7 mangrove_slab []
setblock ~0 ~15 ~0 chiseled_stone_bricks []
setblock ~0 ~16 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 mangrove_log []
fill ~-7 ~0 ~2 ~-7 ~6 ~2 mangrove_log []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 mangrove_log []
fill ~7 ~0 ~2 ~7 ~6 ~2 mangrove_log []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~-8 ~-2 ~2 ~-8 ~6 ~2 mangrove_roots []
fill ~8 ~-2 ~2 ~8 ~6 ~2 mangrove_roots []
fill ~-8 ~7 ~2 ~8 ~7 ~2 mud_brick_slab []
setblock ~0 ~8 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~6 slot.container 0 spider_eye 10
replaceitem block ~-4 ~1 ~6 slot.container 1 gunpowder 11
replaceitem block ~-4 ~1 ~6 slot.container 2 prismarine_shard 10
replaceitem block ~-4 ~1 ~6 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~6 slot.container 4 slime_ball 14
replaceitem block ~-4 ~1 ~6 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~6 slot.container 9 gold_ingot 7
replaceitem block ~-4 ~1 ~6 slot.container 10 emerald 7
replaceitem block ~-4 ~1 ~6 slot.container 11 lead 7
replaceitem block ~-4 ~1 ~6 slot.container 12 golden_apple 7
replaceitem block ~-4 ~1 ~6 slot.container 13 boat 1
replaceitem block ~-4 ~1 ~6 slot.container 14 lantern 5
loot insert ~-4 ~1 ~6 loot "rsf/mangrove_swamp"
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 prismarine_shard 5
replaceitem block ~4 ~1 ~6 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~6 slot.container 2 slime_ball 17
replaceitem block ~4 ~1 ~6 slot.container 3 bone 14
replaceitem block ~4 ~1 ~6 slot.container 4 arrow 21
replaceitem block ~4 ~1 ~6 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~6 slot.container 9 gold_ingot 5
replaceitem block ~4 ~1 ~6 slot.container 10 emerald 5
replaceitem block ~4 ~1 ~6 slot.container 11 lead 5
replaceitem block ~4 ~1 ~6 slot.container 12 golden_apple 5
replaceitem block ~4 ~1 ~6 slot.container 13 boat 1
replaceitem block ~4 ~1 ~6 slot.container 14 lantern 10
loot insert ~4 ~1 ~6 loot "rsf/mangrove_swamp"
loot insert ~4 ~1 ~6 loot "chests/simple_dungeon"
summon bogged ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
