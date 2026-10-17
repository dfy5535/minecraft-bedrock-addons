# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2078/4224 | 主题内编号: b030/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·双坡顶驻军卫戍塔 (ice_plains_tower_gabled_keep)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 packed_ice [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 packed_ice [] replace water
fill ~-6 ~1 ~-5 ~6 ~12 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 quartz_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 quartz_block []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 packed_ice []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 packed_ice []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-5 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-5 ~2 soul_lantern []
setblock ~3 ~-5 ~-2 soul_lantern []
setblock ~3 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-3 ~2 slot.container 0 bone 17
replaceitem block ~3 ~-3 ~2 slot.container 1 arrow 26
replaceitem block ~3 ~-3 ~2 slot.container 2 rotten_flesh 17
replaceitem block ~3 ~-3 ~2 slot.container 3 string 8
replaceitem block ~3 ~-3 ~2 slot.container 4 gunpowder 9
replaceitem block ~3 ~-3 ~2 slot.container 5 snowball 18
replaceitem block ~3 ~-3 ~2 slot.container 9 iron_ingot 7
replaceitem block ~3 ~-3 ~2 slot.container 10 emerald 5
replaceitem block ~3 ~-3 ~2 slot.container 11 flint_and_steel 1
replaceitem block ~3 ~-3 ~2 slot.container 12 lantern 8
replaceitem block ~3 ~-3 ~2 slot.container 13 golden_apple 7
replaceitem block ~3 ~-3 ~2 slot.container 14 cooked_cod 14
loot insert ~3 ~-3 ~2 loot "rsf/ice_plains"
loot insert ~3 ~-3 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-4 ~0 ~10 ~4 packed_ice []
fill ~-5 ~1 ~0 ~5 ~9 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~-1 ~9 ~3 air []
fill ~-1 ~1 ~1 ~4 ~8 ~3 air []
fill ~-2 ~1 ~-4 ~-2 ~2 ~-4 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~11 ~-5 ~-6 ~11 ~5 quartz_stairs ["weirdo_direction"=0]
fill ~6 ~11 ~-5 ~6 ~11 ~5 quartz_stairs ["weirdo_direction"=1]
fill ~-5 ~12 ~-4 ~-5 ~12 ~4 quartz_stairs ["weirdo_direction"=0]
fill ~5 ~12 ~-4 ~5 ~12 ~4 quartz_stairs ["weirdo_direction"=1]
fill ~-4 ~12 ~-4 ~4 ~12 ~4 quartz_slab []
fill ~0 ~13 ~-5 ~0 ~13 ~5 snow []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~12 ~2 stone_bricks []
fill ~6 ~1 ~-1 ~7 ~11 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~13 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~-8 ~0 ~-7 ~-8 ~8 ~-7 packed_ice []
fill ~8 ~0 ~7 ~8 ~8 ~7 packed_ice []
setblock ~-8 ~9 ~-7 blue_ice []
setblock ~8 ~9 ~7 blue_ice []
setblock ~-1 ~6 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 ender_pearl 8
replaceitem block ~-4 ~1 ~2 slot.container 1 phantom_membrane 9
replaceitem block ~-4 ~1 ~2 slot.container 2 bone 12
replaceitem block ~-4 ~1 ~2 slot.container 3 arrow 21
replaceitem block ~-4 ~1 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 5 string 11
replaceitem block ~-4 ~1 ~2 slot.container 9 blue_ice 14
replaceitem block ~-4 ~1 ~2 slot.container 10 coal 16
replaceitem block ~-4 ~1 ~2 slot.container 11 iron_ingot 7
replaceitem block ~-4 ~1 ~2 slot.container 12 emerald 5
replaceitem block ~-4 ~1 ~2 slot.container 13 flint_and_steel 1
replaceitem block ~-4 ~1 ~2 slot.container 14 lantern 8
loot insert ~-4 ~1 ~2 loot "rsf/ice_plains"
summon zombie ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon spider ~1 ~1 ~1
summon witch ~0 ~-3 ~0
