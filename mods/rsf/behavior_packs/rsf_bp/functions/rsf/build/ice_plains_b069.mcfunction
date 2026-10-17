# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2117/4224 | 主题内编号: b069/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·藤蔓侵蚀十字修道院 (ice_plains_ruin_overgrown_abbey)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 snow [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 snow [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 quartz_block []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 packed_ice []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 packed_ice []
setblock ~0 ~-5 ~0 sea_lantern []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 phantom_membrane 6
replaceitem block ~0 ~-2 ~-3 slot.container 1 bone 17
replaceitem block ~0 ~-2 ~-3 slot.container 2 arrow 26
replaceitem block ~0 ~-2 ~-3 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-2 ~-3 slot.container 4 string 8
replaceitem block ~0 ~-2 ~-3 slot.container 5 gunpowder 9
replaceitem block ~0 ~-2 ~-3 slot.container 9 emerald 9
replaceitem block ~0 ~-2 ~-3 slot.container 10 flint_and_steel 1
replaceitem block ~0 ~-2 ~-3 slot.container 11 lantern 5
replaceitem block ~0 ~-2 ~-3 slot.container 12 golden_apple 4
replaceitem block ~0 ~-2 ~-3 slot.container 13 cooked_cod 11
replaceitem block ~0 ~-2 ~-3 slot.container 14 cooked_salmon 12
loot insert ~0 ~-2 ~-3 loot "rsf/ice_plains"
loot insert ~0 ~-2 ~-3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~7 ~5 snow []
fill ~-6 ~1 ~-2 ~6 ~7 ~2 snow []
fill ~-1 ~1 ~-4 ~1 ~6 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~6 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 spruce_fence []
setblock ~6 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 stone_brick_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 packed_ice []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 spruce_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 spruce_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~-9 ~0 ~-8 ~-9 ~7 ~-8 packed_ice []
fill ~9 ~0 ~8 ~9 ~7 ~8 packed_ice []
setblock ~-9 ~8 ~-8 blue_ice []
setblock ~9 ~8 ~8 blue_ice []
setblock ~-3 ~5 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 snowball 21
replaceitem block ~5 ~1 ~3 slot.container 1 ender_pearl 8
replaceitem block ~5 ~1 ~3 slot.container 2 phantom_membrane 9
replaceitem block ~5 ~1 ~3 slot.container 3 bone 12
replaceitem block ~5 ~1 ~3 slot.container 4 arrow 21
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 9 cooked_cod 11
replaceitem block ~5 ~1 ~3 slot.container 10 cooked_salmon 12
replaceitem block ~5 ~1 ~3 slot.container 11 packed_ice 21
replaceitem block ~5 ~1 ~3 slot.container 12 blue_ice 14
replaceitem block ~5 ~1 ~3 slot.container 13 coal 16
replaceitem block ~5 ~1 ~3 slot.container 14 iron_ingot 7
loot insert ~5 ~1 ~3 loot "rsf/ice_plains"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 phantom_membrane 4
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 2 arrow 24
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 4 string 14
replaceitem block ~-5 ~1 ~4 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 9 cooked_cod 9
replaceitem block ~-5 ~1 ~4 slot.container 10 cooked_salmon 10
replaceitem block ~-5 ~1 ~4 slot.container 11 packed_ice 19
replaceitem block ~-5 ~1 ~4 slot.container 12 blue_ice 12
replaceitem block ~-5 ~1 ~4 slot.container 13 coal 21
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 12
loot insert ~-5 ~1 ~4 loot "rsf/ice_plains"
loot insert ~-5 ~1 ~4 loot "chests/igloo_chest"
summon witch ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-2 ~0
