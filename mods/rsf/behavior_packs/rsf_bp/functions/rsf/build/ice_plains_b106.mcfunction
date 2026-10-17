# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2154/4224 | 主题内编号: b106/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·琉璃穹顶魔药炼金室 (ice_plains_arcane_alchemy_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
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

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 snow []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 packed_ice []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 gunpowder 9
replaceitem block ~-3 ~-3 ~2 slot.container 1 snowball 18
replaceitem block ~-3 ~-3 ~2 slot.container 2 ender_pearl 5
replaceitem block ~-3 ~-3 ~2 slot.container 3 phantom_membrane 6
replaceitem block ~-3 ~-3 ~2 slot.container 4 bone 17
replaceitem block ~-3 ~-3 ~2 slot.container 5 arrow 26
replaceitem block ~-3 ~-3 ~2 slot.container 9 flint_and_steel 1
replaceitem block ~-3 ~-3 ~2 slot.container 10 lantern 4
replaceitem block ~-3 ~-3 ~2 slot.container 11 golden_apple 3
replaceitem block ~-3 ~-3 ~2 slot.container 12 cooked_cod 10
replaceitem block ~-3 ~-3 ~2 slot.container 13 cooked_salmon 11
replaceitem block ~-3 ~-3 ~2 slot.container 14 packed_ice 20
loot insert ~-3 ~-3 ~2 loot "rsf/ice_plains"
loot insert ~-3 ~-3 ~2 loot "chests/igloo_chest"

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

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 snow []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 glass []
fill ~-3 ~9 ~-2 ~3 ~9 ~2 air []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 chiseled_stone_bricks []
setblock ~-7 ~6 ~-6 soul_lantern []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 chiseled_stone_bricks []
setblock ~-7 ~6 ~6 soul_lantern []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 chiseled_stone_bricks []
setblock ~7 ~6 ~-6 soul_lantern []
fill ~7 ~0 ~6 ~7 ~5 ~6 chiseled_stone_bricks []
setblock ~7 ~6 ~6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 8x5x5) ---
fill ~-8 ~0 ~-5 ~-8 ~9 ~-5 packed_ice []
fill ~8 ~0 ~5 ~8 ~9 ~5 packed_ice []
setblock ~-8 ~10 ~-5 blue_ice []
setblock ~8 ~10 ~5 blue_ice []
setblock ~0 ~7 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 1 string 11
replaceitem block ~-4 ~1 ~2 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 3 snowball 21
replaceitem block ~-4 ~1 ~2 slot.container 4 ender_pearl 8
replaceitem block ~-4 ~1 ~2 slot.container 5 phantom_membrane 9
replaceitem block ~-4 ~1 ~2 slot.container 9 cooked_salmon 13
replaceitem block ~-4 ~1 ~2 slot.container 10 packed_ice 22
replaceitem block ~-4 ~1 ~2 slot.container 11 blue_ice 8
replaceitem block ~-4 ~1 ~2 slot.container 12 coal 17
replaceitem block ~-4 ~1 ~2 slot.container 13 iron_ingot 8
replaceitem block ~-4 ~1 ~2 slot.container 14 emerald 6
loot insert ~-4 ~1 ~2 loot "rsf/ice_plains"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
