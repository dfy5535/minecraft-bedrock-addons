# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2168/4224 | 主题内编号: b120/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·引水渠跨桥水培温室 (ice_plains_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 blue_ice [] replace air
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 blue_ice [] replace water
fill ~-7 ~1 ~-5 ~7 ~9 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 stone_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 snow []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-4 ~-3 ~5 ~-1 ~3 packed_ice []
fill ~-4 ~-5 ~-2 ~4 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 packed_ice []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-3 ~2 slot.container 0 rotten_flesh 17
replaceitem block ~-4 ~-3 ~2 slot.container 1 string 8
replaceitem block ~-4 ~-3 ~2 slot.container 2 gunpowder 9
replaceitem block ~-4 ~-3 ~2 slot.container 3 snowball 18
replaceitem block ~-4 ~-3 ~2 slot.container 4 ender_pearl 5
replaceitem block ~-4 ~-3 ~2 slot.container 5 phantom_membrane 6
replaceitem block ~-4 ~-3 ~2 slot.container 9 golden_apple 8
replaceitem block ~-4 ~-3 ~2 slot.container 10 cooked_cod 8
replaceitem block ~-4 ~-3 ~2 slot.container 11 cooked_salmon 9
replaceitem block ~-4 ~-3 ~2 slot.container 12 packed_ice 18
replaceitem block ~-4 ~-3 ~2 slot.container 13 blue_ice 11
replaceitem block ~-4 ~-3 ~2 slot.container 14 coal 20
loot insert ~-4 ~-3 ~2 loot "rsf/ice_plains"
loot insert ~-4 ~-3 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~7 ~4 blue_ice []
fill ~-5 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~7 ~-4 ~6 ~7 ~4 packed_ice []
fill ~-5 ~8 ~-3 ~5 ~9 ~3 glass []
fill ~-4 ~8 ~-2 ~4 ~8 ~2 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 packed_ice []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x7x4) ---
fill ~-9 ~0 ~-7 ~-9 ~8 ~-7 packed_ice []
fill ~9 ~0 ~7 ~9 ~8 ~7 packed_ice []
setblock ~-9 ~9 ~-7 blue_ice []
setblock ~9 ~9 ~7 blue_ice []
setblock ~0 ~6 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~2 slot.container 1 arrow 21
replaceitem block ~-5 ~1 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~2 slot.container 3 string 11
replaceitem block ~-5 ~1 ~2 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~2 slot.container 5 snowball 21
replaceitem block ~-5 ~1 ~2 slot.container 9 blue_ice 13
replaceitem block ~-5 ~1 ~2 slot.container 10 coal 22
replaceitem block ~-5 ~1 ~2 slot.container 11 iron_ingot 6
replaceitem block ~-5 ~1 ~2 slot.container 12 emerald 4
replaceitem block ~-5 ~1 ~2 slot.container 13 flint_and_steel 1
replaceitem block ~-5 ~1 ~2 slot.container 14 lantern 7
loot insert ~-5 ~1 ~2 loot "rsf/ice_plains"
summon zombie ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon spider ~1 ~1 ~1
summon witch ~0 ~-3 ~0
