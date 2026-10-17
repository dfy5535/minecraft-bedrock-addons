# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2174/4224 | 主题内编号: b126/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·双子主塔天桥宫殿与暗牢 (ice_plains_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 17x13 | 地上高度 10格 | 地下深度 5格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 packed_ice [] replace air
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 packed_ice [] replace water
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air []
fill ~-8 ~0 ~-6 ~8 ~0 ~6 quartz_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 quartz_block []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 packed_ice []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 packed_ice []
fill ~-6 ~-6 ~-4 ~6 ~-1 ~4 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~3 soul_lantern []
setblock ~5 ~-6 ~-3 soul_lantern []
setblock ~5 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~3 slot.container 0 bone 17
replaceitem block ~5 ~-4 ~3 slot.container 1 arrow 26
replaceitem block ~5 ~-4 ~3 slot.container 2 rotten_flesh 17
replaceitem block ~5 ~-4 ~3 slot.container 3 string 8
replaceitem block ~5 ~-4 ~3 slot.container 4 gunpowder 9
replaceitem block ~5 ~-4 ~3 slot.container 5 snowball 18
replaceitem block ~5 ~-4 ~3 slot.container 9 blue_ice 14
replaceitem block ~5 ~-4 ~3 slot.container 10 coal 16
replaceitem block ~5 ~-4 ~3 slot.container 11 iron_ingot 7
replaceitem block ~5 ~-4 ~3 slot.container 12 emerald 5
replaceitem block ~5 ~-4 ~3 slot.container 13 flint_and_steel 1
replaceitem block ~5 ~-4 ~3 slot.container 14 lantern 8
loot insert ~5 ~-4 ~3 loot "rsf/ice_plains"
loot insert ~5 ~-4 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~11 ~5 packed_ice []
fill ~2 ~1 ~-5 ~7 ~11 ~5 packed_ice []
fill ~-6 ~1 ~-4 ~-3 ~10 ~4 air []
fill ~3 ~1 ~-4 ~6 ~10 ~4 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 snow []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 snow []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 packed_ice []
fill ~0 ~16 ~0 ~0 ~17 ~0 sea_lantern []
setblock ~0 ~18 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 snow []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 10x8x5) ---
fill ~-10 ~0 ~-8 ~-10 ~9 ~-8 packed_ice []
fill ~10 ~0 ~8 ~10 ~9 ~8 packed_ice []
setblock ~-10 ~10 ~-8 blue_ice []
setblock ~10 ~10 ~8 blue_ice []
setblock ~-1 ~7 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 ender_pearl 8
replaceitem block ~-6 ~1 ~3 slot.container 1 phantom_membrane 9
replaceitem block ~-6 ~1 ~3 slot.container 2 bone 12
replaceitem block ~-6 ~1 ~3 slot.container 3 arrow 21
replaceitem block ~-6 ~1 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~-6 ~1 ~3 slot.container 5 string 11
replaceitem block ~-6 ~1 ~3 slot.container 9 cooked_salmon 12
replaceitem block ~-6 ~1 ~3 slot.container 10 packed_ice 21
replaceitem block ~-6 ~1 ~3 slot.container 11 blue_ice 14
replaceitem block ~-6 ~1 ~3 slot.container 12 coal 16
replaceitem block ~-6 ~1 ~3 slot.container 13 iron_ingot 7
replaceitem block ~-6 ~1 ~3 slot.container 14 emerald 5
loot insert ~-6 ~1 ~3 loot "rsf/ice_plains"
summon zombie ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon spider ~1 ~1 ~1
summon witch ~0 ~-4 ~0
