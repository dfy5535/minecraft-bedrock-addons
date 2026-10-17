# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2091/4224 | 主题内编号: b043/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·十字四门试炼擂台 (ice_plains_arena_cross_gauntlet)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 2格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-3 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-3 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 spruce_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 packed_ice []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 snow []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 snow []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 bone 17
replaceitem block ~0 ~-3 ~-2 slot.container 1 arrow 26
replaceitem block ~0 ~-3 ~-2 slot.container 2 rotten_flesh 17
replaceitem block ~0 ~-3 ~-2 slot.container 3 string 8
replaceitem block ~0 ~-3 ~-2 slot.container 4 gunpowder 9
replaceitem block ~0 ~-3 ~-2 slot.container 5 snowball 18
replaceitem block ~0 ~-3 ~-2 slot.container 9 blue_ice 11
replaceitem block ~0 ~-3 ~-2 slot.container 10 coal 20
replaceitem block ~0 ~-3 ~-2 slot.container 11 iron_ingot 11
replaceitem block ~0 ~-3 ~-2 slot.container 12 emerald 9
replaceitem block ~0 ~-3 ~-2 slot.container 13 flint_and_steel 1
replaceitem block ~0 ~-3 ~-2 slot.container 14 lantern 5
loot insert ~0 ~-3 ~-2 loot "rsf/ice_plains"
loot insert ~0 ~-3 ~-2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~7 ~6 stone_bricks []
fill ~-7 ~1 ~-2 ~7 ~7 ~2 stone_bricks []
fill ~-1 ~1 ~-5 ~1 ~6 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~6 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 spruce_fence []
setblock ~7 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 snow []
fill ~-7 ~8 ~-6 ~7 ~8 ~6 spruce_fence []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 air []
setblock ~-7 ~8 ~-6 spruce_log []
setblock ~-7 ~9 ~-6 campfire []
setblock ~-7 ~8 ~6 spruce_log []
setblock ~-7 ~9 ~6 campfire []
setblock ~7 ~8 ~-6 spruce_log []
setblock ~7 ~9 ~-6 campfire []
setblock ~7 ~8 ~6 spruce_log []
setblock ~7 ~9 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 snow []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 campfire []
setblock ~2 ~4 ~-9 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 10x7x2) ---
fill ~-10 ~0 ~-7 ~-10 ~6 ~-7 packed_ice []
fill ~10 ~0 ~7 ~10 ~6 ~7 packed_ice []
setblock ~-10 ~7 ~-7 blue_ice []
setblock ~10 ~7 ~7 blue_ice []
setblock ~0 ~4 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-6 ~1 ~5 fletching_table []
setblock ~0 ~1 ~5 target []
setblock ~6 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 string 11
replaceitem block ~6 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~6 ~1 ~4 slot.container 2 snowball 21
replaceitem block ~6 ~1 ~4 slot.container 3 ender_pearl 8
replaceitem block ~6 ~1 ~4 slot.container 4 phantom_membrane 9
replaceitem block ~6 ~1 ~4 slot.container 5 bone 12
replaceitem block ~6 ~1 ~4 slot.container 9 packed_ice 21
replaceitem block ~6 ~1 ~4 slot.container 10 blue_ice 14
replaceitem block ~6 ~1 ~4 slot.container 11 coal 16
replaceitem block ~6 ~1 ~4 slot.container 12 iron_ingot 7
replaceitem block ~6 ~1 ~4 slot.container 13 emerald 5
replaceitem block ~6 ~1 ~4 slot.container 14 flint_and_steel 1
loot insert ~6 ~1 ~4 loot "rsf/ice_plains"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 snowball 16
replaceitem block ~-6 ~1 ~5 slot.container 1 ender_pearl 3
replaceitem block ~-6 ~1 ~5 slot.container 2 phantom_membrane 4
replaceitem block ~-6 ~1 ~5 slot.container 3 bone 15
replaceitem block ~-6 ~1 ~5 slot.container 4 arrow 24
replaceitem block ~-6 ~1 ~5 slot.container 5 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 9 packed_ice 19
replaceitem block ~-6 ~1 ~5 slot.container 10 blue_ice 12
replaceitem block ~-6 ~1 ~5 slot.container 11 coal 21
replaceitem block ~-6 ~1 ~5 slot.container 12 iron_ingot 12
replaceitem block ~-6 ~1 ~5 slot.container 13 emerald 3
replaceitem block ~-6 ~1 ~5 slot.container 14 flint_and_steel 1
loot insert ~-6 ~1 ~5 loot "rsf/ice_plains"
loot insert ~-6 ~1 ~5 loot "chests/igloo_chest"
summon polar_bear ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
