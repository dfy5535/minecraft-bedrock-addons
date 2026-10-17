# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2143/4224 | 主题内编号: b095/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·双子灯笼守卫神龛 (ice_plains_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x9 | 地上高度 8格 | 地下深度 2格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 stone_bricks [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 stone_bricks [] replace water
fill ~-7 ~1 ~-4 ~7 ~10 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 spruce_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 packed_ice []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 snow []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 packed_ice []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 packed_ice []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 phantom_membrane 6
replaceitem block ~-3 ~-3 ~2 slot.container 1 bone 17
replaceitem block ~-3 ~-3 ~2 slot.container 2 arrow 26
replaceitem block ~-3 ~-3 ~2 slot.container 3 rotten_flesh 17
replaceitem block ~-3 ~-3 ~2 slot.container 4 string 8
replaceitem block ~-3 ~-3 ~2 slot.container 5 gunpowder 9
replaceitem block ~-3 ~-3 ~2 slot.container 9 coal 19
replaceitem block ~-3 ~-3 ~2 slot.container 10 iron_ingot 10
replaceitem block ~-3 ~-3 ~2 slot.container 11 emerald 8
replaceitem block ~-3 ~-3 ~2 slot.container 12 flint_and_steel 1
replaceitem block ~-3 ~-3 ~2 slot.container 13 lantern 4
replaceitem block ~-3 ~-3 ~2 slot.container 14 golden_apple 3
loot insert ~-3 ~-3 ~2 loot "rsf/ice_plains"
loot insert ~-3 ~-3 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~9 ~3 stone_bricks []
fill ~2 ~1 ~-3 ~6 ~9 ~3 stone_bricks []
fill ~-5 ~1 ~-2 ~-3 ~8 ~2 air []
fill ~3 ~1 ~-2 ~5 ~8 ~2 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 snow []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-4 ~7 ~8 ~4 spruce_slab []
fill ~-5 ~9 ~-2 ~5 ~10 ~2 blue_ice []
fill ~-6 ~11 ~-3 ~6 ~11 ~3 stone_brick_slab []
setblock ~0 ~12 ~0 chiseled_stone_bricks []
setblock ~0 ~13 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-5 ~-8 ~5 ~-5 spruce_log []
setblock ~-8 ~6 ~-5 campfire []
fill ~-8 ~0 ~5 ~-8 ~5 ~5 spruce_log []
setblock ~-8 ~6 ~5 campfire []
fill ~8 ~0 ~-5 ~8 ~5 ~-5 spruce_log []
setblock ~8 ~6 ~-5 campfire []
fill ~8 ~0 ~5 ~8 ~5 ~5 spruce_log []
setblock ~8 ~6 ~5 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x5x4) ---
fill ~-9 ~0 ~-5 ~-9 ~8 ~-5 packed_ice []
fill ~9 ~0 ~5 ~9 ~8 ~5 packed_ice []
setblock ~-9 ~9 ~-5 blue_ice []
setblock ~9 ~9 ~5 blue_ice []
setblock ~-1 ~6 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~2 smoker []
setblock ~5 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 phantom_membrane 9
replaceitem block ~5 ~1 ~1 slot.container 1 bone 12
replaceitem block ~5 ~1 ~1 slot.container 2 arrow 21
replaceitem block ~5 ~1 ~1 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~1 slot.container 4 string 11
replaceitem block ~5 ~1 ~1 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~1 slot.container 9 lantern 5
replaceitem block ~5 ~1 ~1 slot.container 10 golden_apple 4
replaceitem block ~5 ~1 ~1 slot.container 11 cooked_cod 11
replaceitem block ~5 ~1 ~1 slot.container 12 cooked_salmon 12
replaceitem block ~5 ~1 ~1 slot.container 13 packed_ice 21
replaceitem block ~5 ~1 ~1 slot.container 14 blue_ice 14
loot insert ~5 ~1 ~1 loot "rsf/ice_plains"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 arrow 24
replaceitem block ~-5 ~1 ~2 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~2 slot.container 2 string 14
replaceitem block ~-5 ~1 ~2 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~2 slot.container 4 snowball 16
replaceitem block ~-5 ~1 ~2 slot.container 5 ender_pearl 3
replaceitem block ~-5 ~1 ~2 slot.container 9 lantern 10
replaceitem block ~-5 ~1 ~2 slot.container 10 golden_apple 2
replaceitem block ~-5 ~1 ~2 slot.container 11 cooked_cod 9
replaceitem block ~-5 ~1 ~2 slot.container 12 cooked_salmon 10
replaceitem block ~-5 ~1 ~2 slot.container 13 packed_ice 19
replaceitem block ~-5 ~1 ~2 slot.container 14 blue_ice 12
loot insert ~-5 ~1 ~2 loot "rsf/ice_plains"
loot insert ~-5 ~1 ~2 loot "chests/igloo_chest"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
