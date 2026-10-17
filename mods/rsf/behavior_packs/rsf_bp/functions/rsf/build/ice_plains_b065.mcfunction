# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2113/4224 | 主题内编号: b065/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·断柱露天古神庙废墟 (ice_plains_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 snow [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 snow [] replace water
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 packed_ice []
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~4 slot.container 0 snowball 18
replaceitem block ~4 ~-2 ~4 slot.container 1 ender_pearl 5
replaceitem block ~4 ~-2 ~4 slot.container 2 phantom_membrane 6
replaceitem block ~4 ~-2 ~4 slot.container 3 bone 17
replaceitem block ~4 ~-2 ~4 slot.container 4 arrow 26
replaceitem block ~4 ~-2 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~4 ~-2 ~4 slot.container 9 packed_ice 18
replaceitem block ~4 ~-2 ~4 slot.container 10 blue_ice 11
replaceitem block ~4 ~-2 ~4 slot.container 11 coal 20
replaceitem block ~4 ~-2 ~4 slot.container 12 iron_ingot 11
replaceitem block ~4 ~-2 ~4 slot.container 13 emerald 9
replaceitem block ~4 ~-2 ~4 slot.container 14 flint_and_steel 1
loot insert ~4 ~-2 ~4 loot "rsf/ice_plains"
loot insert ~4 ~-2 ~4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 packed_ice []
fill ~-6 ~1 ~-6 ~-6 ~6 ~-6 spruce_log []
fill ~-6 ~1 ~6 ~-6 ~6 ~6 spruce_log []
fill ~-4 ~1 ~-6 ~-4 ~6 ~-6 spruce_log []
fill ~-4 ~1 ~6 ~-4 ~6 ~6 spruce_log []
fill ~-2 ~1 ~-6 ~-2 ~6 ~-6 spruce_log []
fill ~-2 ~1 ~6 ~-2 ~6 ~6 spruce_log []
fill ~0 ~1 ~-6 ~0 ~6 ~-6 spruce_log []
fill ~0 ~1 ~6 ~0 ~6 ~6 spruce_log []
fill ~2 ~1 ~-6 ~2 ~6 ~-6 spruce_log []
fill ~2 ~1 ~6 ~2 ~6 ~6 spruce_log []
fill ~4 ~1 ~-6 ~4 ~6 ~-6 spruce_log []
fill ~4 ~1 ~6 ~4 ~6 ~6 spruce_log []
fill ~6 ~1 ~-6 ~6 ~6 ~-6 spruce_log []
fill ~6 ~1 ~6 ~6 ~6 ~6 spruce_log []
fill ~-6 ~1 ~-4 ~-6 ~6 ~-4 spruce_log []
fill ~6 ~1 ~-4 ~6 ~6 ~-4 spruce_log []
fill ~-6 ~1 ~-2 ~-6 ~6 ~-2 spruce_log []
fill ~6 ~1 ~-2 ~6 ~6 ~-2 spruce_log []
fill ~-6 ~1 ~0 ~-6 ~6 ~0 spruce_log []
fill ~6 ~1 ~0 ~6 ~6 ~0 spruce_log []
fill ~-6 ~1 ~2 ~-6 ~6 ~2 spruce_log []
fill ~6 ~1 ~2 ~6 ~6 ~2 spruce_log []
fill ~-6 ~1 ~4 ~-6 ~6 ~4 spruce_log []
fill ~6 ~1 ~4 ~6 ~6 ~4 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 stone_brick_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~5 ~-8 spruce_log []
setblock ~-8 ~6 ~-8 lantern []
fill ~-8 ~0 ~8 ~-8 ~5 ~8 spruce_log []
setblock ~-8 ~6 ~8 lantern []
fill ~8 ~0 ~-8 ~8 ~5 ~-8 spruce_log []
setblock ~8 ~6 ~-8 lantern []
fill ~8 ~0 ~8 ~8 ~5 ~8 spruce_log []
setblock ~8 ~6 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x8x4) ---
fill ~-9 ~0 ~-8 ~-9 ~8 ~-8 packed_ice []
fill ~9 ~0 ~8 ~9 ~8 ~8 packed_ice []
setblock ~-9 ~9 ~-8 blue_ice []
setblock ~9 ~9 ~8 blue_ice []
setblock ~-1 ~6 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 arrow 21
replaceitem block ~5 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 2 string 11
replaceitem block ~5 ~1 ~4 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~4 slot.container 4 snowball 21
replaceitem block ~5 ~1 ~4 slot.container 5 ender_pearl 8
replaceitem block ~5 ~1 ~4 slot.container 9 lantern 10
replaceitem block ~5 ~1 ~4 slot.container 10 golden_apple 2
replaceitem block ~5 ~1 ~4 slot.container 11 cooked_cod 9
replaceitem block ~5 ~1 ~4 slot.container 12 cooked_salmon 10
replaceitem block ~5 ~1 ~4 slot.container 13 packed_ice 19
replaceitem block ~5 ~1 ~4 slot.container 14 blue_ice 12
loot insert ~5 ~1 ~4 loot "rsf/ice_plains"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 string 14
replaceitem block ~-5 ~1 ~5 slot.container 1 gunpowder 15
replaceitem block ~-5 ~1 ~5 slot.container 2 snowball 16
replaceitem block ~-5 ~1 ~5 slot.container 3 ender_pearl 3
replaceitem block ~-5 ~1 ~5 slot.container 4 phantom_membrane 4
replaceitem block ~-5 ~1 ~5 slot.container 5 bone 15
replaceitem block ~-5 ~1 ~5 slot.container 9 lantern 8
replaceitem block ~-5 ~1 ~5 slot.container 10 golden_apple 7
replaceitem block ~-5 ~1 ~5 slot.container 11 cooked_cod 14
replaceitem block ~-5 ~1 ~5 slot.container 12 cooked_salmon 8
replaceitem block ~-5 ~1 ~5 slot.container 13 packed_ice 17
replaceitem block ~-5 ~1 ~5 slot.container 14 blue_ice 10
loot insert ~-5 ~1 ~5 loot "rsf/ice_plains"
loot insert ~-5 ~1 ~5 loot "chests/igloo_chest"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
