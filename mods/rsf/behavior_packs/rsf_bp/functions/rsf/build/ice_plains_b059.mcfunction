# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2107/4224 | 主题内编号: b059/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·阶梯金字塔法老墓室 (ice_plains_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 spruce_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 packed_ice []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 snow []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 blue_ice []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 snow []
setblock ~0 ~-6 ~0 diamond_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 campfire []
setblock ~2 ~-5 ~0 campfire []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 snowball 18
replaceitem block ~0 ~-3 ~-4 slot.container 1 ender_pearl 5
replaceitem block ~0 ~-3 ~-4 slot.container 2 phantom_membrane 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 bone 17
replaceitem block ~0 ~-3 ~-4 slot.container 4 arrow 26
replaceitem block ~0 ~-3 ~-4 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 emerald 6
replaceitem block ~0 ~-3 ~-4 slot.container 10 flint_and_steel 1
replaceitem block ~0 ~-3 ~-4 slot.container 11 lantern 9
replaceitem block ~0 ~-3 ~-4 slot.container 12 golden_apple 8
replaceitem block ~0 ~-3 ~-4 slot.container 13 cooked_cod 8
replaceitem block ~0 ~-3 ~-4 slot.container 14 cooked_salmon 9
loot insert ~0 ~-3 ~-4 loot "rsf/ice_plains"
loot insert ~0 ~-3 ~-4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 stone_bricks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 snow []
fill ~-5 ~5 ~-4 ~5 ~8 ~4 blue_ice []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 spruce_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~9 ~-6 ~7 ~9 ~6 snow []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 blue_ice []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 chiseled_stone_bricks []
setblock ~0 ~12 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~5 ~-8 spruce_log []
setblock ~-9 ~6 ~-8 campfire []
fill ~-9 ~0 ~8 ~-9 ~5 ~8 spruce_log []
setblock ~-9 ~6 ~8 campfire []
fill ~9 ~0 ~-8 ~9 ~5 ~-8 spruce_log []
setblock ~9 ~6 ~-8 campfire []
fill ~9 ~0 ~8 ~9 ~5 ~8 spruce_log []
setblock ~9 ~6 ~8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 10x8x3) ---
fill ~-10 ~0 ~-8 ~-10 ~7 ~-8 packed_ice []
fill ~10 ~0 ~8 ~10 ~7 ~8 packed_ice []
setblock ~-10 ~8 ~-8 blue_ice []
setblock ~10 ~8 ~8 blue_ice []
setblock ~2 ~5 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 string 11
replaceitem block ~6 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~6 ~1 ~4 slot.container 2 snowball 21
replaceitem block ~6 ~1 ~4 slot.container 3 ender_pearl 8
replaceitem block ~6 ~1 ~4 slot.container 4 phantom_membrane 9
replaceitem block ~6 ~1 ~4 slot.container 5 bone 12
replaceitem block ~6 ~1 ~4 slot.container 9 cooked_cod 8
replaceitem block ~6 ~1 ~4 slot.container 10 cooked_salmon 9
replaceitem block ~6 ~1 ~4 slot.container 11 packed_ice 18
replaceitem block ~6 ~1 ~4 slot.container 12 blue_ice 11
replaceitem block ~6 ~1 ~4 slot.container 13 coal 20
replaceitem block ~6 ~1 ~4 slot.container 14 iron_ingot 11
loot insert ~6 ~1 ~4 loot "rsf/ice_plains"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 snowball 16
replaceitem block ~-6 ~1 ~5 slot.container 1 ender_pearl 3
replaceitem block ~-6 ~1 ~5 slot.container 2 phantom_membrane 4
replaceitem block ~-6 ~1 ~5 slot.container 3 bone 15
replaceitem block ~-6 ~1 ~5 slot.container 4 arrow 24
replaceitem block ~-6 ~1 ~5 slot.container 5 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 9 cooked_cod 13
replaceitem block ~-6 ~1 ~5 slot.container 10 cooked_salmon 14
replaceitem block ~-6 ~1 ~5 slot.container 11 packed_ice 16
replaceitem block ~-6 ~1 ~5 slot.container 12 blue_ice 9
replaceitem block ~-6 ~1 ~5 slot.container 13 coal 18
replaceitem block ~-6 ~1 ~5 slot.container 14 iron_ingot 9
loot insert ~-6 ~1 ~5 loot "rsf/ice_plains"
loot insert ~-6 ~1 ~5 loot "chests/igloo_chest"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
