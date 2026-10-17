# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2114/4224 | 主题内编号: b066/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·崩塌角楼古堡残垣 (ice_plains_ruin_shattered_keep)
# 建筑构造: 主体[fortress_citadel] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 packed_ice [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 packed_ice [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 quartz_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 quartz_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_ice []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 packed_ice []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 soul_lantern []
setblock ~4 ~-5 ~-3 soul_lantern []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 gunpowder 9
replaceitem block ~4 ~-3 ~3 slot.container 1 snowball 18
replaceitem block ~4 ~-3 ~3 slot.container 2 ender_pearl 5
replaceitem block ~4 ~-3 ~3 slot.container 3 phantom_membrane 6
replaceitem block ~4 ~-3 ~3 slot.container 4 bone 17
replaceitem block ~4 ~-3 ~3 slot.container 5 arrow 26
replaceitem block ~4 ~-3 ~3 slot.container 9 blue_ice 10
replaceitem block ~4 ~-3 ~3 slot.container 10 coal 19
replaceitem block ~4 ~-3 ~3 slot.container 11 iron_ingot 10
replaceitem block ~4 ~-3 ~3 slot.container 12 emerald 8
replaceitem block ~4 ~-3 ~3 slot.container 13 flint_and_steel 1
replaceitem block ~4 ~-3 ~3 slot.container 14 lantern 4
loot insert ~4 ~-3 ~3 loot "rsf/ice_plains"
loot insert ~4 ~-3 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~8 ~5 packed_ice []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~10 ~-4 snow []
setblock ~-6 ~11 ~-5 soul_lantern []
fill ~-6 ~1 ~4 ~-5 ~10 ~5 snow []
setblock ~-6 ~11 ~4 soul_lantern []
fill ~5 ~1 ~-5 ~6 ~10 ~-4 snow []
setblock ~5 ~11 ~-5 soul_lantern []
fill ~5 ~1 ~4 ~6 ~10 ~5 snow []
setblock ~5 ~11 ~4 soul_lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 quartz_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-6 ~7 ~-1 ~-6 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~7 ~-2 chiseled_stone_bricks []
fill ~-7 ~0 ~2 ~-7 ~7 ~2 chiseled_stone_bricks []
fill ~7 ~0 ~-2 ~7 ~7 ~-2 chiseled_stone_bricks []
fill ~7 ~0 ~2 ~7 ~7 ~2 chiseled_stone_bricks []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x8x5) ---
fill ~-9 ~0 ~-8 ~-9 ~9 ~-8 packed_ice []
fill ~9 ~0 ~8 ~9 ~9 ~8 packed_ice []
setblock ~-9 ~10 ~-8 blue_ice []
setblock ~9 ~10 ~8 blue_ice []
setblock ~0 ~7 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 1 string 11
replaceitem block ~-5 ~1 ~3 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 3 snowball 21
replaceitem block ~-5 ~1 ~3 slot.container 4 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 5 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 9 cooked_salmon 8
replaceitem block ~-5 ~1 ~3 slot.container 10 packed_ice 17
replaceitem block ~-5 ~1 ~3 slot.container 11 blue_ice 10
replaceitem block ~-5 ~1 ~3 slot.container 12 coal 19
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_ingot 10
replaceitem block ~-5 ~1 ~3 slot.container 14 emerald 8
loot insert ~-5 ~1 ~3 loot "rsf/ice_plains"
summon zombie ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon spider ~1 ~1 ~1
summon witch ~0 ~-3 ~0
