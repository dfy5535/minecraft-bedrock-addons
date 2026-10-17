# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2084/4224 | 主题内编号: b036/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·下沉碑林地宫方尖碑 (ice_plains_obelisk_sunken_stele)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 5格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 blue_ice [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 blue_ice [] replace water
fill ~-6 ~1 ~-5 ~6 ~12 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 snow []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 blue_ice []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~2 soul_lantern []
setblock ~3 ~-6 ~-2 soul_lantern []
setblock ~3 ~-4 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~2 slot.container 0 ender_pearl 5
replaceitem block ~3 ~-4 ~2 slot.container 1 phantom_membrane 6
replaceitem block ~3 ~-4 ~2 slot.container 2 bone 17
replaceitem block ~3 ~-4 ~2 slot.container 3 arrow 26
replaceitem block ~3 ~-4 ~2 slot.container 4 rotten_flesh 17
replaceitem block ~3 ~-4 ~2 slot.container 5 string 8
replaceitem block ~3 ~-4 ~2 slot.container 9 blue_ice 8
replaceitem block ~3 ~-4 ~2 slot.container 10 coal 17
replaceitem block ~3 ~-4 ~2 slot.container 11 iron_ingot 8
replaceitem block ~3 ~-4 ~2 slot.container 12 emerald 6
replaceitem block ~3 ~-4 ~2 slot.container 13 flint_and_steel 1
replaceitem block ~3 ~-4 ~2 slot.container 14 lantern 9
loot insert ~3 ~-4 ~2 loot "rsf/ice_plains"
loot insert ~3 ~-4 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 blue_ice []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 packed_ice []
fill ~0 ~1 ~-4 ~0 ~2 ~4 packed_ice []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 packed_ice []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 blue_ice []
fill ~0 ~16 ~0 ~0 ~17 ~0 diamond_block []
setblock ~0 ~18 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 cobblestone_wall []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~-8 ~0 ~-7 ~-8 ~9 ~-7 packed_ice []
fill ~8 ~0 ~7 ~8 ~9 ~7 packed_ice []
setblock ~-8 ~10 ~-7 blue_ice []
setblock ~8 ~10 ~7 blue_ice []
setblock ~0 ~7 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 1 snowball 21
replaceitem block ~-4 ~1 ~2 slot.container 2 ender_pearl 8
replaceitem block ~-4 ~1 ~2 slot.container 3 phantom_membrane 9
replaceitem block ~-4 ~1 ~2 slot.container 4 bone 12
replaceitem block ~-4 ~1 ~2 slot.container 5 arrow 21
replaceitem block ~-4 ~1 ~2 slot.container 9 cooked_salmon 13
replaceitem block ~-4 ~1 ~2 slot.container 10 packed_ice 22
replaceitem block ~-4 ~1 ~2 slot.container 11 blue_ice 8
replaceitem block ~-4 ~1 ~2 slot.container 12 coal 17
replaceitem block ~-4 ~1 ~2 slot.container 13 iron_ingot 8
replaceitem block ~-4 ~1 ~2 slot.container 14 emerald 6
loot insert ~-4 ~1 ~2 loot "rsf/ice_plains"
summon zombie ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon spider ~1 ~1 ~1
summon witch ~0 ~-4 ~0
