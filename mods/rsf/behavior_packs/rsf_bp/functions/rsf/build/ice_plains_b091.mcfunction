# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2139/4224 | 主题内编号: b091/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·跨水拱桥水神小祠 (ice_plains_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x9 | 地上高度 8格 | 地下深度 3格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 stone_bricks [] replace air
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 stone_bricks [] replace water
fill ~-7 ~1 ~-4 ~7 ~10 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 spruce_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 packed_ice []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 snow []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-3 ~-2 ~5 ~-1 ~2 snow []
fill ~-4 ~-4 ~-1 ~4 ~-1 ~1 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 packed_ice []
fill ~0 ~-4 ~-1 ~0 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-2 ~1 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-2 ~1 slot.container 0 snowball 18
replaceitem block ~-4 ~-2 ~1 slot.container 1 ender_pearl 5
replaceitem block ~-4 ~-2 ~1 slot.container 2 phantom_membrane 6
replaceitem block ~-4 ~-2 ~1 slot.container 3 bone 17
replaceitem block ~-4 ~-2 ~1 slot.container 4 arrow 26
replaceitem block ~-4 ~-2 ~1 slot.container 5 rotten_flesh 17
replaceitem block ~-4 ~-2 ~1 slot.container 9 packed_ice 21
replaceitem block ~-4 ~-2 ~1 slot.container 10 blue_ice 14
replaceitem block ~-4 ~-2 ~1 slot.container 11 coal 16
replaceitem block ~-4 ~-2 ~1 slot.container 12 iron_ingot 7
replaceitem block ~-4 ~-2 ~1 slot.container 13 emerald 5
replaceitem block ~-4 ~-2 ~1 slot.container 14 flint_and_steel 1
loot insert ~-4 ~-2 ~1 loot "rsf/ice_plains"
loot insert ~-4 ~-2 ~1 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-3 ~6 ~8 ~3 stone_bricks []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 air []
fill ~-1 ~1 ~-3 ~1 ~3 ~3 air []
fill ~-1 ~3 ~-3 ~1 ~3 ~-3 iron_bars []
fill ~-1 ~3 ~3 ~1 ~3 ~3 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-4 ~7 ~8 ~4 spruce_slab []
fill ~-5 ~9 ~-2 ~5 ~10 ~2 blue_ice []
fill ~-6 ~11 ~-3 ~6 ~11 ~3 stone_brick_slab []
setblock ~0 ~12 ~0 chiseled_stone_bricks []
setblock ~0 ~13 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 snow []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 campfire []
setblock ~2 ~4 ~-6 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x4x5) ---
fill ~-9 ~0 ~-4 ~-9 ~9 ~-4 packed_ice []
fill ~9 ~0 ~4 ~9 ~9 ~4 packed_ice []
setblock ~-9 ~10 ~-4 blue_ice []
setblock ~9 ~10 ~4 blue_ice []
setblock ~1 ~7 ~4 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 string 11
replaceitem block ~5 ~1 ~1 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~1 slot.container 2 snowball 21
replaceitem block ~5 ~1 ~1 slot.container 3 ender_pearl 8
replaceitem block ~5 ~1 ~1 slot.container 4 phantom_membrane 9
replaceitem block ~5 ~1 ~1 slot.container 5 bone 12
replaceitem block ~5 ~1 ~1 slot.container 9 emerald 7
replaceitem block ~5 ~1 ~1 slot.container 10 flint_and_steel 1
replaceitem block ~5 ~1 ~1 slot.container 11 lantern 10
replaceitem block ~5 ~1 ~1 slot.container 12 golden_apple 2
replaceitem block ~5 ~1 ~1 slot.container 13 cooked_cod 9
replaceitem block ~5 ~1 ~1 slot.container 14 cooked_salmon 10
loot insert ~5 ~1 ~1 loot "rsf/ice_plains"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 snowball 16
replaceitem block ~-5 ~1 ~2 slot.container 1 ender_pearl 3
replaceitem block ~-5 ~1 ~2 slot.container 2 phantom_membrane 4
replaceitem block ~-5 ~1 ~2 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~2 slot.container 4 arrow 24
replaceitem block ~-5 ~1 ~2 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~2 slot.container 9 emerald 5
replaceitem block ~-5 ~1 ~2 slot.container 10 flint_and_steel 1
replaceitem block ~-5 ~1 ~2 slot.container 11 lantern 8
replaceitem block ~-5 ~1 ~2 slot.container 12 golden_apple 7
replaceitem block ~-5 ~1 ~2 slot.container 13 cooked_cod 14
replaceitem block ~-5 ~1 ~2 slot.container 14 cooked_salmon 8
loot insert ~-5 ~1 ~2 loot "rsf/ice_plains"
loot insert ~-5 ~1 ~2 loot "chests/igloo_chest"
summon polar_bear ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
