# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2108/4224 | 主题内编号: b060/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·圆形穹顶万骨祠堂 (ice_plains_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 5格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 blue_ice [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 blue_ice [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 snow []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 blue_ice []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 soul_lantern []
setblock ~4 ~-6 ~0 soul_lantern []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-4 ~3 slot.container 1 string 8
replaceitem block ~0 ~-4 ~3 slot.container 2 gunpowder 9
replaceitem block ~0 ~-4 ~3 slot.container 3 snowball 18
replaceitem block ~0 ~-4 ~3 slot.container 4 ender_pearl 5
replaceitem block ~0 ~-4 ~3 slot.container 5 phantom_membrane 6
replaceitem block ~0 ~-4 ~3 slot.container 9 iron_ingot 6
replaceitem block ~0 ~-4 ~3 slot.container 10 emerald 4
replaceitem block ~0 ~-4 ~3 slot.container 11 flint_and_steel 1
replaceitem block ~0 ~-4 ~3 slot.container 12 lantern 7
replaceitem block ~0 ~-4 ~3 slot.container 13 golden_apple 6
replaceitem block ~0 ~-4 ~3 slot.container 14 cooked_cod 13
loot insert ~0 ~-4 ~3 loot "rsf/ice_plains"
loot insert ~0 ~-4 ~3 loot "chests/igloo_chest"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-4 ~-3 slot.container 1 string 14
replaceitem block ~0 ~-4 ~-3 slot.container 2 gunpowder 15
replaceitem block ~0 ~-4 ~-3 slot.container 3 snowball 16
replaceitem block ~0 ~-4 ~-3 slot.container 4 ender_pearl 3
replaceitem block ~0 ~-4 ~-3 slot.container 5 phantom_membrane 4
replaceitem block ~0 ~-4 ~-3 slot.container 9 iron_ingot 12
replaceitem block ~0 ~-4 ~-3 slot.container 10 emerald 3
replaceitem block ~0 ~-4 ~-3 slot.container 11 flint_and_steel 1
replaceitem block ~0 ~-4 ~-3 slot.container 12 lantern 6
replaceitem block ~0 ~-4 ~-3 slot.container 13 golden_apple 5
replaceitem block ~0 ~-4 ~-3 slot.container 14 cooked_cod 12
loot insert ~0 ~-4 ~-3 loot "rsf/ice_plains"
loot insert ~0 ~-4 ~-3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 packed_ice []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 quartz_block []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 quartz_block []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 quartz_block []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 quartz_block []
fill ~-2 ~1 ~-5 ~-2 ~7 ~-5 quartz_block []
fill ~-2 ~1 ~5 ~-2 ~7 ~5 quartz_block []
fill ~0 ~1 ~-5 ~0 ~7 ~-5 quartz_block []
fill ~0 ~1 ~5 ~0 ~7 ~5 quartz_block []
fill ~2 ~1 ~-5 ~2 ~7 ~-5 quartz_block []
fill ~2 ~1 ~5 ~2 ~7 ~5 quartz_block []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 quartz_block []
fill ~4 ~1 ~5 ~4 ~7 ~5 quartz_block []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 quartz_block []
fill ~6 ~1 ~5 ~6 ~7 ~5 quartz_block []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 quartz_block []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 quartz_block []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 quartz_block []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 quartz_block []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 quartz_block []
fill ~6 ~1 ~1 ~6 ~7 ~1 quartz_block []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 quartz_block []
fill ~6 ~1 ~3 ~6 ~7 ~3 quartz_block []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 packed_ice []
fill ~-5 ~9 ~-4 ~5 ~10 ~4 glass []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 air []
setblock ~0 ~10 ~0 lantern []

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

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x8x4) ---
fill ~-9 ~0 ~-8 ~-9 ~8 ~-8 packed_ice []
fill ~9 ~0 ~8 ~9 ~8 ~8 packed_ice []
setblock ~-9 ~9 ~-8 blue_ice []
setblock ~9 ~9 ~8 blue_ice []
setblock ~0 ~6 ~8 soul_lantern []

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
replaceitem block ~-5 ~1 ~3 slot.container 9 blue_ice 9
replaceitem block ~-5 ~1 ~3 slot.container 10 coal 18
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 12 emerald 7
replaceitem block ~-5 ~1 ~3 slot.container 13 flint_and_steel 1
replaceitem block ~-5 ~1 ~3 slot.container 14 lantern 10
loot insert ~-5 ~1 ~3 loot "rsf/ice_plains"
summon zombie ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon spider ~1 ~1 ~1
summon witch ~0 ~-4 ~0
