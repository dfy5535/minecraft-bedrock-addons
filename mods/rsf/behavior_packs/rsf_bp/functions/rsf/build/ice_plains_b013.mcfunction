# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2061/4224 | 主题内编号: b013/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·地底熔炉苦工地牢 (ice_plains_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 snow [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 snow [] replace water
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 snow []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 arrow 26
replaceitem block ~4 ~-3 ~4 slot.container 1 rotten_flesh 17
replaceitem block ~4 ~-3 ~4 slot.container 2 string 8
replaceitem block ~4 ~-3 ~4 slot.container 3 gunpowder 9
replaceitem block ~4 ~-3 ~4 slot.container 4 snowball 18
replaceitem block ~4 ~-3 ~4 slot.container 5 ender_pearl 5
replaceitem block ~4 ~-3 ~4 slot.container 9 lantern 6
replaceitem block ~4 ~-3 ~4 slot.container 10 golden_apple 5
replaceitem block ~4 ~-3 ~4 slot.container 11 cooked_cod 12
replaceitem block ~4 ~-3 ~4 slot.container 12 cooked_salmon 13
replaceitem block ~4 ~-3 ~4 slot.container 13 packed_ice 22
replaceitem block ~4 ~-3 ~4 slot.container 14 blue_ice 8
loot insert ~4 ~-3 ~4 loot "rsf/ice_plains"
loot insert ~4 ~-3 ~4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-6 ~1 ~-6 ~6 ~7 ~6 snow []
fill ~-5 ~1 ~-5 ~5 ~6 ~5 air []
fill ~-6 ~1 ~-6 ~-6 ~7 ~-6 spruce_log []
fill ~-6 ~1 ~6 ~-6 ~7 ~6 spruce_log []
fill ~6 ~1 ~-6 ~6 ~7 ~-6 spruce_log []
fill ~6 ~1 ~6 ~6 ~7 ~6 spruce_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-6 ~2 ~0 spruce_fence []
setblock ~6 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 packed_ice []
fill ~-6 ~8 ~-6 ~6 ~8 ~6 spruce_fence []
fill ~-5 ~8 ~-5 ~5 ~8 ~5 air []
setblock ~-6 ~8 ~-6 spruce_log []
setblock ~-6 ~9 ~-6 lantern []
setblock ~-6 ~8 ~6 spruce_log []
setblock ~-6 ~9 ~6 lantern []
setblock ~6 ~8 ~-6 spruce_log []
setblock ~6 ~9 ~-6 lantern []
setblock ~6 ~8 ~6 spruce_log []
setblock ~6 ~9 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~9 ~2 packed_ice []
fill ~7 ~1 ~-1 ~8 ~8 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~10 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x7x2) ---
fill ~-9 ~0 ~-7 ~-9 ~6 ~-7 packed_ice []
fill ~9 ~0 ~7 ~9 ~6 ~7 packed_ice []
setblock ~-9 ~7 ~-7 blue_ice []
setblock ~9 ~7 ~7 blue_ice []
setblock ~1 ~4 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 snowball 21
replaceitem block ~5 ~1 ~4 slot.container 1 ender_pearl 8
replaceitem block ~5 ~1 ~4 slot.container 2 phantom_membrane 9
replaceitem block ~5 ~1 ~4 slot.container 3 bone 12
replaceitem block ~5 ~1 ~4 slot.container 4 arrow 21
replaceitem block ~5 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 9 packed_ice 19
replaceitem block ~5 ~1 ~4 slot.container 10 blue_ice 12
replaceitem block ~5 ~1 ~4 slot.container 11 coal 21
replaceitem block ~5 ~1 ~4 slot.container 12 iron_ingot 12
replaceitem block ~5 ~1 ~4 slot.container 13 emerald 3
replaceitem block ~5 ~1 ~4 slot.container 14 flint_and_steel 1
loot insert ~5 ~1 ~4 loot "rsf/ice_plains"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 phantom_membrane 4
replaceitem block ~-5 ~1 ~5 slot.container 1 bone 15
replaceitem block ~-5 ~1 ~5 slot.container 2 arrow 24
replaceitem block ~-5 ~1 ~5 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~5 slot.container 4 string 14
replaceitem block ~-5 ~1 ~5 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~5 slot.container 9 packed_ice 17
replaceitem block ~-5 ~1 ~5 slot.container 10 blue_ice 10
replaceitem block ~-5 ~1 ~5 slot.container 11 coal 19
replaceitem block ~-5 ~1 ~5 slot.container 12 iron_ingot 10
replaceitem block ~-5 ~1 ~5 slot.container 13 emerald 8
replaceitem block ~-5 ~1 ~5 slot.container 14 flint_and_steel 1
loot insert ~-5 ~1 ~5 loot "rsf/ice_plains"
loot insert ~-5 ~1 ~5 loot "chests/igloo_chest"
summon polar_bear ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
