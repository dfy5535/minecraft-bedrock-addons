# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2119/4224 | 主题内编号: b071/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·残破双子哨所遗迹 (ice_plains_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x11 | 地上高度 8格 | 地下深度 2格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 stone_bricks [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 stone_bricks [] replace water
fill ~-7 ~1 ~-5 ~7 ~10 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 spruce_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 packed_ice []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 snow []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-4 ~6 ~-1 ~4 snow []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~9 ~4 stone_bricks []
fill ~2 ~1 ~-4 ~6 ~9 ~4 stone_bricks []
fill ~-5 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~5 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 snow []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~8 ~-4 ~6 ~8 ~4 spruce_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-6 ~7 ~-1 ~-6 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 snow []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x6x5) ---
fill ~-9 ~0 ~-6 ~-9 ~9 ~-6 packed_ice []
fill ~9 ~0 ~6 ~9 ~9 ~6 packed_ice []
setblock ~-9 ~10 ~-6 blue_ice []
setblock ~9 ~10 ~6 blue_ice []
setblock ~-1 ~7 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 phantom_membrane 9
replaceitem block ~5 ~1 ~2 slot.container 1 bone 12
replaceitem block ~5 ~1 ~2 slot.container 2 arrow 21
replaceitem block ~5 ~1 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~2 slot.container 4 string 11
replaceitem block ~5 ~1 ~2 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~2 slot.container 9 emerald 8
replaceitem block ~5 ~1 ~2 slot.container 10 flint_and_steel 1
replaceitem block ~5 ~1 ~2 slot.container 11 lantern 4
replaceitem block ~5 ~1 ~2 slot.container 12 golden_apple 3
replaceitem block ~5 ~1 ~2 slot.container 13 cooked_cod 10
replaceitem block ~5 ~1 ~2 slot.container 14 cooked_salmon 11
loot insert ~5 ~1 ~2 loot "rsf/ice_plains"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 arrow 24
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 2 string 14
replaceitem block ~-5 ~1 ~3 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~3 slot.container 4 snowball 16
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 3
replaceitem block ~-5 ~1 ~3 slot.container 9 emerald 6
replaceitem block ~-5 ~1 ~3 slot.container 10 flint_and_steel 1
replaceitem block ~-5 ~1 ~3 slot.container 11 lantern 9
replaceitem block ~-5 ~1 ~3 slot.container 12 golden_apple 8
replaceitem block ~-5 ~1 ~3 slot.container 13 cooked_cod 8
replaceitem block ~-5 ~1 ~3 slot.container 14 cooked_salmon 9
loot insert ~-5 ~1 ~3 loot "rsf/ice_plains"
loot insert ~-5 ~1 ~3 loot "chests/igloo_chest"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
