# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2088/4224 | 主题内编号: b040/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·崩裂远古符文石碑 (ice_plains_obelisk_fractured_relic)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 blue_ice [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 blue_ice [] replace water
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 snow []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 snow []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 gunpowder 9
replaceitem block ~3 ~-3 ~2 slot.container 1 snowball 18
replaceitem block ~3 ~-3 ~2 slot.container 2 ender_pearl 5
replaceitem block ~3 ~-3 ~2 slot.container 3 phantom_membrane 6
replaceitem block ~3 ~-3 ~2 slot.container 4 bone 17
replaceitem block ~3 ~-3 ~2 slot.container 5 arrow 26
replaceitem block ~3 ~-3 ~2 slot.container 9 flint_and_steel 1
replaceitem block ~3 ~-3 ~2 slot.container 10 lantern 10
replaceitem block ~3 ~-3 ~2 slot.container 11 golden_apple 2
replaceitem block ~3 ~-3 ~2 slot.container 12 cooked_cod 9
replaceitem block ~3 ~-3 ~2 slot.container 13 cooked_salmon 10
replaceitem block ~3 ~-3 ~2 slot.container 14 packed_ice 19
loot insert ~3 ~-3 ~2 loot "rsf/ice_plains"
loot insert ~3 ~-3 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 blue_ice []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 packed_ice []
fill ~-3 ~5 ~-2 ~3 ~9 ~2 snow []
fill ~-3 ~1 ~-2 ~3 ~8 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 stone_brick_slab []
fill ~-1 ~8 ~-1 ~2 ~9 ~2 air []
fill ~-5 ~8 ~-1 ~-5 ~9 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~8 ~-2 quartz_block []
fill ~-6 ~0 ~2 ~-6 ~8 ~2 quartz_block []
fill ~6 ~0 ~-2 ~6 ~8 ~-2 quartz_block []
fill ~6 ~0 ~2 ~6 ~8 ~2 quartz_block []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 8x5x4) ---
fill ~-8 ~0 ~-5 ~-8 ~8 ~-5 packed_ice []
fill ~8 ~0 ~5 ~8 ~8 ~5 packed_ice []
setblock ~-8 ~9 ~-5 blue_ice []
setblock ~8 ~9 ~5 blue_ice []
setblock ~-1 ~6 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~2 slot.container 1 arrow 21
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 3 string 11
replaceitem block ~-4 ~1 ~2 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 5 snowball 21
replaceitem block ~-4 ~1 ~2 slot.container 9 blue_ice 10
replaceitem block ~-4 ~1 ~2 slot.container 10 coal 19
replaceitem block ~-4 ~1 ~2 slot.container 11 iron_ingot 10
replaceitem block ~-4 ~1 ~2 slot.container 12 emerald 8
replaceitem block ~-4 ~1 ~2 slot.container 13 flint_and_steel 1
replaceitem block ~-4 ~1 ~2 slot.container 14 lantern 4
loot insert ~-4 ~1 ~2 loot "rsf/ice_plains"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
