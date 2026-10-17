# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2137/4224 | 主题内编号: b089/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·四柱挑檐祈愿凉亭 (ice_plains_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[trial_pit] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 11x9 | 地上高度 8格 | 地下深度 2格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 snow [] replace air
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 snow [] replace water
fill ~-5 ~1 ~-4 ~5 ~10 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 quartz_block []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
setblock ~-4 ~-5 ~-3 campfire []
setblock ~4 ~-5 ~3 campfire []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 string 8
replaceitem block ~0 ~-3 ~3 slot.container 1 gunpowder 9
replaceitem block ~0 ~-3 ~3 slot.container 2 snowball 18
replaceitem block ~0 ~-3 ~3 slot.container 3 ender_pearl 5
replaceitem block ~0 ~-3 ~3 slot.container 4 phantom_membrane 6
replaceitem block ~0 ~-3 ~3 slot.container 5 bone 17
replaceitem block ~0 ~-3 ~3 slot.container 9 lantern 9
replaceitem block ~0 ~-3 ~3 slot.container 10 golden_apple 8
replaceitem block ~0 ~-3 ~3 slot.container 11 cooked_cod 8
replaceitem block ~0 ~-3 ~3 slot.container 12 cooked_salmon 9
replaceitem block ~0 ~-3 ~3 slot.container 13 packed_ice 18
replaceitem block ~0 ~-3 ~3 slot.container 14 blue_ice 11
loot insert ~0 ~-3 ~3 loot "rsf/ice_plains"
loot insert ~0 ~-3 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~8 ~3 snow []
fill ~-3 ~1 ~-2 ~3 ~7 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~8 ~-3 spruce_log []
fill ~-4 ~1 ~3 ~-4 ~8 ~3 spruce_log []
fill ~4 ~1 ~-3 ~4 ~8 ~-3 spruce_log []
fill ~4 ~1 ~3 ~4 ~8 ~3 spruce_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 spruce_fence []
setblock ~4 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 stone_brick_slab []
fill ~-3 ~9 ~-2 ~3 ~10 ~2 packed_ice []
fill ~-4 ~11 ~-3 ~4 ~11 ~3 quartz_slab []
setblock ~0 ~12 ~0 blue_ice []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-5 ~2 ~0 ~-4 packed_ice []
fill ~-2 ~1 ~-5 ~-2 ~3 ~-5 spruce_log []
fill ~2 ~1 ~-5 ~2 ~3 ~-5 spruce_log []
fill ~-2 ~4 ~-5 ~2 ~4 ~-4 stone_brick_slab []
setblock ~0 ~3 ~-5 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 7x5x3) ---
fill ~-7 ~0 ~-5 ~-7 ~7 ~-5 packed_ice []
fill ~7 ~0 ~5 ~7 ~7 ~5 packed_ice []
setblock ~-7 ~8 ~-5 blue_ice []
setblock ~7 ~8 ~5 blue_ice []
setblock ~-2 ~5 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~2 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 arrow 21
replaceitem block ~3 ~1 ~1 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~1 slot.container 2 string 11
replaceitem block ~3 ~1 ~1 slot.container 3 gunpowder 12
replaceitem block ~3 ~1 ~1 slot.container 4 snowball 21
replaceitem block ~3 ~1 ~1 slot.container 5 ender_pearl 8
replaceitem block ~3 ~1 ~1 slot.container 9 cooked_cod 10
replaceitem block ~3 ~1 ~1 slot.container 10 cooked_salmon 11
replaceitem block ~3 ~1 ~1 slot.container 11 packed_ice 20
replaceitem block ~3 ~1 ~1 slot.container 12 blue_ice 13
replaceitem block ~3 ~1 ~1 slot.container 13 coal 22
replaceitem block ~3 ~1 ~1 slot.container 14 iron_ingot 6
loot insert ~3 ~1 ~1 loot "rsf/ice_plains"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 string 14
replaceitem block ~-3 ~1 ~2 slot.container 1 gunpowder 15
replaceitem block ~-3 ~1 ~2 slot.container 2 snowball 16
replaceitem block ~-3 ~1 ~2 slot.container 3 ender_pearl 3
replaceitem block ~-3 ~1 ~2 slot.container 4 phantom_membrane 4
replaceitem block ~-3 ~1 ~2 slot.container 5 bone 15
replaceitem block ~-3 ~1 ~2 slot.container 9 cooked_cod 8
replaceitem block ~-3 ~1 ~2 slot.container 10 cooked_salmon 9
replaceitem block ~-3 ~1 ~2 slot.container 11 packed_ice 18
replaceitem block ~-3 ~1 ~2 slot.container 12 blue_ice 11
replaceitem block ~-3 ~1 ~2 slot.container 13 coal 20
replaceitem block ~-3 ~1 ~2 slot.container 14 iron_ingot 11
loot insert ~-3 ~1 ~2 loot "rsf/ice_plains"
loot insert ~-3 ~1 ~2 loot "chests/igloo_chest"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
