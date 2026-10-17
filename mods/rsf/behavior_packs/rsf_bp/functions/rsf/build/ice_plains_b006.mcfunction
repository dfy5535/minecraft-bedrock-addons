# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2054/4224 | 主题内编号: b006/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·重檐飞角四方神龛 (ice_plains_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 packed_ice [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 packed_ice [] replace water
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 quartz_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 quartz_block []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 packed_ice []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 rotten_flesh 17
replaceitem block ~3 ~-3 ~2 slot.container 1 string 8
replaceitem block ~3 ~-3 ~2 slot.container 2 gunpowder 9
replaceitem block ~3 ~-3 ~2 slot.container 3 snowball 18
replaceitem block ~3 ~-3 ~2 slot.container 4 ender_pearl 5
replaceitem block ~3 ~-3 ~2 slot.container 5 phantom_membrane 6
replaceitem block ~3 ~-3 ~2 slot.container 9 iron_ingot 12
replaceitem block ~3 ~-3 ~2 slot.container 10 emerald 3
replaceitem block ~3 ~-3 ~2 slot.container 11 flint_and_steel 1
replaceitem block ~3 ~-3 ~2 slot.container 12 lantern 6
replaceitem block ~3 ~-3 ~2 slot.container 13 golden_apple 5
replaceitem block ~3 ~-3 ~2 slot.container 14 cooked_cod 12
loot insert ~3 ~-3 ~2 loot "rsf/ice_plains"
loot insert ~3 ~-3 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-4 ~5 ~9 ~4 packed_ice []
fill ~-4 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 chiseled_stone_bricks []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 chiseled_stone_bricks []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 chiseled_stone_bricks []
fill ~5 ~1 ~4 ~5 ~9 ~4 chiseled_stone_bricks []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 quartz_slab []
fill ~-4 ~10 ~-3 ~4 ~11 ~3 stone_bricks []
fill ~-5 ~12 ~-4 ~5 ~12 ~4 spruce_slab []
setblock ~0 ~13 ~0 sea_lantern []
setblock ~0 ~14 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 packed_ice []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 soul_lantern []
setblock ~2 ~4 ~-9 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~-8 ~0 ~-7 ~-8 ~9 ~-7 packed_ice []
fill ~8 ~0 ~7 ~8 ~9 ~7 packed_ice []
setblock ~-8 ~10 ~-7 blue_ice []
setblock ~8 ~10 ~7 blue_ice []
setblock ~0 ~7 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 ender_pearl 8
replaceitem block ~-4 ~1 ~2 slot.container 1 phantom_membrane 9
replaceitem block ~-4 ~1 ~2 slot.container 2 bone 12
replaceitem block ~-4 ~1 ~2 slot.container 3 arrow 21
replaceitem block ~-4 ~1 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 5 string 11
replaceitem block ~-4 ~1 ~2 slot.container 9 cooked_salmon 11
replaceitem block ~-4 ~1 ~2 slot.container 10 packed_ice 20
replaceitem block ~-4 ~1 ~2 slot.container 11 blue_ice 13
replaceitem block ~-4 ~1 ~2 slot.container 12 coal 22
replaceitem block ~-4 ~1 ~2 slot.container 13 iron_ingot 6
replaceitem block ~-4 ~1 ~2 slot.container 14 emerald 4
loot insert ~-4 ~1 ~2 loot "rsf/ice_plains"
summon zombie ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon spider ~1 ~1 ~1
summon witch ~0 ~-3 ~0
