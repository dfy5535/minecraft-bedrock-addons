# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2082/4224 | 主题内编号: b034/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·双子对称铭文方尖碑 (ice_plains_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x9 | 地上高度 11格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 packed_ice [] replace air
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 packed_ice [] replace water
fill ~-7 ~1 ~-4 ~7 ~13 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 quartz_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 quartz_block []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 packed_ice []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-2 ~5 ~-1 ~2 stone_bricks []
fill ~-4 ~-5 ~-1 ~4 ~-1 ~1 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~4 ~-3 ~1 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~1 slot.container 0 ender_pearl 5
replaceitem block ~4 ~-3 ~1 slot.container 1 phantom_membrane 6
replaceitem block ~4 ~-3 ~1 slot.container 2 bone 17
replaceitem block ~4 ~-3 ~1 slot.container 3 arrow 26
replaceitem block ~4 ~-3 ~1 slot.container 4 rotten_flesh 17
replaceitem block ~4 ~-3 ~1 slot.container 5 string 8
replaceitem block ~4 ~-3 ~1 slot.container 9 golden_apple 8
replaceitem block ~4 ~-3 ~1 slot.container 10 cooked_cod 8
replaceitem block ~4 ~-3 ~1 slot.container 11 cooked_salmon 9
replaceitem block ~4 ~-3 ~1 slot.container 12 packed_ice 18
replaceitem block ~4 ~-3 ~1 slot.container 13 blue_ice 11
replaceitem block ~4 ~-3 ~1 slot.container 14 coal 20
loot insert ~4 ~-3 ~1 loot "rsf/ice_plains"
loot insert ~4 ~-3 ~1 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~12 ~3 packed_ice []
fill ~2 ~1 ~-3 ~6 ~12 ~3 packed_ice []
fill ~-5 ~1 ~-2 ~-3 ~11 ~2 air []
fill ~3 ~1 ~-2 ~5 ~11 ~2 air []
fill ~-2 ~9 ~-1 ~2 ~11 ~1 snow []
fill ~-3 ~10 ~0 ~3 ~10 ~0 air []
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
setblock ~-2 ~4 ~-6 soul_lantern []
setblock ~2 ~4 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x4x3) ---
fill ~-9 ~0 ~-4 ~-9 ~7 ~-4 packed_ice []
fill ~9 ~0 ~4 ~9 ~7 ~4 packed_ice []
setblock ~-9 ~8 ~-4 blue_ice []
setblock ~9 ~8 ~4 blue_ice []
setblock ~-2 ~5 ~4 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~1 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~1 slot.container 1 string 11
replaceitem block ~-5 ~1 ~1 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~1 slot.container 3 snowball 21
replaceitem block ~-5 ~1 ~1 slot.container 4 ender_pearl 8
replaceitem block ~-5 ~1 ~1 slot.container 5 phantom_membrane 9
replaceitem block ~-5 ~1 ~1 slot.container 9 iron_ingot 9
replaceitem block ~-5 ~1 ~1 slot.container 10 emerald 7
replaceitem block ~-5 ~1 ~1 slot.container 11 flint_and_steel 1
replaceitem block ~-5 ~1 ~1 slot.container 12 lantern 10
replaceitem block ~-5 ~1 ~1 slot.container 13 golden_apple 2
replaceitem block ~-5 ~1 ~1 slot.container 14 cooked_cod 9
loot insert ~-5 ~1 ~1 loot "rsf/ice_plains"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
