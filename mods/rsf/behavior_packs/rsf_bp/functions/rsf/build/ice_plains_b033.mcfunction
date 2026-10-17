# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2081/4224 | 主题内编号: b033/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·太阳金顶高耸方尖碑 (ice_plains_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 11x9 | 地上高度 12格 | 地下深度 3格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 snow [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 snow [] replace water
fill ~-5 ~1 ~-4 ~5 ~14 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 quartz_block []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 packed_ice []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 packed_ice []
setblock ~0 ~-5 ~0 sea_lantern []
fill ~0 ~-4 ~2 ~0 ~0 ~2 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-1 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-1 slot.container 0 string 8
replaceitem block ~0 ~-2 ~-1 slot.container 1 gunpowder 9
replaceitem block ~0 ~-2 ~-1 slot.container 2 snowball 18
replaceitem block ~0 ~-2 ~-1 slot.container 3 ender_pearl 5
replaceitem block ~0 ~-2 ~-1 slot.container 4 phantom_membrane 6
replaceitem block ~0 ~-2 ~-1 slot.container 5 bone 17
replaceitem block ~0 ~-2 ~-1 slot.container 9 lantern 9
replaceitem block ~0 ~-2 ~-1 slot.container 10 golden_apple 8
replaceitem block ~0 ~-2 ~-1 slot.container 11 cooked_cod 8
replaceitem block ~0 ~-2 ~-1 slot.container 12 cooked_salmon 9
replaceitem block ~0 ~-2 ~-1 slot.container 13 packed_ice 18
replaceitem block ~0 ~-2 ~-1 slot.container 14 blue_ice 11
loot insert ~0 ~-2 ~-1 loot "rsf/ice_plains"
loot insert ~0 ~-2 ~-1 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-3 ~4 ~2 ~3 snow []
fill ~-3 ~3 ~-2 ~3 ~4 ~2 packed_ice []
fill ~-2 ~5 ~-1 ~2 ~12 ~1 packed_ice []
fill ~-2 ~1 ~-1 ~2 ~11 ~1 air []
fill ~0 ~1 ~-3 ~0 ~4 ~-3 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-2 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~13 ~-2 ~2 ~14 ~2 packed_ice []
fill ~-1 ~15 ~-1 ~1 ~17 ~1 snow []
fill ~0 ~18 ~0 ~0 ~19 ~0 blue_ice []
setblock ~0 ~20 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-5 ~-6 ~5 ~-5 spruce_log []
setblock ~-6 ~6 ~-5 lantern []
fill ~-6 ~0 ~5 ~-6 ~5 ~5 spruce_log []
setblock ~-6 ~6 ~5 lantern []
fill ~6 ~0 ~-5 ~6 ~5 ~-5 spruce_log []
setblock ~6 ~6 ~-5 lantern []
fill ~6 ~0 ~5 ~6 ~5 ~5 spruce_log []
setblock ~6 ~6 ~5 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-7 ~0 ~-6 ~-7 ~6 ~-6 packed_ice []
fill ~7 ~0 ~6 ~7 ~6 ~6 packed_ice []
setblock ~-7 ~7 ~-6 blue_ice []
setblock ~7 ~7 ~6 blue_ice []
setblock ~-2 ~4 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 arrow 21
replaceitem block ~3 ~1 ~1 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~1 slot.container 2 string 11
replaceitem block ~3 ~1 ~1 slot.container 3 gunpowder 12
replaceitem block ~3 ~1 ~1 slot.container 4 snowball 21
replaceitem block ~3 ~1 ~1 slot.container 5 ender_pearl 8
replaceitem block ~3 ~1 ~1 slot.container 9 packed_ice 18
replaceitem block ~3 ~1 ~1 slot.container 10 blue_ice 11
replaceitem block ~3 ~1 ~1 slot.container 11 coal 20
replaceitem block ~3 ~1 ~1 slot.container 12 iron_ingot 11
replaceitem block ~3 ~1 ~1 slot.container 13 emerald 9
replaceitem block ~3 ~1 ~1 slot.container 14 flint_and_steel 1
loot insert ~3 ~1 ~1 loot "rsf/ice_plains"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 string 14
replaceitem block ~-3 ~1 ~2 slot.container 1 gunpowder 15
replaceitem block ~-3 ~1 ~2 slot.container 2 snowball 16
replaceitem block ~-3 ~1 ~2 slot.container 3 ender_pearl 3
replaceitem block ~-3 ~1 ~2 slot.container 4 phantom_membrane 4
replaceitem block ~-3 ~1 ~2 slot.container 5 bone 15
replaceitem block ~-3 ~1 ~2 slot.container 9 packed_ice 16
replaceitem block ~-3 ~1 ~2 slot.container 10 blue_ice 9
replaceitem block ~-3 ~1 ~2 slot.container 11 coal 18
replaceitem block ~-3 ~1 ~2 slot.container 12 iron_ingot 9
replaceitem block ~-3 ~1 ~2 slot.container 13 emerald 7
replaceitem block ~-3 ~1 ~2 slot.container 14 flint_and_steel 1
loot insert ~-3 ~1 ~2 loot "rsf/ice_plains"
loot insert ~-3 ~1 ~2 loot "chests/igloo_chest"
summon witch ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-2 ~0
