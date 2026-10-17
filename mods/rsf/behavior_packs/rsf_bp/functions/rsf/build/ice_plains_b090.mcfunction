# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2138/4224 | 主题内编号: b090/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·八角攒尖悬灯神龛 (ice_plains_shrine_octagonal_gazebo)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 packed_ice [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 packed_ice [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 quartz_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 quartz_block []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 packed_ice []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 ender_pearl 5
replaceitem block ~3 ~-3 ~2 slot.container 1 phantom_membrane 6
replaceitem block ~3 ~-3 ~2 slot.container 2 bone 17
replaceitem block ~3 ~-3 ~2 slot.container 3 arrow 26
replaceitem block ~3 ~-3 ~2 slot.container 4 rotten_flesh 17
replaceitem block ~3 ~-3 ~2 slot.container 5 string 8
replaceitem block ~3 ~-3 ~2 slot.container 9 flint_and_steel 1
replaceitem block ~3 ~-3 ~2 slot.container 10 lantern 4
replaceitem block ~3 ~-3 ~2 slot.container 11 golden_apple 3
replaceitem block ~3 ~-3 ~2 slot.container 12 cooked_cod 10
replaceitem block ~3 ~-3 ~2 slot.container 13 cooked_salmon 11
replaceitem block ~3 ~-3 ~2 slot.container 14 packed_ice 20
loot insert ~3 ~-3 ~2 loot "rsf/ice_plains"
loot insert ~3 ~-3 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 packed_ice []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 air []
fill ~5 ~1 ~4 ~5 ~9 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~8 ~-3 chiseled_stone_bricks []
fill ~4 ~1 ~-3 ~4 ~8 ~-3 chiseled_stone_bricks []
fill ~-4 ~1 ~3 ~-4 ~8 ~3 chiseled_stone_bricks []
fill ~4 ~1 ~3 ~4 ~8 ~3 chiseled_stone_bricks []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 snow []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 sea_lantern []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 chiseled_stone_bricks []
setblock ~-7 ~6 ~-6 soul_lantern []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 chiseled_stone_bricks []
setblock ~-7 ~6 ~6 soul_lantern []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 chiseled_stone_bricks []
setblock ~7 ~6 ~-6 soul_lantern []
fill ~7 ~0 ~6 ~7 ~5 ~6 chiseled_stone_bricks []
setblock ~7 ~6 ~6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~-8 ~0 ~-7 ~-8 ~8 ~-7 packed_ice []
fill ~8 ~0 ~7 ~8 ~8 ~7 packed_ice []
setblock ~-8 ~9 ~-7 blue_ice []
setblock ~8 ~9 ~7 blue_ice []
setblock ~-1 ~6 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 1 string 11
replaceitem block ~-4 ~1 ~2 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 3 snowball 21
replaceitem block ~-4 ~1 ~2 slot.container 4 ender_pearl 8
replaceitem block ~-4 ~1 ~2 slot.container 5 phantom_membrane 9
replaceitem block ~-4 ~1 ~2 slot.container 9 blue_ice 11
replaceitem block ~-4 ~1 ~2 slot.container 10 coal 20
replaceitem block ~-4 ~1 ~2 slot.container 11 iron_ingot 11
replaceitem block ~-4 ~1 ~2 slot.container 12 emerald 9
replaceitem block ~-4 ~1 ~2 slot.container 13 flint_and_steel 1
replaceitem block ~-4 ~1 ~2 slot.container 14 lantern 5
loot insert ~-4 ~1 ~2 loot "rsf/ice_plains"
summon zombie ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon spider ~1 ~1 ~1
summon witch ~0 ~-3 ~0
