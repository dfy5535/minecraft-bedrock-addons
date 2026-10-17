# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2163/4224 | 主题内编号: b115/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·阶梯立体生态种植台 (ice_plains_conservatory_terrace_farm)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_ice []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 snow []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 snow []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 packed_ice []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-2 ~3 slot.container 0 snowball 18
replaceitem block ~-4 ~-2 ~3 slot.container 1 ender_pearl 5
replaceitem block ~-4 ~-2 ~3 slot.container 2 phantom_membrane 6
replaceitem block ~-4 ~-2 ~3 slot.container 3 bone 17
replaceitem block ~-4 ~-2 ~3 slot.container 4 arrow 26
replaceitem block ~-4 ~-2 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~-4 ~-2 ~3 slot.container 9 coal 17
replaceitem block ~-4 ~-2 ~3 slot.container 10 iron_ingot 8
replaceitem block ~-4 ~-2 ~3 slot.container 11 emerald 6
replaceitem block ~-4 ~-2 ~3 slot.container 12 flint_and_steel 1
replaceitem block ~-4 ~-2 ~3 slot.container 13 lantern 9
replaceitem block ~-4 ~-2 ~3 slot.container 14 golden_apple 8
loot insert ~-4 ~-2 ~3 loot "rsf/ice_plains"
loot insert ~-4 ~-2 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 stone_bricks []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 snow []
fill ~-4 ~5 ~-3 ~4 ~7 ~3 blue_ice []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 spruce_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 spruce_log []
setblock ~-6 ~10 ~-5 campfire []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 spruce_log []
setblock ~-6 ~10 ~5 campfire []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 spruce_log []
setblock ~6 ~10 ~-5 campfire []
fill ~6 ~7 ~5 ~6 ~9 ~5 spruce_log []
setblock ~6 ~10 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 packed_ice []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 quartz_block []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 quartz_block []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 stone_brick_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x6x4) ---
fill ~-9 ~0 ~-6 ~-9 ~8 ~-6 packed_ice []
fill ~9 ~0 ~6 ~9 ~8 ~6 packed_ice []
setblock ~-9 ~9 ~-6 blue_ice []
setblock ~9 ~9 ~6 blue_ice []
setblock ~1 ~6 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 string 11
replaceitem block ~5 ~1 ~3 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 2 snowball 21
replaceitem block ~5 ~1 ~3 slot.container 3 ender_pearl 8
replaceitem block ~5 ~1 ~3 slot.container 4 phantom_membrane 9
replaceitem block ~5 ~1 ~3 slot.container 5 bone 12
replaceitem block ~5 ~1 ~3 slot.container 9 lantern 4
replaceitem block ~5 ~1 ~3 slot.container 10 golden_apple 3
replaceitem block ~5 ~1 ~3 slot.container 11 cooked_cod 10
replaceitem block ~5 ~1 ~3 slot.container 12 cooked_salmon 11
replaceitem block ~5 ~1 ~3 slot.container 13 packed_ice 20
replaceitem block ~5 ~1 ~3 slot.container 14 blue_ice 13
loot insert ~5 ~1 ~3 loot "rsf/ice_plains"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 snowball 16
replaceitem block ~-5 ~1 ~4 slot.container 1 ender_pearl 3
replaceitem block ~-5 ~1 ~4 slot.container 2 phantom_membrane 4
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 4 arrow 24
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 9 lantern 9
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 8
replaceitem block ~-5 ~1 ~4 slot.container 11 cooked_cod 8
replaceitem block ~-5 ~1 ~4 slot.container 12 cooked_salmon 9
replaceitem block ~-5 ~1 ~4 slot.container 13 packed_ice 18
replaceitem block ~-5 ~1 ~4 slot.container 14 blue_ice 11
loot insert ~-5 ~1 ~4 loot "rsf/ice_plains"
loot insert ~-5 ~1 ~4 loot "chests/igloo_chest"
summon polar_bear ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
