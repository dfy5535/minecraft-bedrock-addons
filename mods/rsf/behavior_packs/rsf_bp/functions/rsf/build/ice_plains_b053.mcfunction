# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2101/4224 | 主题内编号: b053/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·测绘师观景制图站 (ice_plains_outpost_cartographer_post)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 2格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 snow [] replace air
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 snow [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 quartz_block []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-4 ~5 ~-1 ~4 packed_ice []

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

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 packed_ice []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 packed_ice []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 blue_ice []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 spruce_log []
setblock ~-7 ~6 ~-6 campfire []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 spruce_log []
setblock ~-7 ~6 ~6 campfire []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 spruce_log []
setblock ~7 ~6 ~-6 campfire []
fill ~7 ~0 ~6 ~7 ~5 ~6 spruce_log []
setblock ~7 ~6 ~6 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 8x6x2) ---
fill ~-8 ~0 ~-6 ~-8 ~6 ~-6 packed_ice []
fill ~8 ~0 ~6 ~8 ~6 ~6 packed_ice []
setblock ~-8 ~7 ~-6 blue_ice []
setblock ~8 ~7 ~6 blue_ice []
setblock ~2 ~4 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-4 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 snowball 21
replaceitem block ~4 ~1 ~2 slot.container 1 ender_pearl 8
replaceitem block ~4 ~1 ~2 slot.container 2 phantom_membrane 9
replaceitem block ~4 ~1 ~2 slot.container 3 bone 12
replaceitem block ~4 ~1 ~2 slot.container 4 arrow 21
replaceitem block ~4 ~1 ~2 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 9 packed_ice 17
replaceitem block ~4 ~1 ~2 slot.container 10 blue_ice 10
replaceitem block ~4 ~1 ~2 slot.container 11 coal 19
replaceitem block ~4 ~1 ~2 slot.container 12 iron_ingot 10
replaceitem block ~4 ~1 ~2 slot.container 13 emerald 8
replaceitem block ~4 ~1 ~2 slot.container 14 flint_and_steel 1
loot insert ~4 ~1 ~2 loot "rsf/ice_plains"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 phantom_membrane 4
replaceitem block ~-4 ~1 ~3 slot.container 1 bone 15
replaceitem block ~-4 ~1 ~3 slot.container 2 arrow 24
replaceitem block ~-4 ~1 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~-4 ~1 ~3 slot.container 4 string 14
replaceitem block ~-4 ~1 ~3 slot.container 5 gunpowder 15
replaceitem block ~-4 ~1 ~3 slot.container 9 packed_ice 22
replaceitem block ~-4 ~1 ~3 slot.container 10 blue_ice 8
replaceitem block ~-4 ~1 ~3 slot.container 11 coal 17
replaceitem block ~-4 ~1 ~3 slot.container 12 iron_ingot 8
replaceitem block ~-4 ~1 ~3 slot.container 13 emerald 6
replaceitem block ~-4 ~1 ~3 slot.container 14 flint_and_steel 1
loot insert ~-4 ~1 ~3 loot "rsf/ice_plains"
loot insert ~-4 ~1 ~3 loot "chests/igloo_chest"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
