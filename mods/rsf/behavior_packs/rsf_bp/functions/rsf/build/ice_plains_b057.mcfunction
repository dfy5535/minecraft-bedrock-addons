# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2105/4224 | 主题内编号: b057/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·中央石棺帝王地下陵寝 (ice_plains_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 snow [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 snow [] replace water
fill ~-7 ~1 ~-7 ~7 ~8 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 packed_ice []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 packed_ice []
setblock ~0 ~-6 ~0 sea_lantern []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 string 8
replaceitem block ~0 ~-3 ~-4 slot.container 1 gunpowder 9
replaceitem block ~0 ~-3 ~-4 slot.container 2 snowball 18
replaceitem block ~0 ~-3 ~-4 slot.container 3 ender_pearl 5
replaceitem block ~0 ~-3 ~-4 slot.container 4 phantom_membrane 6
replaceitem block ~0 ~-3 ~-4 slot.container 5 bone 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 cooked_cod 9
replaceitem block ~0 ~-3 ~-4 slot.container 10 cooked_salmon 10
replaceitem block ~0 ~-3 ~-4 slot.container 11 packed_ice 19
replaceitem block ~0 ~-3 ~-4 slot.container 12 blue_ice 12
replaceitem block ~0 ~-3 ~-4 slot.container 13 coal 21
replaceitem block ~0 ~-3 ~-4 slot.container 14 iron_ingot 12
loot insert ~0 ~-3 ~-4 loot "rsf/ice_plains"
loot insert ~0 ~-3 ~-4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-6 ~6 ~2 ~6 snow []
fill ~-5 ~1 ~-5 ~5 ~3 ~5 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 packed_ice []
fill ~0 ~1 ~-6 ~0 ~2 ~6 packed_ice []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 packed_ice []
fill ~-5 ~8 ~-5 ~5 ~8 ~5 packed_ice []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 blue_ice []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~5 ~-7 chiseled_stone_bricks []
setblock ~-8 ~6 ~-7 soul_lantern []
fill ~-8 ~0 ~7 ~-8 ~5 ~7 chiseled_stone_bricks []
setblock ~-8 ~6 ~7 soul_lantern []
fill ~8 ~0 ~-7 ~8 ~5 ~-7 chiseled_stone_bricks []
setblock ~8 ~6 ~-7 soul_lantern []
fill ~8 ~0 ~7 ~8 ~5 ~7 chiseled_stone_bricks []
setblock ~8 ~6 ~7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x9x6) ---
fill ~-9 ~0 ~-9 ~-9 ~10 ~-9 packed_ice []
fill ~9 ~0 ~9 ~9 ~10 ~9 packed_ice []
setblock ~-9 ~11 ~-9 blue_ice []
setblock ~9 ~11 ~9 blue_ice []
setblock ~-3 ~8 ~9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 arrow 21
replaceitem block ~5 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 2 string 11
replaceitem block ~5 ~1 ~4 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~4 slot.container 4 snowball 21
replaceitem block ~5 ~1 ~4 slot.container 5 ender_pearl 8
replaceitem block ~5 ~1 ~4 slot.container 9 coal 21
replaceitem block ~5 ~1 ~4 slot.container 10 iron_ingot 12
replaceitem block ~5 ~1 ~4 slot.container 11 emerald 3
replaceitem block ~5 ~1 ~4 slot.container 12 flint_and_steel 1
replaceitem block ~5 ~1 ~4 slot.container 13 lantern 6
replaceitem block ~5 ~1 ~4 slot.container 14 golden_apple 5
loot insert ~5 ~1 ~4 loot "rsf/ice_plains"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 string 14
replaceitem block ~-5 ~1 ~5 slot.container 1 gunpowder 15
replaceitem block ~-5 ~1 ~5 slot.container 2 snowball 16
replaceitem block ~-5 ~1 ~5 slot.container 3 ender_pearl 3
replaceitem block ~-5 ~1 ~5 slot.container 4 phantom_membrane 4
replaceitem block ~-5 ~1 ~5 slot.container 5 bone 15
replaceitem block ~-5 ~1 ~5 slot.container 9 coal 19
replaceitem block ~-5 ~1 ~5 slot.container 10 iron_ingot 10
replaceitem block ~-5 ~1 ~5 slot.container 11 emerald 8
replaceitem block ~-5 ~1 ~5 slot.container 12 flint_and_steel 1
replaceitem block ~-5 ~1 ~5 slot.container 13 lantern 4
replaceitem block ~-5 ~1 ~5 slot.container 14 golden_apple 3
loot insert ~-5 ~1 ~5 loot "rsf/ice_plains"
loot insert ~-5 ~1 ~5 loot "chests/igloo_chest"
summon witch ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
