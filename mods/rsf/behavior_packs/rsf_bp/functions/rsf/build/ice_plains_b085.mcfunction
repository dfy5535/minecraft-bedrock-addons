# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2133/4224 | 主题内编号: b085/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·双子烟囱砖石窑厂 (ice_plains_mine_twin_kiln)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x11 | 地上高度 9格 | 地下深度 3格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 snow [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 snow [] replace water
fill ~-7 ~1 ~-5 ~7 ~11 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 stone_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 stone_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 quartz_block []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-3 ~-3 ~5 ~-1 ~3 snow []
fill ~-4 ~-4 ~-2 ~4 ~-1 ~2 air []
setblock ~-4 ~-4 ~0 blast_furnace []
setblock ~4 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~2 anvil []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~4 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~2 slot.container 0 arrow 26
replaceitem block ~4 ~-2 ~2 slot.container 1 rotten_flesh 17
replaceitem block ~4 ~-2 ~2 slot.container 2 string 8
replaceitem block ~4 ~-2 ~2 slot.container 3 gunpowder 9
replaceitem block ~4 ~-2 ~2 slot.container 4 snowball 18
replaceitem block ~4 ~-2 ~2 slot.container 5 ender_pearl 5
replaceitem block ~4 ~-2 ~2 slot.container 9 coal 20
replaceitem block ~4 ~-2 ~2 slot.container 10 iron_ingot 11
replaceitem block ~4 ~-2 ~2 slot.container 11 emerald 9
replaceitem block ~4 ~-2 ~2 slot.container 12 flint_and_steel 1
replaceitem block ~4 ~-2 ~2 slot.container 13 lantern 5
replaceitem block ~4 ~-2 ~2 slot.container 14 golden_apple 4
loot insert ~4 ~-2 ~2 loot "rsf/ice_plains"
loot insert ~4 ~-2 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~10 ~4 snow []
fill ~2 ~1 ~-4 ~6 ~10 ~4 snow []
fill ~-5 ~1 ~-3 ~-3 ~9 ~3 air []
fill ~3 ~1 ~-3 ~5 ~9 ~3 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 packed_ice []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 packed_ice []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 snow []
fill ~0 ~15 ~0 ~0 ~16 ~0 blue_ice []
setblock ~0 ~17 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 packed_ice []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 spruce_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 spruce_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 stone_brick_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x5x4) ---
fill ~-9 ~0 ~-5 ~-9 ~8 ~-5 packed_ice []
fill ~9 ~0 ~5 ~9 ~8 ~5 packed_ice []
setblock ~-9 ~9 ~-5 blue_ice []
setblock ~9 ~9 ~5 blue_ice []
setblock ~1 ~6 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 snowball 21
replaceitem block ~5 ~1 ~2 slot.container 1 ender_pearl 8
replaceitem block ~5 ~1 ~2 slot.container 2 phantom_membrane 9
replaceitem block ~5 ~1 ~2 slot.container 3 bone 12
replaceitem block ~5 ~1 ~2 slot.container 4 arrow 21
replaceitem block ~5 ~1 ~2 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~2 slot.container 9 lantern 9
replaceitem block ~5 ~1 ~2 slot.container 10 golden_apple 8
replaceitem block ~5 ~1 ~2 slot.container 11 cooked_cod 8
replaceitem block ~5 ~1 ~2 slot.container 12 cooked_salmon 9
replaceitem block ~5 ~1 ~2 slot.container 13 packed_ice 18
replaceitem block ~5 ~1 ~2 slot.container 14 blue_ice 11
loot insert ~5 ~1 ~2 loot "rsf/ice_plains"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 phantom_membrane 4
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 15
replaceitem block ~-5 ~1 ~3 slot.container 2 arrow 24
replaceitem block ~-5 ~1 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 4 string 14
replaceitem block ~-5 ~1 ~3 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~3 slot.container 9 lantern 7
replaceitem block ~-5 ~1 ~3 slot.container 10 golden_apple 6
replaceitem block ~-5 ~1 ~3 slot.container 11 cooked_cod 13
replaceitem block ~-5 ~1 ~3 slot.container 12 cooked_salmon 14
replaceitem block ~-5 ~1 ~3 slot.container 13 packed_ice 16
replaceitem block ~-5 ~1 ~3 slot.container 14 blue_ice 9
loot insert ~-5 ~1 ~3 loot "rsf/ice_plains"
loot insert ~-5 ~1 ~3 loot "chests/igloo_chest"
summon polar_bear ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
