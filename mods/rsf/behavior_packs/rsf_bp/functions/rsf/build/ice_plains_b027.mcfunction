# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2075/4224 | 主题内编号: b027/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·双子连廊警戒塔楼 (ice_plains_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x9 | 地上高度 10格 | 地下深度 2格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 stone_bricks [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 stone_bricks [] replace water
fill ~-7 ~1 ~-4 ~7 ~12 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 spruce_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 packed_ice []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 snow []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 snow []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~11 ~3 stone_bricks []
fill ~2 ~1 ~-3 ~6 ~11 ~3 stone_bricks []
fill ~-5 ~1 ~-2 ~-3 ~10 ~2 air []
fill ~3 ~1 ~-2 ~5 ~10 ~2 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 snow []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 snow []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 packed_ice []
fill ~0 ~17 ~0 ~0 ~18 ~0 sea_lantern []
setblock ~0 ~19 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 snow []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 campfire []
setblock ~2 ~4 ~-6 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x6x6) ---
fill ~-9 ~0 ~-6 ~-9 ~10 ~-6 packed_ice []
fill ~9 ~0 ~6 ~9 ~10 ~6 packed_ice []
setblock ~-9 ~11 ~-6 blue_ice []
setblock ~9 ~11 ~6 blue_ice []
setblock ~-3 ~8 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~9 ~0 lantern []
setblock ~-5 ~1 ~2 smithing_table []
setblock ~-4 ~1 ~2 anvil []
setblock ~4 ~1 ~2 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 string 11
replaceitem block ~5 ~1 ~1 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~1 slot.container 2 snowball 21
replaceitem block ~5 ~1 ~1 slot.container 3 ender_pearl 8
replaceitem block ~5 ~1 ~1 slot.container 4 phantom_membrane 9
replaceitem block ~5 ~1 ~1 slot.container 5 bone 12
replaceitem block ~5 ~1 ~1 slot.container 9 coal 19
replaceitem block ~5 ~1 ~1 slot.container 10 iron_ingot 10
replaceitem block ~5 ~1 ~1 slot.container 11 emerald 8
replaceitem block ~5 ~1 ~1 slot.container 12 flint_and_steel 1
replaceitem block ~5 ~1 ~1 slot.container 13 lantern 4
replaceitem block ~5 ~1 ~1 slot.container 14 golden_apple 3
loot insert ~5 ~1 ~1 loot "rsf/ice_plains"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 snowball 16
replaceitem block ~-5 ~1 ~2 slot.container 1 ender_pearl 3
replaceitem block ~-5 ~1 ~2 slot.container 2 phantom_membrane 4
replaceitem block ~-5 ~1 ~2 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~2 slot.container 4 arrow 24
replaceitem block ~-5 ~1 ~2 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~2 slot.container 9 coal 17
replaceitem block ~-5 ~1 ~2 slot.container 10 iron_ingot 8
replaceitem block ~-5 ~1 ~2 slot.container 11 emerald 6
replaceitem block ~-5 ~1 ~2 slot.container 12 flint_and_steel 1
replaceitem block ~-5 ~1 ~2 slot.container 13 lantern 9
replaceitem block ~-5 ~1 ~2 slot.container 14 golden_apple 8
loot insert ~-5 ~1 ~2 loot "rsf/ice_plains"
loot insert ~-5 ~1 ~2 loot "chests/igloo_chest"
summon witch ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~2 ~0
