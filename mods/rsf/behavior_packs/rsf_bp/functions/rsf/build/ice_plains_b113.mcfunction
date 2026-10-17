# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2161/4224 | 主题内编号: b113/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·八角全采光生态温室 (ice_plains_conservatory_glass_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 snow [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 snow [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 quartz_block []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 packed_ice []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 packed_ice []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-2 ~2 slot.container 0 string 8
replaceitem block ~-3 ~-2 ~2 slot.container 1 gunpowder 9
replaceitem block ~-3 ~-2 ~2 slot.container 2 snowball 18
replaceitem block ~-3 ~-2 ~2 slot.container 3 ender_pearl 5
replaceitem block ~-3 ~-2 ~2 slot.container 4 phantom_membrane 6
replaceitem block ~-3 ~-2 ~2 slot.container 5 bone 17
replaceitem block ~-3 ~-2 ~2 slot.container 9 lantern 10
replaceitem block ~-3 ~-2 ~2 slot.container 10 golden_apple 2
replaceitem block ~-3 ~-2 ~2 slot.container 11 cooked_cod 9
replaceitem block ~-3 ~-2 ~2 slot.container 12 cooked_salmon 10
replaceitem block ~-3 ~-2 ~2 slot.container 13 packed_ice 19
replaceitem block ~-3 ~-2 ~2 slot.container 14 blue_ice 12
loot insert ~-3 ~-2 ~2 loot "rsf/ice_plains"
loot insert ~-3 ~-2 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 snow []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 air []
fill ~5 ~1 ~4 ~5 ~9 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~8 ~-3 spruce_log []
fill ~4 ~1 ~-3 ~4 ~8 ~-3 spruce_log []
fill ~-4 ~1 ~3 ~-4 ~8 ~3 spruce_log []
fill ~4 ~1 ~3 ~4 ~8 ~3 spruce_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 packed_ice []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 glass []
fill ~-3 ~9 ~-2 ~3 ~9 ~2 air []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 packed_ice []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 spruce_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 spruce_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 stone_brick_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 8x6x2) ---
fill ~-8 ~0 ~-6 ~-8 ~6 ~-6 packed_ice []
fill ~8 ~0 ~6 ~8 ~6 ~6 packed_ice []
setblock ~-8 ~7 ~-6 blue_ice []
setblock ~8 ~7 ~6 blue_ice []
setblock ~2 ~4 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 arrow 21
replaceitem block ~4 ~1 ~2 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 2 string 11
replaceitem block ~4 ~1 ~2 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~2 slot.container 4 snowball 21
replaceitem block ~4 ~1 ~2 slot.container 5 ender_pearl 8
replaceitem block ~4 ~1 ~2 slot.container 9 packed_ice 21
replaceitem block ~4 ~1 ~2 slot.container 10 blue_ice 14
replaceitem block ~4 ~1 ~2 slot.container 11 coal 16
replaceitem block ~4 ~1 ~2 slot.container 12 iron_ingot 7
replaceitem block ~4 ~1 ~2 slot.container 13 emerald 5
replaceitem block ~4 ~1 ~2 slot.container 14 flint_and_steel 1
loot insert ~4 ~1 ~2 loot "rsf/ice_plains"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 string 14
replaceitem block ~-4 ~1 ~3 slot.container 1 gunpowder 15
replaceitem block ~-4 ~1 ~3 slot.container 2 snowball 16
replaceitem block ~-4 ~1 ~3 slot.container 3 ender_pearl 3
replaceitem block ~-4 ~1 ~3 slot.container 4 phantom_membrane 4
replaceitem block ~-4 ~1 ~3 slot.container 5 bone 15
replaceitem block ~-4 ~1 ~3 slot.container 9 packed_ice 19
replaceitem block ~-4 ~1 ~3 slot.container 10 blue_ice 12
replaceitem block ~-4 ~1 ~3 slot.container 11 coal 21
replaceitem block ~-4 ~1 ~3 slot.container 12 iron_ingot 12
replaceitem block ~-4 ~1 ~3 slot.container 13 emerald 3
replaceitem block ~-4 ~1 ~3 slot.container 14 flint_and_steel 1
loot insert ~-4 ~1 ~3 loot "rsf/ice_plains"
loot insert ~-4 ~1 ~3 loot "chests/igloo_chest"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
