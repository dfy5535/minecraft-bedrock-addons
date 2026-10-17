# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1884/4224 | 主题内编号: b092/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·双层重檐供奉宝塔 (cherry_grove_shrine_terrace_pagoda)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 quartz_block []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 calcite []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 rotten_flesh 13
replaceitem block ~3 ~-3 ~2 slot.container 1 bone 14
replaceitem block ~3 ~-3 ~2 slot.container 2 string 15
replaceitem block ~3 ~-3 ~2 slot.container 3 gunpowder 6
replaceitem block ~3 ~-3 ~2 slot.container 4 arrow 17
replaceitem block ~3 ~-3 ~2 slot.container 5 ender_pearl 4
replaceitem block ~3 ~-3 ~2 slot.container 9 emerald 8
replaceitem block ~3 ~-3 ~2 slot.container 10 amethyst_shard 11
replaceitem block ~3 ~-3 ~2 slot.container 11 bow 1
replaceitem block ~3 ~-3 ~2 slot.container 12 lantern 4
replaceitem block ~3 ~-3 ~2 slot.container 13 cherry_log 17
replaceitem block ~3 ~-3 ~2 slot.container 14 cherry_sapling 6
loot insert ~3 ~-3 ~2 loot "rsf/cherry_grove"
loot insert ~3 ~-3 ~2 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~4 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-6 ~4 ~-5 ~6 ~4 ~5 stone_brick_slab []
fill ~-4 ~5 ~-3 ~4 ~8 ~3 calcite []
fill ~-3 ~5 ~-2 ~3 ~7 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~5 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 stone_brick_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 calcite []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 cherry_slab []
setblock ~0 ~12 ~0 honeycomb_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 stripped_cherry_log []
setblock ~-7 ~4 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 stripped_cherry_log []
setblock ~-7 ~4 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 stripped_cherry_log []
setblock ~7 ~4 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~3 ~6 stripped_cherry_log []
setblock ~7 ~4 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~-2 ~0 ~-8 ~-2 ~6 ~-8 cherry_log []
fill ~2 ~0 ~-8 ~2 ~6 ~-8 cherry_log []
fill ~-3 ~6 ~-8 ~3 ~6 ~-8 cherry_slab []
fill ~-2 ~5 ~-8 ~2 ~5 ~-8 stripped_cherry_log []
setblock ~0 ~7 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 amethyst_block []
setblock ~0 ~2 ~0 campfire []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 arrow 20
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 7
replaceitem block ~-4 ~1 ~2 slot.container 2 phantom_membrane 8
replaceitem block ~-4 ~1 ~2 slot.container 3 feather 15
replaceitem block ~-4 ~1 ~2 slot.container 4 rotten_flesh 8
replaceitem block ~-4 ~1 ~2 slot.container 5 bone 9
replaceitem block ~-4 ~1 ~2 slot.container 9 honey_bottle 5
replaceitem block ~-4 ~1 ~2 slot.container 10 honeycomb 8
replaceitem block ~-4 ~1 ~2 slot.container 11 golden_apple 5
replaceitem block ~-4 ~1 ~2 slot.container 12 iron_ingot 10
replaceitem block ~-4 ~1 ~2 slot.container 13 emerald 9
replaceitem block ~-4 ~1 ~2 slot.container 14 amethyst_shard 12
loot insert ~-4 ~1 ~2 loot "rsf/cherry_grove"
summon pillager ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
