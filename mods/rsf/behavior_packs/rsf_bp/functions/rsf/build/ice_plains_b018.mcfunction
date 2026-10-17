# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2066/4224 | 主题内编号: b018/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·L型转角领主秘宝屋 (ice_plains_chamber_l_wing_manor)
# 建筑构造: 主体[l_compound] + 屋顶[open_colonnade] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 packed_ice [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 packed_ice [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 quartz_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 quartz_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_ice []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 snow []

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~7 ~5 packed_ice []
fill ~-6 ~1 ~0 ~6 ~6 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~-1 ~6 ~4 air []
fill ~-1 ~1 ~1 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~7 ~-4 ~-5 ~9 ~-4 spruce_log []
setblock ~-5 ~10 ~-4 lantern []
fill ~-5 ~7 ~4 ~-5 ~9 ~4 spruce_log []
setblock ~-5 ~10 ~4 lantern []
fill ~5 ~7 ~-4 ~5 ~9 ~-4 spruce_log []
setblock ~5 ~10 ~-4 lantern []
fill ~5 ~7 ~4 ~5 ~9 ~4 spruce_log []
setblock ~5 ~10 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 packed_ice []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~-9 ~0 ~-8 ~-9 ~6 ~-8 packed_ice []
fill ~9 ~0 ~8 ~9 ~6 ~8 packed_ice []
setblock ~-9 ~7 ~-8 blue_ice []
setblock ~9 ~7 ~8 blue_ice []
setblock ~0 ~4 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 1 string 11
replaceitem block ~-5 ~1 ~3 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 3 snowball 21
replaceitem block ~-5 ~1 ~3 slot.container 4 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 5 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 9 flint_and_steel 1
replaceitem block ~-5 ~1 ~3 slot.container 10 lantern 6
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_apple 5
replaceitem block ~-5 ~1 ~3 slot.container 12 cooked_cod 12
replaceitem block ~-5 ~1 ~3 slot.container 13 cooked_salmon 13
replaceitem block ~-5 ~1 ~3 slot.container 14 packed_ice 22
loot insert ~-5 ~1 ~3 loot "rsf/ice_plains"
summon zombie ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon spider ~1 ~1 ~1
summon witch ~0 ~2 ~0
