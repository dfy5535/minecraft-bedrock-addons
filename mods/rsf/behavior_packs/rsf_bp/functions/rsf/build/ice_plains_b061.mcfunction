# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2109/4224 | 主题内编号: b061/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·双子封土古墓地宫 (ice_plains_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 snow [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 snow [] replace water
fill ~-8 ~1 ~-5 ~8 ~9 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 stone_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 stone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 quartz_block []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 packed_ice []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 packed_ice []
setblock ~0 ~-6 ~0 sea_lantern []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 phantom_membrane 6
replaceitem block ~0 ~-3 ~-2 slot.container 1 bone 17
replaceitem block ~0 ~-3 ~-2 slot.container 2 arrow 26
replaceitem block ~0 ~-3 ~-2 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~-2 slot.container 4 string 8
replaceitem block ~0 ~-3 ~-2 slot.container 5 gunpowder 9
replaceitem block ~0 ~-3 ~-2 slot.container 9 packed_ice 21
replaceitem block ~0 ~-3 ~-2 slot.container 10 blue_ice 14
replaceitem block ~0 ~-3 ~-2 slot.container 11 coal 16
replaceitem block ~0 ~-3 ~-2 slot.container 12 iron_ingot 7
replaceitem block ~0 ~-3 ~-2 slot.container 13 emerald 5
replaceitem block ~0 ~-3 ~-2 slot.container 14 flint_and_steel 1
loot insert ~0 ~-3 ~-2 loot "rsf/ice_plains"
loot insert ~0 ~-3 ~-2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~8 ~4 snow []
fill ~2 ~1 ~-4 ~7 ~8 ~4 snow []
fill ~-6 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 packed_ice []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~8 ~-4 ~7 ~8 ~4 packed_ice []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 packed_ice []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 blue_ice []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 packed_ice []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 10x5x5) ---
fill ~-10 ~0 ~-5 ~-10 ~9 ~-5 packed_ice []
fill ~10 ~0 ~5 ~10 ~9 ~5 packed_ice []
setblock ~-10 ~10 ~-5 blue_ice []
setblock ~10 ~10 ~5 blue_ice []
setblock ~-3 ~7 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-6 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 snowball 21
replaceitem block ~6 ~1 ~2 slot.container 1 ender_pearl 8
replaceitem block ~6 ~1 ~2 slot.container 2 phantom_membrane 9
replaceitem block ~6 ~1 ~2 slot.container 3 bone 12
replaceitem block ~6 ~1 ~2 slot.container 4 arrow 21
replaceitem block ~6 ~1 ~2 slot.container 5 rotten_flesh 12
replaceitem block ~6 ~1 ~2 slot.container 9 emerald 5
replaceitem block ~6 ~1 ~2 slot.container 10 flint_and_steel 1
replaceitem block ~6 ~1 ~2 slot.container 11 lantern 8
replaceitem block ~6 ~1 ~2 slot.container 12 golden_apple 7
replaceitem block ~6 ~1 ~2 slot.container 13 cooked_cod 14
replaceitem block ~6 ~1 ~2 slot.container 14 cooked_salmon 8
loot insert ~6 ~1 ~2 loot "rsf/ice_plains"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 phantom_membrane 4
replaceitem block ~-6 ~1 ~3 slot.container 1 bone 15
replaceitem block ~-6 ~1 ~3 slot.container 2 arrow 24
replaceitem block ~-6 ~1 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~-6 ~1 ~3 slot.container 4 string 14
replaceitem block ~-6 ~1 ~3 slot.container 5 gunpowder 15
replaceitem block ~-6 ~1 ~3 slot.container 9 emerald 3
replaceitem block ~-6 ~1 ~3 slot.container 10 flint_and_steel 1
replaceitem block ~-6 ~1 ~3 slot.container 11 lantern 6
replaceitem block ~-6 ~1 ~3 slot.container 12 golden_apple 5
replaceitem block ~-6 ~1 ~3 slot.container 13 cooked_cod 12
replaceitem block ~-6 ~1 ~3 slot.container 14 cooked_salmon 13
loot insert ~-6 ~1 ~3 loot "rsf/ice_plains"
loot insert ~-6 ~1 ~3 loot "chests/igloo_chest"
summon polar_bear ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
