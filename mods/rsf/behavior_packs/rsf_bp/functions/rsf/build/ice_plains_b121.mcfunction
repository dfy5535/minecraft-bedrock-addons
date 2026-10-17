# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2169/4224 | 主题内编号: b121/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·卫城廊柱王座大殿与地宫 (ice_plains_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 snow [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 snow [] replace water
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 snow []
fill ~-6 ~-5 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-5 ~0 lantern []
setblock ~5 ~-5 ~0 lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 phantom_membrane 6
replaceitem block ~0 ~-3 ~4 slot.container 1 bone 17
replaceitem block ~0 ~-3 ~4 slot.container 2 arrow 26
replaceitem block ~0 ~-3 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~4 slot.container 4 string 8
replaceitem block ~0 ~-3 ~4 slot.container 5 gunpowder 9
replaceitem block ~0 ~-3 ~4 slot.container 9 lantern 9
replaceitem block ~0 ~-3 ~4 slot.container 10 golden_apple 8
replaceitem block ~0 ~-3 ~4 slot.container 11 cooked_cod 8
replaceitem block ~0 ~-3 ~4 slot.container 12 cooked_salmon 9
replaceitem block ~0 ~-3 ~4 slot.container 13 packed_ice 18
replaceitem block ~0 ~-3 ~4 slot.container 14 blue_ice 11
loot insert ~0 ~-3 ~4 loot "rsf/ice_plains"
loot insert ~0 ~-3 ~4 loot "chests/igloo_chest"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 phantom_membrane 4
replaceitem block ~0 ~-3 ~-4 slot.container 1 bone 15
replaceitem block ~0 ~-3 ~-4 slot.container 2 arrow 24
replaceitem block ~0 ~-3 ~-4 slot.container 3 rotten_flesh 15
replaceitem block ~0 ~-3 ~-4 slot.container 4 string 14
replaceitem block ~0 ~-3 ~-4 slot.container 5 gunpowder 15
replaceitem block ~0 ~-3 ~-4 slot.container 9 lantern 8
replaceitem block ~0 ~-3 ~-4 slot.container 10 golden_apple 7
replaceitem block ~0 ~-3 ~-4 slot.container 11 cooked_cod 14
replaceitem block ~0 ~-3 ~-4 slot.container 12 cooked_salmon 8
replaceitem block ~0 ~-3 ~-4 slot.container 13 packed_ice 17
replaceitem block ~0 ~-3 ~-4 slot.container 14 blue_ice 10
loot insert ~0 ~-3 ~-4 loot "rsf/ice_plains"
loot insert ~0 ~-3 ~-4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-7 ~1 ~-1 ~7 ~9 ~6 snow []
fill ~-6 ~1 ~0 ~6 ~8 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~9 ~-6 spruce_log []
fill ~-5 ~1 ~-6 ~-5 ~9 ~-6 spruce_log []
fill ~-3 ~1 ~-6 ~-3 ~9 ~-6 spruce_log []
fill ~-1 ~1 ~-6 ~-1 ~9 ~-6 spruce_log []
fill ~1 ~1 ~-6 ~1 ~9 ~-6 spruce_log []
fill ~3 ~1 ~-6 ~3 ~9 ~-6 spruce_log []
fill ~5 ~1 ~-6 ~5 ~9 ~-6 spruce_log []
fill ~7 ~1 ~-6 ~7 ~9 ~-6 spruce_log []
fill ~-7 ~9 ~-6 ~7 ~9 ~-1 packed_ice []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~10 ~-7 ~-8 ~10 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~8 ~10 ~-7 ~8 ~10 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-7 ~11 ~-6 ~-7 ~11 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~11 ~-6 ~7 ~11 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~11 ~-6 ~6 ~11 ~6 stone_brick_slab []
fill ~0 ~12 ~-7 ~0 ~12 ~7 packed_ice []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 snow []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 chiseled_stone_bricks []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 chiseled_stone_bricks []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 quartz_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 10x7x5) ---
fill ~-10 ~0 ~-7 ~-10 ~9 ~-7 packed_ice []
fill ~10 ~0 ~7 ~10 ~9 ~7 packed_ice []
setblock ~-10 ~10 ~-7 blue_ice []
setblock ~10 ~10 ~7 blue_ice []
setblock ~1 ~7 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~8 ~0 soul_lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 blue_ice []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 arrow 21
replaceitem block ~6 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~6 ~1 ~4 slot.container 2 string 11
replaceitem block ~6 ~1 ~4 slot.container 3 gunpowder 12
replaceitem block ~6 ~1 ~4 slot.container 4 snowball 21
replaceitem block ~6 ~1 ~4 slot.container 5 ender_pearl 8
replaceitem block ~6 ~1 ~4 slot.container 9 emerald 9
replaceitem block ~6 ~1 ~4 slot.container 10 flint_and_steel 1
replaceitem block ~6 ~1 ~4 slot.container 11 lantern 5
replaceitem block ~6 ~1 ~4 slot.container 12 golden_apple 4
replaceitem block ~6 ~1 ~4 slot.container 13 cooked_cod 11
replaceitem block ~6 ~1 ~4 slot.container 14 cooked_salmon 12
loot insert ~6 ~1 ~4 loot "rsf/ice_plains"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 string 14
replaceitem block ~-6 ~1 ~5 slot.container 1 gunpowder 15
replaceitem block ~-6 ~1 ~5 slot.container 2 snowball 16
replaceitem block ~-6 ~1 ~5 slot.container 3 ender_pearl 3
replaceitem block ~-6 ~1 ~5 slot.container 4 phantom_membrane 4
replaceitem block ~-6 ~1 ~5 slot.container 5 bone 15
replaceitem block ~-6 ~1 ~5 slot.container 9 emerald 7
replaceitem block ~-6 ~1 ~5 slot.container 10 flint_and_steel 1
replaceitem block ~-6 ~1 ~5 slot.container 11 lantern 10
replaceitem block ~-6 ~1 ~5 slot.container 12 golden_apple 2
replaceitem block ~-6 ~1 ~5 slot.container 13 cooked_cod 9
replaceitem block ~-6 ~1 ~5 slot.container 14 cooked_salmon 10
loot insert ~-6 ~1 ~5 loot "rsf/ice_plains"
loot insert ~-6 ~1 ~5 loot "chests/igloo_chest"
summon polar_bear ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
