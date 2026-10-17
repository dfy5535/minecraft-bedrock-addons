# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2069/4224 | 主题内编号: b021/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·U型合院天井秘宝房 (ice_plains_chamber_courtyard_villa)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[catacomb_crypt] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 snow [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 snow [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 quartz_block []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 packed_ice []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 soul_lantern []
setblock ~5 ~-7 ~0 soul_lantern []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 bone 17
replaceitem block ~0 ~-5 ~4 slot.container 1 arrow 26
replaceitem block ~0 ~-5 ~4 slot.container 2 rotten_flesh 17
replaceitem block ~0 ~-5 ~4 slot.container 3 string 8
replaceitem block ~0 ~-5 ~4 slot.container 4 gunpowder 9
replaceitem block ~0 ~-5 ~4 slot.container 5 snowball 18
replaceitem block ~0 ~-5 ~4 slot.container 9 iron_ingot 12
replaceitem block ~0 ~-5 ~4 slot.container 10 emerald 3
replaceitem block ~0 ~-5 ~4 slot.container 11 flint_and_steel 1
replaceitem block ~0 ~-5 ~4 slot.container 12 lantern 6
replaceitem block ~0 ~-5 ~4 slot.container 13 golden_apple 5
replaceitem block ~0 ~-5 ~4 slot.container 14 cooked_cod 12
loot insert ~0 ~-5 ~4 loot "rsf/ice_plains"
loot insert ~0 ~-5 ~4 loot "chests/igloo_chest"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 bone 15
replaceitem block ~0 ~-5 ~-4 slot.container 1 arrow 24
replaceitem block ~0 ~-5 ~-4 slot.container 2 rotten_flesh 15
replaceitem block ~0 ~-5 ~-4 slot.container 3 string 14
replaceitem block ~0 ~-5 ~-4 slot.container 4 gunpowder 15
replaceitem block ~0 ~-5 ~-4 slot.container 5 snowball 16
replaceitem block ~0 ~-5 ~-4 slot.container 9 iron_ingot 11
replaceitem block ~0 ~-5 ~-4 slot.container 10 emerald 9
replaceitem block ~0 ~-5 ~-4 slot.container 11 flint_and_steel 1
replaceitem block ~0 ~-5 ~-4 slot.container 12 lantern 5
replaceitem block ~0 ~-5 ~-4 slot.container 13 golden_apple 4
replaceitem block ~0 ~-5 ~-4 slot.container 14 cooked_cod 11
loot insert ~0 ~-5 ~-4 loot "rsf/ice_plains"
loot insert ~0 ~-5 ~-4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 snow []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 quartz_block []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 stone_brick_slab []
fill ~-5 ~8 ~-4 ~5 ~9 ~4 packed_ice []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 quartz_slab []
setblock ~0 ~11 ~0 blue_ice []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 packed_ice []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x8x5) ---
fill ~-9 ~0 ~-8 ~-9 ~9 ~-8 packed_ice []
fill ~9 ~0 ~8 ~9 ~9 ~8 packed_ice []
setblock ~-9 ~10 ~-8 blue_ice []
setblock ~9 ~10 ~8 blue_ice []
setblock ~-3 ~7 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 snowball 21
replaceitem block ~5 ~1 ~3 slot.container 1 ender_pearl 8
replaceitem block ~5 ~1 ~3 slot.container 2 phantom_membrane 9
replaceitem block ~5 ~1 ~3 slot.container 3 bone 12
replaceitem block ~5 ~1 ~3 slot.container 4 arrow 21
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 9 emerald 7
replaceitem block ~5 ~1 ~3 slot.container 10 flint_and_steel 1
replaceitem block ~5 ~1 ~3 slot.container 11 lantern 10
replaceitem block ~5 ~1 ~3 slot.container 12 golden_apple 2
replaceitem block ~5 ~1 ~3 slot.container 13 cooked_cod 9
replaceitem block ~5 ~1 ~3 slot.container 14 cooked_salmon 10
loot insert ~5 ~1 ~3 loot "rsf/ice_plains"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 phantom_membrane 4
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 2 arrow 24
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 4 string 14
replaceitem block ~-5 ~1 ~4 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 9 emerald 5
replaceitem block ~-5 ~1 ~4 slot.container 10 flint_and_steel 1
replaceitem block ~-5 ~1 ~4 slot.container 11 lantern 8
replaceitem block ~-5 ~1 ~4 slot.container 12 golden_apple 7
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_cod 14
replaceitem block ~-5 ~1 ~4 slot.container 14 cooked_salmon 8
loot insert ~-5 ~1 ~4 loot "rsf/ice_plains"
loot insert ~-5 ~1 ~4 loot "chests/igloo_chest"
summon witch ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~2 ~0
