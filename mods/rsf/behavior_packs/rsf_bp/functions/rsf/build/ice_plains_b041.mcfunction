# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2089/4224 | 主题内编号: b041/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·八角看台古罗马斗技场 (ice_plains_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 snow [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 snow [] replace water
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 snow []
fill ~-6 ~-4 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 blue_ice []
setblock ~-5 ~-4 ~-4 lantern []
setblock ~5 ~-4 ~4 lantern []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 arrow 26
replaceitem block ~0 ~-2 ~4 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-2 ~4 slot.container 2 string 8
replaceitem block ~0 ~-2 ~4 slot.container 3 gunpowder 9
replaceitem block ~0 ~-2 ~4 slot.container 4 snowball 18
replaceitem block ~0 ~-2 ~4 slot.container 5 ender_pearl 5
replaceitem block ~0 ~-2 ~4 slot.container 9 lantern 4
replaceitem block ~0 ~-2 ~4 slot.container 10 golden_apple 3
replaceitem block ~0 ~-2 ~4 slot.container 11 cooked_cod 10
replaceitem block ~0 ~-2 ~4 slot.container 12 cooked_salmon 11
replaceitem block ~0 ~-2 ~4 slot.container 13 packed_ice 20
replaceitem block ~0 ~-2 ~4 slot.container 14 blue_ice 13
loot insert ~0 ~-2 ~4 loot "rsf/ice_plains"
loot insert ~0 ~-2 ~4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 snow []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~8 ~-6 air []
fill ~7 ~1 ~-6 ~7 ~8 ~-6 air []
fill ~-7 ~1 ~6 ~-7 ~8 ~6 air []
fill ~7 ~1 ~6 ~7 ~8 ~6 air []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 spruce_log []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 spruce_log []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 spruce_log []
fill ~6 ~1 ~5 ~6 ~7 ~5 spruce_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-6 ~-7 ~9 ~-6 spruce_log []
setblock ~-7 ~10 ~-6 lantern []
fill ~-7 ~7 ~6 ~-7 ~9 ~6 spruce_log []
setblock ~-7 ~10 ~6 lantern []
fill ~7 ~7 ~-6 ~7 ~9 ~-6 spruce_log []
setblock ~7 ~10 ~-6 lantern []
fill ~7 ~7 ~6 ~7 ~9 ~6 spruce_log []
setblock ~7 ~10 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~5 ~-8 spruce_log []
setblock ~-9 ~6 ~-8 lantern []
fill ~-9 ~0 ~8 ~-9 ~5 ~8 spruce_log []
setblock ~-9 ~6 ~8 lantern []
fill ~9 ~0 ~-8 ~9 ~5 ~-8 spruce_log []
setblock ~9 ~6 ~-8 lantern []
fill ~9 ~0 ~8 ~9 ~5 ~8 spruce_log []
setblock ~9 ~6 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 10x8x5) ---
fill ~-10 ~0 ~-8 ~-10 ~9 ~-8 packed_ice []
fill ~10 ~0 ~8 ~10 ~9 ~8 packed_ice []
setblock ~-10 ~10 ~-8 blue_ice []
setblock ~10 ~10 ~8 blue_ice []
setblock ~-2 ~7 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 arrow 21
replaceitem block ~6 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~6 ~1 ~4 slot.container 2 string 11
replaceitem block ~6 ~1 ~4 slot.container 3 gunpowder 12
replaceitem block ~6 ~1 ~4 slot.container 4 snowball 21
replaceitem block ~6 ~1 ~4 slot.container 5 ender_pearl 8
replaceitem block ~6 ~1 ~4 slot.container 9 emerald 6
replaceitem block ~6 ~1 ~4 slot.container 10 flint_and_steel 1
replaceitem block ~6 ~1 ~4 slot.container 11 lantern 9
replaceitem block ~6 ~1 ~4 slot.container 12 golden_apple 8
replaceitem block ~6 ~1 ~4 slot.container 13 cooked_cod 8
replaceitem block ~6 ~1 ~4 slot.container 14 cooked_salmon 9
loot insert ~6 ~1 ~4 loot "rsf/ice_plains"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 string 14
replaceitem block ~-6 ~1 ~5 slot.container 1 gunpowder 15
replaceitem block ~-6 ~1 ~5 slot.container 2 snowball 16
replaceitem block ~-6 ~1 ~5 slot.container 3 ender_pearl 3
replaceitem block ~-6 ~1 ~5 slot.container 4 phantom_membrane 4
replaceitem block ~-6 ~1 ~5 slot.container 5 bone 15
replaceitem block ~-6 ~1 ~5 slot.container 9 emerald 4
replaceitem block ~-6 ~1 ~5 slot.container 10 flint_and_steel 1
replaceitem block ~-6 ~1 ~5 slot.container 11 lantern 7
replaceitem block ~-6 ~1 ~5 slot.container 12 golden_apple 6
replaceitem block ~-6 ~1 ~5 slot.container 13 cooked_cod 13
replaceitem block ~-6 ~1 ~5 slot.container 14 cooked_salmon 14
loot insert ~-6 ~1 ~5 loot "rsf/ice_plains"
loot insert ~-6 ~1 ~5 loot "chests/igloo_chest"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
