# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2118/4224 | 主题内编号: b070/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·风化坍塌阶梯祭台 (ice_plains_ruin_crumbled_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 packed_ice [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 packed_ice [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 quartz_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 quartz_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_ice []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-3 ~3 slot.container 1 string 8
replaceitem block ~4 ~-3 ~3 slot.container 2 gunpowder 9
replaceitem block ~4 ~-3 ~3 slot.container 3 snowball 18
replaceitem block ~4 ~-3 ~3 slot.container 4 ender_pearl 5
replaceitem block ~4 ~-3 ~3 slot.container 5 phantom_membrane 6
replaceitem block ~4 ~-3 ~3 slot.container 9 flint_and_steel 1
replaceitem block ~4 ~-3 ~3 slot.container 10 lantern 5
replaceitem block ~4 ~-3 ~3 slot.container 11 golden_apple 4
replaceitem block ~4 ~-3 ~3 slot.container 12 cooked_cod 11
replaceitem block ~4 ~-3 ~3 slot.container 13 cooked_salmon 12
replaceitem block ~4 ~-3 ~3 slot.container 14 packed_ice 21
loot insert ~4 ~-3 ~3 loot "rsf/ice_plains"
loot insert ~4 ~-3 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 packed_ice []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 snow []
fill ~-4 ~5 ~-3 ~4 ~7 ~3 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 quartz_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 quartz_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 chiseled_stone_bricks []
setblock ~0 ~4 ~-7 chiseled_stone_bricks []
setblock ~0 ~5 ~-7 soul_lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 chiseled_stone_bricks []
setblock ~0 ~4 ~7 chiseled_stone_bricks []
setblock ~0 ~5 ~7 soul_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 chiseled_stone_bricks []
setblock ~-8 ~4 ~0 chiseled_stone_bricks []
setblock ~-8 ~5 ~0 soul_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 chiseled_stone_bricks []
setblock ~8 ~4 ~0 chiseled_stone_bricks []
setblock ~8 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x6x4) ---
fill ~-9 ~0 ~-6 ~-9 ~8 ~-6 packed_ice []
fill ~9 ~0 ~6 ~9 ~8 ~6 packed_ice []
setblock ~-9 ~9 ~-6 blue_ice []
setblock ~9 ~9 ~6 blue_ice []
setblock ~-2 ~6 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 1 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 3 arrow 21
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 5 string 11
replaceitem block ~-5 ~1 ~3 slot.container 9 blue_ice 12
replaceitem block ~-5 ~1 ~3 slot.container 10 coal 21
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 12 emerald 3
replaceitem block ~-5 ~1 ~3 slot.container 13 flint_and_steel 1
replaceitem block ~-5 ~1 ~3 slot.container 14 lantern 6
loot insert ~-5 ~1 ~3 loot "rsf/ice_plains"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
