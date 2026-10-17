# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2155/4224 | 主题内编号: b107/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·观星高塔与秘术地宫 (ice_plains_arcane_star_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~12 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_ice []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 snow []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 blue_ice []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
setblock ~0 ~-6 ~0 campfire []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 string 8
replaceitem block ~3 ~-3 ~0 slot.container 1 gunpowder 9
replaceitem block ~3 ~-3 ~0 slot.container 2 snowball 18
replaceitem block ~3 ~-3 ~0 slot.container 3 ender_pearl 5
replaceitem block ~3 ~-3 ~0 slot.container 4 phantom_membrane 6
replaceitem block ~3 ~-3 ~0 slot.container 5 bone 17
replaceitem block ~3 ~-3 ~0 slot.container 9 cooked_cod 12
replaceitem block ~3 ~-3 ~0 slot.container 10 cooked_salmon 13
replaceitem block ~3 ~-3 ~0 slot.container 11 packed_ice 22
replaceitem block ~3 ~-3 ~0 slot.container 12 blue_ice 8
replaceitem block ~3 ~-3 ~0 slot.container 13 coal 17
replaceitem block ~3 ~-3 ~0 slot.container 14 iron_ingot 8
loot insert ~3 ~-3 ~0 loot "rsf/ice_plains"
loot insert ~3 ~-3 ~0 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-5 ~1 ~-4 ~5 ~10 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~9 ~3 air []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 stone_brick_slab []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~3 ~0 ~10 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~10 ~-4 ~5 ~10 ~4 snow []
fill ~-4 ~11 ~-3 ~4 ~12 ~3 glass []
fill ~-3 ~11 ~-2 ~3 ~11 ~2 air []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~9 ~-2 spruce_log []
fill ~-6 ~0 ~2 ~-6 ~9 ~2 spruce_log []
fill ~6 ~0 ~-2 ~6 ~9 ~-2 spruce_log []
fill ~6 ~0 ~2 ~6 ~9 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 8x6x6) ---
fill ~-8 ~0 ~-6 ~-8 ~10 ~-6 packed_ice []
fill ~8 ~0 ~6 ~8 ~10 ~6 packed_ice []
setblock ~-8 ~11 ~-6 blue_ice []
setblock ~8 ~11 ~6 blue_ice []
setblock ~1 ~8 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 string 11
replaceitem block ~4 ~1 ~2 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~2 slot.container 2 snowball 21
replaceitem block ~4 ~1 ~2 slot.container 3 ender_pearl 8
replaceitem block ~4 ~1 ~2 slot.container 4 phantom_membrane 9
replaceitem block ~4 ~1 ~2 slot.container 5 bone 12
replaceitem block ~4 ~1 ~2 slot.container 9 coal 22
replaceitem block ~4 ~1 ~2 slot.container 10 iron_ingot 6
replaceitem block ~4 ~1 ~2 slot.container 11 emerald 4
replaceitem block ~4 ~1 ~2 slot.container 12 flint_and_steel 1
replaceitem block ~4 ~1 ~2 slot.container 13 lantern 7
replaceitem block ~4 ~1 ~2 slot.container 14 golden_apple 6
loot insert ~4 ~1 ~2 loot "rsf/ice_plains"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 snowball 16
replaceitem block ~-4 ~1 ~3 slot.container 1 ender_pearl 3
replaceitem block ~-4 ~1 ~3 slot.container 2 phantom_membrane 4
replaceitem block ~-4 ~1 ~3 slot.container 3 bone 15
replaceitem block ~-4 ~1 ~3 slot.container 4 arrow 24
replaceitem block ~-4 ~1 ~3 slot.container 5 rotten_flesh 15
replaceitem block ~-4 ~1 ~3 slot.container 9 coal 20
replaceitem block ~-4 ~1 ~3 slot.container 10 iron_ingot 11
replaceitem block ~-4 ~1 ~3 slot.container 11 emerald 9
replaceitem block ~-4 ~1 ~3 slot.container 12 flint_and_steel 1
replaceitem block ~-4 ~1 ~3 slot.container 13 lantern 5
replaceitem block ~-4 ~1 ~3 slot.container 14 golden_apple 4
loot insert ~-4 ~1 ~3 loot "rsf/ice_plains"
loot insert ~-4 ~1 ~3 loot "chests/igloo_chest"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
