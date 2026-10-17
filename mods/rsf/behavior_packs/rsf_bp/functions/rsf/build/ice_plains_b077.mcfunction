# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2125/4224 | 主题内编号: b077/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·双子鸟居图腾神道 (ice_plains_totem_twin_spirit_gate)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x11 | 地上高度 8格 | 地下深度 2格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 snow [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 snow [] replace water
fill ~-7 ~1 ~-5 ~7 ~10 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 stone_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 stone_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 quartz_block []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 blue_ice []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 chiseled_stone_bricks []
setblock ~0 ~-5 ~0 campfire []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 phantom_membrane 6
replaceitem block ~4 ~-2 ~0 slot.container 1 bone 17
replaceitem block ~4 ~-2 ~0 slot.container 2 arrow 26
replaceitem block ~4 ~-2 ~0 slot.container 3 rotten_flesh 17
replaceitem block ~4 ~-2 ~0 slot.container 4 string 8
replaceitem block ~4 ~-2 ~0 slot.container 5 gunpowder 9
replaceitem block ~4 ~-2 ~0 slot.container 9 cooked_cod 10
replaceitem block ~4 ~-2 ~0 slot.container 10 cooked_salmon 11
replaceitem block ~4 ~-2 ~0 slot.container 11 packed_ice 20
replaceitem block ~4 ~-2 ~0 slot.container 12 blue_ice 13
replaceitem block ~4 ~-2 ~0 slot.container 13 coal 22
replaceitem block ~4 ~-2 ~0 slot.container 14 iron_ingot 6
loot insert ~4 ~-2 ~0 loot "rsf/ice_plains"
loot insert ~4 ~-2 ~0 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~8 ~4 snow []
fill ~-5 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-5 ~7 ~8 ~5 stone_brick_slab []
fill ~-5 ~9 ~-3 ~5 ~10 ~3 packed_ice []
fill ~-6 ~11 ~-4 ~6 ~11 ~4 quartz_slab []
setblock ~0 ~12 ~0 blue_ice []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 packed_ice []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x6x6) ---
fill ~-9 ~0 ~-6 ~-9 ~10 ~-6 packed_ice []
fill ~9 ~0 ~6 ~9 ~10 ~6 packed_ice []
setblock ~-9 ~11 ~-6 blue_ice []
setblock ~9 ~11 ~6 blue_ice []
setblock ~-1 ~8 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-5 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 snowball 21
replaceitem block ~5 ~1 ~2 slot.container 1 ender_pearl 8
replaceitem block ~5 ~1 ~2 slot.container 2 phantom_membrane 9
replaceitem block ~5 ~1 ~2 slot.container 3 bone 12
replaceitem block ~5 ~1 ~2 slot.container 4 arrow 21
replaceitem block ~5 ~1 ~2 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~2 slot.container 9 coal 20
replaceitem block ~5 ~1 ~2 slot.container 10 iron_ingot 11
replaceitem block ~5 ~1 ~2 slot.container 11 emerald 9
replaceitem block ~5 ~1 ~2 slot.container 12 flint_and_steel 1
replaceitem block ~5 ~1 ~2 slot.container 13 lantern 5
replaceitem block ~5 ~1 ~2 slot.container 14 golden_apple 4
loot insert ~5 ~1 ~2 loot "rsf/ice_plains"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 phantom_membrane 4
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 15
replaceitem block ~-5 ~1 ~3 slot.container 2 arrow 24
replaceitem block ~-5 ~1 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 4 string 14
replaceitem block ~-5 ~1 ~3 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~3 slot.container 9 coal 18
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 11 emerald 7
replaceitem block ~-5 ~1 ~3 slot.container 12 flint_and_steel 1
replaceitem block ~-5 ~1 ~3 slot.container 13 lantern 10
replaceitem block ~-5 ~1 ~3 slot.container 14 golden_apple 2
loot insert ~-5 ~1 ~3 loot "rsf/ice_plains"
loot insert ~-5 ~1 ~3 loot "chests/igloo_chest"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
