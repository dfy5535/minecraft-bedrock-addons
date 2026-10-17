# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2097/4224 | 主题内编号: b049/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·双坡顶林间猎人木屋 (ice_plains_outpost_hunter_cabin)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 snow [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 snow [] replace water
fill ~-6 ~1 ~-6 ~6 ~9 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 quartz_block []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-4 ~4 ~-1 ~4 packed_ice []
fill ~-3 ~-4 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~3 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~3 slot.container 0 snowball 18
replaceitem block ~3 ~-2 ~3 slot.container 1 ender_pearl 5
replaceitem block ~3 ~-2 ~3 slot.container 2 phantom_membrane 6
replaceitem block ~3 ~-2 ~3 slot.container 3 bone 17
replaceitem block ~3 ~-2 ~3 slot.container 4 arrow 26
replaceitem block ~3 ~-2 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-2 ~3 slot.container 9 coal 16
replaceitem block ~3 ~-2 ~3 slot.container 10 iron_ingot 7
replaceitem block ~3 ~-2 ~3 slot.container 11 emerald 5
replaceitem block ~3 ~-2 ~3 slot.container 12 flint_and_steel 1
replaceitem block ~3 ~-2 ~3 slot.container 13 lantern 8
replaceitem block ~3 ~-2 ~3 slot.container 14 golden_apple 7
loot insert ~3 ~-2 ~3 loot "rsf/ice_plains"
loot insert ~3 ~-2 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-5 ~5 ~7 ~5 snow []
fill ~-4 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-5 ~1 ~-5 ~-5 ~7 ~-5 spruce_log []
fill ~-5 ~1 ~5 ~-5 ~7 ~5 spruce_log []
fill ~5 ~1 ~-5 ~5 ~7 ~-5 spruce_log []
fill ~5 ~1 ~5 ~5 ~7 ~5 spruce_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-5 ~2 ~0 spruce_fence []
setblock ~5 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-6 ~-6 ~8 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-6 ~6 ~8 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~-5 ~9 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-5 ~5 ~9 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-5 ~4 ~9 ~5 stone_brick_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 packed_ice []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 spruce_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 8x6x3) ---
fill ~-8 ~0 ~-6 ~-8 ~7 ~-6 packed_ice []
fill ~8 ~0 ~6 ~8 ~7 ~6 packed_ice []
setblock ~-8 ~8 ~-6 blue_ice []
setblock ~8 ~8 ~6 blue_ice []
setblock ~-2 ~5 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 arrow 21
replaceitem block ~4 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 2 string 11
replaceitem block ~4 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 4 snowball 21
replaceitem block ~4 ~1 ~3 slot.container 5 ender_pearl 8
replaceitem block ~4 ~1 ~3 slot.container 9 cooked_cod 12
replaceitem block ~4 ~1 ~3 slot.container 10 cooked_salmon 13
replaceitem block ~4 ~1 ~3 slot.container 11 packed_ice 22
replaceitem block ~4 ~1 ~3 slot.container 12 blue_ice 8
replaceitem block ~4 ~1 ~3 slot.container 13 coal 17
replaceitem block ~4 ~1 ~3 slot.container 14 iron_ingot 8
loot insert ~4 ~1 ~3 loot "rsf/ice_plains"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 string 14
replaceitem block ~-4 ~1 ~4 slot.container 1 gunpowder 15
replaceitem block ~-4 ~1 ~4 slot.container 2 snowball 16
replaceitem block ~-4 ~1 ~4 slot.container 3 ender_pearl 3
replaceitem block ~-4 ~1 ~4 slot.container 4 phantom_membrane 4
replaceitem block ~-4 ~1 ~4 slot.container 5 bone 15
replaceitem block ~-4 ~1 ~4 slot.container 9 cooked_cod 10
replaceitem block ~-4 ~1 ~4 slot.container 10 cooked_salmon 11
replaceitem block ~-4 ~1 ~4 slot.container 11 packed_ice 20
replaceitem block ~-4 ~1 ~4 slot.container 12 blue_ice 13
replaceitem block ~-4 ~1 ~4 slot.container 13 coal 22
replaceitem block ~-4 ~1 ~4 slot.container 14 iron_ingot 6
loot insert ~-4 ~1 ~4 loot "rsf/ice_plains"
loot insert ~-4 ~1 ~4 loot "chests/igloo_chest"
summon polar_bear ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
