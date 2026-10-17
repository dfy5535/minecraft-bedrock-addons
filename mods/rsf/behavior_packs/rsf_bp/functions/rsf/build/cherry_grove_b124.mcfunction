# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1916/4224 | 主题内编号: b124/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·三层重檐帝王阁楼与秘库 (cherry_grove_grand_pagoda_imperial)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x15 | 地上高度 9格 | 地下深度 5格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~13 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~13 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~13 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~13 ~8 air [] replace log2
fill ~-7 ~-6 ~-7 ~7 ~-1 ~7 stone_bricks [] replace air
fill ~-7 ~-6 ~-7 ~7 ~-1 ~7 stone_bricks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 quartz_block []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 calcite []
fill ~-4 ~-6 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-4 ~4 slot.container 0 rotten_flesh 13
replaceitem block ~4 ~-4 ~4 slot.container 1 bone 14
replaceitem block ~4 ~-4 ~4 slot.container 2 string 15
replaceitem block ~4 ~-4 ~4 slot.container 3 gunpowder 6
replaceitem block ~4 ~-4 ~4 slot.container 4 arrow 17
replaceitem block ~4 ~-4 ~4 slot.container 5 ender_pearl 4
replaceitem block ~4 ~-4 ~4 slot.container 9 honey_bottle 5
replaceitem block ~4 ~-4 ~4 slot.container 10 honeycomb 8
replaceitem block ~4 ~-4 ~4 slot.container 11 golden_apple 5
replaceitem block ~4 ~-4 ~4 slot.container 12 iron_ingot 10
replaceitem block ~4 ~-4 ~4 slot.container 13 emerald 9
replaceitem block ~4 ~-4 ~4 slot.container 14 amethyst_shard 12
loot insert ~4 ~-4 ~4 loot "rsf/cherry_grove"
loot insert ~4 ~-4 ~4 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-6 ~6 ~4 ~6 stone_bricks []
fill ~-5 ~1 ~-5 ~5 ~3 ~5 air []
fill ~-7 ~4 ~-7 ~7 ~4 ~7 stone_brick_slab []
fill ~-5 ~5 ~-5 ~5 ~9 ~5 calcite []
fill ~-4 ~5 ~-4 ~4 ~8 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~5 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~9 ~-7 ~7 ~9 ~7 stone_brick_slab []
fill ~-5 ~10 ~-5 ~5 ~11 ~5 calcite []
fill ~-6 ~12 ~-6 ~6 ~12 ~6 cherry_slab []
setblock ~0 ~13 ~0 honeycomb_block []
setblock ~0 ~14 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~3 ~-8 stripped_cherry_log []
setblock ~-8 ~4 ~-8 lantern []
fill ~-8 ~0 ~8 ~-8 ~3 ~8 stripped_cherry_log []
setblock ~-8 ~4 ~8 lantern []
fill ~8 ~0 ~-8 ~8 ~3 ~-8 stripped_cherry_log []
setblock ~8 ~4 ~-8 lantern []
fill ~8 ~0 ~8 ~8 ~3 ~8 stripped_cherry_log []
setblock ~8 ~4 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~-2 ~0 ~-9 ~-2 ~8 ~-9 cherry_log []
fill ~2 ~0 ~-9 ~2 ~8 ~-9 cherry_log []
fill ~-3 ~8 ~-9 ~3 ~8 ~-9 cherry_slab []
fill ~-2 ~7 ~-9 ~2 ~7 ~-9 stripped_cherry_log []
setblock ~-2 ~9 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 arrow 20
replaceitem block ~-5 ~1 ~4 slot.container 1 ender_pearl 7
replaceitem block ~-5 ~1 ~4 slot.container 2 phantom_membrane 8
replaceitem block ~-5 ~1 ~4 slot.container 3 feather 15
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 8
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 9
replaceitem block ~-5 ~1 ~4 slot.container 9 bow 1
replaceitem block ~-5 ~1 ~4 slot.container 10 lantern 10
replaceitem block ~-5 ~1 ~4 slot.container 11 cherry_log 16
replaceitem block ~-5 ~1 ~4 slot.container 12 cherry_sapling 5
replaceitem block ~-5 ~1 ~4 slot.container 13 honey_bottle 6
replaceitem block ~-5 ~1 ~4 slot.container 14 honeycomb 9
loot insert ~-5 ~1 ~4 loot "rsf/cherry_grove"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon bee ~1 ~1 ~1
summon allay ~0 ~-4 ~0
