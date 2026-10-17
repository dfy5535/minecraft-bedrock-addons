# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2158/4224 | 主题内编号: b110/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·双子附魔与酿造实验楼 (ice_plains_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 17x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 packed_ice [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 packed_ice [] replace water
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 quartz_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 quartz_block []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 packed_ice []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 stone_bricks []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~2 slot.container 0 rotten_flesh 17
replaceitem block ~5 ~-3 ~2 slot.container 1 string 8
replaceitem block ~5 ~-3 ~2 slot.container 2 gunpowder 9
replaceitem block ~5 ~-3 ~2 slot.container 3 snowball 18
replaceitem block ~5 ~-3 ~2 slot.container 4 ender_pearl 5
replaceitem block ~5 ~-3 ~2 slot.container 5 phantom_membrane 6
replaceitem block ~5 ~-3 ~2 slot.container 9 flint_and_steel 1
replaceitem block ~5 ~-3 ~2 slot.container 10 lantern 10
replaceitem block ~5 ~-3 ~2 slot.container 11 golden_apple 2
replaceitem block ~5 ~-3 ~2 slot.container 12 cooked_cod 9
replaceitem block ~5 ~-3 ~2 slot.container 13 cooked_salmon 10
replaceitem block ~5 ~-3 ~2 slot.container 14 packed_ice 19
loot insert ~5 ~-3 ~2 loot "rsf/ice_plains"
loot insert ~5 ~-3 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~9 ~4 packed_ice []
fill ~2 ~1 ~-4 ~7 ~9 ~4 packed_ice []
fill ~-6 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~6 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 snow []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~8 ~-5 ~8 ~8 ~5 quartz_slab []
fill ~-6 ~9 ~-3 ~6 ~10 ~3 stone_bricks []
fill ~-7 ~11 ~-4 ~7 ~11 ~4 spruce_slab []
setblock ~0 ~12 ~0 sea_lantern []
setblock ~0 ~13 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 snow []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 10x6x4) ---
fill ~-10 ~0 ~-6 ~-10 ~8 ~-6 packed_ice []
fill ~10 ~0 ~6 ~10 ~8 ~6 packed_ice []
setblock ~-10 ~9 ~-6 blue_ice []
setblock ~10 ~9 ~6 blue_ice []
setblock ~-3 ~6 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-4 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 ender_pearl 8
replaceitem block ~-6 ~1 ~2 slot.container 1 phantom_membrane 9
replaceitem block ~-6 ~1 ~2 slot.container 2 bone 12
replaceitem block ~-6 ~1 ~2 slot.container 3 arrow 21
replaceitem block ~-6 ~1 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-6 ~1 ~2 slot.container 5 string 11
replaceitem block ~-6 ~1 ~2 slot.container 9 blue_ice 10
replaceitem block ~-6 ~1 ~2 slot.container 10 coal 19
replaceitem block ~-6 ~1 ~2 slot.container 11 iron_ingot 10
replaceitem block ~-6 ~1 ~2 slot.container 12 emerald 8
replaceitem block ~-6 ~1 ~2 slot.container 13 flint_and_steel 1
replaceitem block ~-6 ~1 ~2 slot.container 14 lantern 4
loot insert ~-6 ~1 ~2 loot "rsf/ice_plains"
summon spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon stray ~1 ~1 ~1
