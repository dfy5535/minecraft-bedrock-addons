# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2165/4224 | 主题内编号: b117/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·环柱生态标本采集馆 (ice_plains_conservatory_rotunda_bio)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 snow [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 snow [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 quartz_block []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 packed_ice []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 arrow 26
replaceitem block ~4 ~-2 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~4 ~-2 ~3 slot.container 2 string 8
replaceitem block ~4 ~-2 ~3 slot.container 3 gunpowder 9
replaceitem block ~4 ~-2 ~3 slot.container 4 snowball 18
replaceitem block ~4 ~-2 ~3 slot.container 5 ender_pearl 5
replaceitem block ~4 ~-2 ~3 slot.container 9 lantern 9
replaceitem block ~4 ~-2 ~3 slot.container 10 golden_apple 8
replaceitem block ~4 ~-2 ~3 slot.container 11 cooked_cod 8
replaceitem block ~4 ~-2 ~3 slot.container 12 cooked_salmon 9
replaceitem block ~4 ~-2 ~3 slot.container 13 packed_ice 18
replaceitem block ~4 ~-2 ~3 slot.container 14 blue_ice 11
loot insert ~4 ~-2 ~3 loot "rsf/ice_plains"
loot insert ~4 ~-2 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 packed_ice []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 spruce_log []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 spruce_log []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 spruce_log []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 spruce_log []
fill ~-2 ~1 ~-5 ~-2 ~7 ~-5 spruce_log []
fill ~-2 ~1 ~5 ~-2 ~7 ~5 spruce_log []
fill ~0 ~1 ~-5 ~0 ~7 ~-5 spruce_log []
fill ~0 ~1 ~5 ~0 ~7 ~5 spruce_log []
fill ~2 ~1 ~-5 ~2 ~7 ~-5 spruce_log []
fill ~2 ~1 ~5 ~2 ~7 ~5 spruce_log []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 spruce_log []
fill ~4 ~1 ~5 ~4 ~7 ~5 spruce_log []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 spruce_log []
fill ~6 ~1 ~5 ~6 ~7 ~5 spruce_log []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 spruce_log []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 spruce_log []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 spruce_log []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 spruce_log []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 spruce_log []
fill ~6 ~1 ~1 ~6 ~7 ~1 spruce_log []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 spruce_log []
fill ~6 ~1 ~3 ~6 ~7 ~3 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 packed_ice []
fill ~-5 ~9 ~-4 ~5 ~10 ~4 glass []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 air []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~5 ~-7 spruce_log []
setblock ~-8 ~6 ~-7 lantern []
fill ~-8 ~0 ~7 ~-8 ~5 ~7 spruce_log []
setblock ~-8 ~6 ~7 lantern []
fill ~8 ~0 ~-7 ~8 ~5 ~-7 spruce_log []
setblock ~8 ~6 ~-7 lantern []
fill ~8 ~0 ~7 ~8 ~5 ~7 spruce_log []
setblock ~8 ~6 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~-9 ~0 ~-8 ~-9 ~10 ~-8 packed_ice []
fill ~9 ~0 ~8 ~9 ~10 ~8 packed_ice []
setblock ~-9 ~11 ~-8 blue_ice []
setblock ~9 ~11 ~8 blue_ice []
setblock ~-3 ~8 ~8 soul_lantern []

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
replaceitem block ~5 ~1 ~3 slot.container 9 coal 18
replaceitem block ~5 ~1 ~3 slot.container 10 iron_ingot 9
replaceitem block ~5 ~1 ~3 slot.container 11 emerald 7
replaceitem block ~5 ~1 ~3 slot.container 12 flint_and_steel 1
replaceitem block ~5 ~1 ~3 slot.container 13 lantern 10
replaceitem block ~5 ~1 ~3 slot.container 14 golden_apple 2
loot insert ~5 ~1 ~3 loot "rsf/ice_plains"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 phantom_membrane 4
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 2 arrow 24
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 4 string 14
replaceitem block ~-5 ~1 ~4 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 9 coal 16
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_ingot 7
replaceitem block ~-5 ~1 ~4 slot.container 11 emerald 5
replaceitem block ~-5 ~1 ~4 slot.container 12 flint_and_steel 1
replaceitem block ~-5 ~1 ~4 slot.container 13 lantern 8
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 7
loot insert ~-5 ~1 ~4 loot "rsf/ice_plains"
loot insert ~-5 ~1 ~4 loot "chests/igloo_chest"
summon witch ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-2 ~0
