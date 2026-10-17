# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2124/4224 | 主题内编号: b076/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·阶梯高台图腾战阵 (ice_plains_totem_stepped_altar_ring)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x13 | 地上高度 9格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 blue_ice [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 blue_ice [] replace water
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 snow []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 blue_ice []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 diamond_block []
setblock ~-4 ~-5 ~-3 soul_lantern []
setblock ~4 ~-5 ~3 soul_lantern []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 gunpowder 9
replaceitem block ~0 ~-3 ~3 slot.container 1 snowball 18
replaceitem block ~0 ~-3 ~3 slot.container 2 ender_pearl 5
replaceitem block ~0 ~-3 ~3 slot.container 3 phantom_membrane 6
replaceitem block ~0 ~-3 ~3 slot.container 4 bone 17
replaceitem block ~0 ~-3 ~3 slot.container 5 arrow 26
replaceitem block ~0 ~-3 ~3 slot.container 9 blue_ice 8
replaceitem block ~0 ~-3 ~3 slot.container 10 coal 17
replaceitem block ~0 ~-3 ~3 slot.container 11 iron_ingot 8
replaceitem block ~0 ~-3 ~3 slot.container 12 emerald 6
replaceitem block ~0 ~-3 ~3 slot.container 13 flint_and_steel 1
replaceitem block ~0 ~-3 ~3 slot.container 14 lantern 9
loot insert ~0 ~-3 ~3 loot "rsf/ice_plains"
loot insert ~0 ~-3 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 blue_ice []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 packed_ice []
fill ~-4 ~5 ~-3 ~4 ~9 ~3 snow []
fill ~-4 ~1 ~-3 ~4 ~8 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 packed_ice []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 blue_ice []
fill ~0 ~15 ~0 ~0 ~16 ~0 diamond_block []
setblock ~0 ~17 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 quartz_block []
setblock ~0 ~4 ~-7 blue_ice []
setblock ~0 ~5 ~-7 soul_lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 quartz_block []
setblock ~0 ~4 ~7 blue_ice []
setblock ~0 ~5 ~7 soul_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 quartz_block []
setblock ~-8 ~4 ~0 blue_ice []
setblock ~-8 ~5 ~0 soul_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 quartz_block []
setblock ~8 ~4 ~0 blue_ice []
setblock ~8 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x6x5) ---
fill ~-9 ~0 ~-6 ~-9 ~9 ~-6 packed_ice []
fill ~9 ~0 ~6 ~9 ~9 ~6 packed_ice []
setblock ~-9 ~10 ~-6 blue_ice []
setblock ~9 ~10 ~6 blue_ice []
setblock ~-2 ~7 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 1 snowball 21
replaceitem block ~-5 ~1 ~3 slot.container 2 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 3 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 5 arrow 21
replaceitem block ~-5 ~1 ~3 slot.container 9 cooked_salmon 11
replaceitem block ~-5 ~1 ~3 slot.container 10 packed_ice 20
replaceitem block ~-5 ~1 ~3 slot.container 11 blue_ice 13
replaceitem block ~-5 ~1 ~3 slot.container 12 coal 22
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_ingot 6
replaceitem block ~-5 ~1 ~3 slot.container 14 emerald 4
loot insert ~-5 ~1 ~3 loot "rsf/ice_plains"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
