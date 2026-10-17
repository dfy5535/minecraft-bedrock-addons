# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2076/4224 | 主题内编号: b028/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·重檐挑角古钟楼 (ice_plains_tower_pagoda_bell)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x11 | 地上高度 11格 | 地下深度 3格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 blue_ice [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 blue_ice [] replace water
fill ~-6 ~1 ~-5 ~6 ~13 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 snow []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 blue_ice []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 snow []
setblock ~0 ~-5 ~0 diamond_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 campfire []
setblock ~2 ~-4 ~0 campfire []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 snowball 18
replaceitem block ~0 ~-2 ~-3 slot.container 1 ender_pearl 5
replaceitem block ~0 ~-2 ~-3 slot.container 2 phantom_membrane 6
replaceitem block ~0 ~-2 ~-3 slot.container 3 bone 17
replaceitem block ~0 ~-2 ~-3 slot.container 4 arrow 26
replaceitem block ~0 ~-2 ~-3 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-2 ~-3 slot.container 9 lantern 7
replaceitem block ~0 ~-2 ~-3 slot.container 10 golden_apple 6
replaceitem block ~0 ~-2 ~-3 slot.container 11 cooked_cod 13
replaceitem block ~0 ~-2 ~-3 slot.container 12 cooked_salmon 14
replaceitem block ~0 ~-2 ~-3 slot.container 13 packed_ice 16
replaceitem block ~0 ~-2 ~-3 slot.container 14 blue_ice 9
loot insert ~0 ~-2 ~-3 loot "rsf/ice_plains"
loot insert ~0 ~-2 ~-3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~5 ~4 blue_ice []
fill ~-4 ~1 ~-3 ~4 ~4 ~3 air []
fill ~-6 ~5 ~-5 ~6 ~5 ~5 stone_brick_slab []
fill ~-4 ~6 ~-3 ~4 ~11 ~3 snow []
fill ~-3 ~6 ~-2 ~3 ~10 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~6 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~11 ~-5 ~6 ~11 ~5 stone_brick_slab []
fill ~-4 ~12 ~-3 ~4 ~13 ~3 snow []
fill ~-5 ~14 ~-4 ~5 ~14 ~4 stone_brick_slab []
setblock ~0 ~15 ~0 diamond_block []
setblock ~0 ~16 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 quartz_block []
setblock ~-7 ~6 ~-6 soul_lantern []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 quartz_block []
setblock ~-7 ~6 ~6 soul_lantern []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 quartz_block []
setblock ~7 ~6 ~-6 soul_lantern []
fill ~7 ~0 ~6 ~7 ~5 ~6 quartz_block []
setblock ~7 ~6 ~6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 8x5x2) ---
fill ~-8 ~0 ~-5 ~-8 ~6 ~-5 packed_ice []
fill ~8 ~0 ~5 ~8 ~6 ~5 packed_ice []
setblock ~-8 ~7 ~-5 blue_ice []
setblock ~8 ~7 ~5 blue_ice []
setblock ~2 ~4 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 1 snowball 21
replaceitem block ~-4 ~1 ~2 slot.container 2 ender_pearl 8
replaceitem block ~-4 ~1 ~2 slot.container 3 phantom_membrane 9
replaceitem block ~-4 ~1 ~2 slot.container 4 bone 12
replaceitem block ~-4 ~1 ~2 slot.container 5 arrow 21
replaceitem block ~-4 ~1 ~2 slot.container 9 flint_and_steel 1
replaceitem block ~-4 ~1 ~2 slot.container 10 lantern 9
replaceitem block ~-4 ~1 ~2 slot.container 11 golden_apple 8
replaceitem block ~-4 ~1 ~2 slot.container 12 cooked_cod 8
replaceitem block ~-4 ~1 ~2 slot.container 13 cooked_salmon 9
replaceitem block ~-4 ~1 ~2 slot.container 14 packed_ice 18
loot insert ~-4 ~1 ~2 loot "rsf/ice_plains"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
