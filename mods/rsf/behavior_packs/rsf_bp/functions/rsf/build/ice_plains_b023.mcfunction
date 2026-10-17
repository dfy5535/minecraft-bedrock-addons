# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2071/4224 | 主题内编号: b023/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·双层露台阁楼宝室 (ice_plains_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x13 | 地上高度 9格 | 地下深度 2格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 stone_bricks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 stone_bricks [] replace water
fill ~-6 ~1 ~-6 ~6 ~11 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 spruce_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 packed_ice []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 snow []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 snow []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-5 ~5 ~4 ~5 stone_bricks []
fill ~-4 ~1 ~-4 ~4 ~3 ~4 air []
fill ~-6 ~4 ~-6 ~6 ~4 ~6 spruce_slab []
fill ~-4 ~5 ~-4 ~4 ~9 ~4 blue_ice []
fill ~-3 ~5 ~-3 ~3 ~8 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~9 ~-6 ~6 ~9 ~6 spruce_slab []
fill ~-4 ~10 ~-4 ~4 ~11 ~4 blue_ice []
fill ~-5 ~12 ~-5 ~5 ~12 ~5 stone_brick_slab []
setblock ~0 ~13 ~0 chiseled_stone_bricks []
setblock ~0 ~14 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~11 ~2 blue_ice []
fill ~6 ~1 ~-1 ~7 ~10 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~12 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-8 ~0 ~-7 ~-8 ~6 ~-7 packed_ice []
fill ~8 ~0 ~7 ~8 ~6 ~7 packed_ice []
setblock ~-8 ~7 ~-7 blue_ice []
setblock ~8 ~7 ~7 blue_ice []
setblock ~2 ~4 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 phantom_membrane 9
replaceitem block ~4 ~1 ~3 slot.container 1 bone 12
replaceitem block ~4 ~1 ~3 slot.container 2 arrow 21
replaceitem block ~4 ~1 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 4 string 11
replaceitem block ~4 ~1 ~3 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 9 packed_ice 22
replaceitem block ~4 ~1 ~3 slot.container 10 blue_ice 8
replaceitem block ~4 ~1 ~3 slot.container 11 coal 17
replaceitem block ~4 ~1 ~3 slot.container 12 iron_ingot 8
replaceitem block ~4 ~1 ~3 slot.container 13 emerald 6
replaceitem block ~4 ~1 ~3 slot.container 14 flint_and_steel 1
loot insert ~4 ~1 ~3 loot "rsf/ice_plains"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 arrow 24
replaceitem block ~-4 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-4 ~1 ~4 slot.container 2 string 14
replaceitem block ~-4 ~1 ~4 slot.container 3 gunpowder 15
replaceitem block ~-4 ~1 ~4 slot.container 4 snowball 16
replaceitem block ~-4 ~1 ~4 slot.container 5 ender_pearl 3
replaceitem block ~-4 ~1 ~4 slot.container 9 packed_ice 20
replaceitem block ~-4 ~1 ~4 slot.container 10 blue_ice 13
replaceitem block ~-4 ~1 ~4 slot.container 11 coal 22
replaceitem block ~-4 ~1 ~4 slot.container 12 iron_ingot 6
replaceitem block ~-4 ~1 ~4 slot.container 13 emerald 4
replaceitem block ~-4 ~1 ~4 slot.container 14 flint_and_steel 1
loot insert ~-4 ~1 ~4 loot "rsf/ice_plains"
loot insert ~-4 ~1 ~4 loot "chests/igloo_chest"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
