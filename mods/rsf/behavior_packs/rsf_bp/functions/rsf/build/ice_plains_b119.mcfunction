# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2167/4224 | 主题内编号: b119/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·半地下恒温洞穴苗圃 (ice_plains_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 stone_bricks [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 stone_bricks [] replace water
fill ~-6 ~1 ~-6 ~6 ~8 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 spruce_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 packed_ice []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 snow []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 snow []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 packed_ice []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~3 slot.container 0 arrow 26
replaceitem block ~-3 ~-3 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~-3 ~-3 ~3 slot.container 2 string 8
replaceitem block ~-3 ~-3 ~3 slot.container 3 gunpowder 9
replaceitem block ~-3 ~-3 ~3 slot.container 4 snowball 18
replaceitem block ~-3 ~-3 ~3 slot.container 5 ender_pearl 5
replaceitem block ~-3 ~-3 ~3 slot.container 9 emerald 8
replaceitem block ~-3 ~-3 ~3 slot.container 10 flint_and_steel 1
replaceitem block ~-3 ~-3 ~3 slot.container 11 lantern 4
replaceitem block ~-3 ~-3 ~3 slot.container 12 golden_apple 3
replaceitem block ~-3 ~-3 ~3 slot.container 13 cooked_cod 10
replaceitem block ~-3 ~-3 ~3 slot.container 14 cooked_salmon 11
loot insert ~-3 ~-3 ~3 loot "rsf/ice_plains"
loot insert ~-3 ~-3 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-5 ~5 ~2 ~5 stone_bricks []
fill ~-4 ~1 ~-4 ~4 ~3 ~4 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 snow []
fill ~0 ~1 ~-5 ~0 ~2 ~5 snow []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-5 ~5 ~6 ~5 snow []
fill ~-4 ~7 ~-4 ~4 ~8 ~4 glass []
fill ~-3 ~7 ~-3 ~3 ~7 ~3 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-7 ~7 ~2 ~7 spruce_fence []
fill ~-6 ~1 ~-6 ~6 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~0 ~-7 ~-8 ~7 ~-7 packed_ice []
fill ~8 ~0 ~7 ~8 ~7 ~7 packed_ice []
setblock ~-8 ~8 ~-7 blue_ice []
setblock ~8 ~8 ~7 blue_ice []
setblock ~-2 ~5 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 phantom_membrane 9
replaceitem block ~4 ~1 ~3 slot.container 1 bone 12
replaceitem block ~4 ~1 ~3 slot.container 2 arrow 21
replaceitem block ~4 ~1 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 4 string 11
replaceitem block ~4 ~1 ~3 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 9 cooked_cod 12
replaceitem block ~4 ~1 ~3 slot.container 10 cooked_salmon 13
replaceitem block ~4 ~1 ~3 slot.container 11 packed_ice 22
replaceitem block ~4 ~1 ~3 slot.container 12 blue_ice 8
replaceitem block ~4 ~1 ~3 slot.container 13 coal 17
replaceitem block ~4 ~1 ~3 slot.container 14 iron_ingot 8
loot insert ~4 ~1 ~3 loot "rsf/ice_plains"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 arrow 24
replaceitem block ~-4 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-4 ~1 ~4 slot.container 2 string 14
replaceitem block ~-4 ~1 ~4 slot.container 3 gunpowder 15
replaceitem block ~-4 ~1 ~4 slot.container 4 snowball 16
replaceitem block ~-4 ~1 ~4 slot.container 5 ender_pearl 3
replaceitem block ~-4 ~1 ~4 slot.container 9 cooked_cod 10
replaceitem block ~-4 ~1 ~4 slot.container 10 cooked_salmon 11
replaceitem block ~-4 ~1 ~4 slot.container 11 packed_ice 20
replaceitem block ~-4 ~1 ~4 slot.container 12 blue_ice 13
replaceitem block ~-4 ~1 ~4 slot.container 13 coal 22
replaceitem block ~-4 ~1 ~4 slot.container 14 iron_ingot 6
loot insert ~-4 ~1 ~4 loot "rsf/ice_plains"
loot insert ~-4 ~1 ~4 loot "chests/igloo_chest"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
