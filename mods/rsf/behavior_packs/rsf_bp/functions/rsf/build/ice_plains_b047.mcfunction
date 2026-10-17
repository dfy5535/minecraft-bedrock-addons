# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2095/4224 | 主题内编号: b047/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·深渊跨桥决斗长台 (ice_plains_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 stone_bricks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 stone_bricks [] replace water
fill ~-8 ~1 ~-5 ~8 ~9 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 spruce_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 packed_ice []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 snow []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 snow []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 packed_ice []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-5 ~-3 ~2 slot.container 0 arrow 26
replaceitem block ~-5 ~-3 ~2 slot.container 1 rotten_flesh 17
replaceitem block ~-5 ~-3 ~2 slot.container 2 string 8
replaceitem block ~-5 ~-3 ~2 slot.container 3 gunpowder 9
replaceitem block ~-5 ~-3 ~2 slot.container 4 snowball 18
replaceitem block ~-5 ~-3 ~2 slot.container 5 ender_pearl 5
replaceitem block ~-5 ~-3 ~2 slot.container 9 cooked_cod 11
replaceitem block ~-5 ~-3 ~2 slot.container 10 cooked_salmon 12
replaceitem block ~-5 ~-3 ~2 slot.container 11 packed_ice 21
replaceitem block ~-5 ~-3 ~2 slot.container 12 blue_ice 14
replaceitem block ~-5 ~-3 ~2 slot.container 13 coal 16
replaceitem block ~-5 ~-3 ~2 slot.container 14 iron_ingot 7
loot insert ~-5 ~-3 ~2 loot "rsf/ice_plains"
loot insert ~-5 ~-3 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-7 ~1 ~-4 ~7 ~7 ~4 stone_bricks []
fill ~-6 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-4 ~-7 ~9 ~-4 spruce_log []
setblock ~-7 ~10 ~-4 campfire []
fill ~-7 ~7 ~4 ~-7 ~9 ~4 spruce_log []
setblock ~-7 ~10 ~4 campfire []
fill ~7 ~7 ~-4 ~7 ~9 ~-4 spruce_log []
setblock ~7 ~10 ~-4 campfire []
fill ~7 ~7 ~4 ~7 ~9 ~4 spruce_log []
setblock ~7 ~10 ~4 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 snow []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 chiseled_stone_bricks []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 chiseled_stone_bricks []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 quartz_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 10x6x6) ---
fill ~-10 ~0 ~-6 ~-10 ~10 ~-6 packed_ice []
fill ~10 ~0 ~6 ~10 ~10 ~6 packed_ice []
setblock ~-10 ~11 ~-6 blue_ice []
setblock ~10 ~11 ~6 blue_ice []
setblock ~-3 ~8 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-6 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~6 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 phantom_membrane 9
replaceitem block ~6 ~1 ~2 slot.container 1 bone 12
replaceitem block ~6 ~1 ~2 slot.container 2 arrow 21
replaceitem block ~6 ~1 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~6 ~1 ~2 slot.container 4 string 11
replaceitem block ~6 ~1 ~2 slot.container 5 gunpowder 12
replaceitem block ~6 ~1 ~2 slot.container 9 coal 18
replaceitem block ~6 ~1 ~2 slot.container 10 iron_ingot 9
replaceitem block ~6 ~1 ~2 slot.container 11 emerald 7
replaceitem block ~6 ~1 ~2 slot.container 12 flint_and_steel 1
replaceitem block ~6 ~1 ~2 slot.container 13 lantern 10
replaceitem block ~6 ~1 ~2 slot.container 14 golden_apple 2
loot insert ~6 ~1 ~2 loot "rsf/ice_plains"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 arrow 24
replaceitem block ~-6 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-6 ~1 ~3 slot.container 2 string 14
replaceitem block ~-6 ~1 ~3 slot.container 3 gunpowder 15
replaceitem block ~-6 ~1 ~3 slot.container 4 snowball 16
replaceitem block ~-6 ~1 ~3 slot.container 5 ender_pearl 3
replaceitem block ~-6 ~1 ~3 slot.container 9 coal 16
replaceitem block ~-6 ~1 ~3 slot.container 10 iron_ingot 7
replaceitem block ~-6 ~1 ~3 slot.container 11 emerald 5
replaceitem block ~-6 ~1 ~3 slot.container 12 flint_and_steel 1
replaceitem block ~-6 ~1 ~3 slot.container 13 lantern 8
replaceitem block ~-6 ~1 ~3 slot.container 14 golden_apple 7
loot insert ~-6 ~1 ~3 loot "rsf/ice_plains"
loot insert ~-6 ~1 ~3 loot "chests/igloo_chest"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
