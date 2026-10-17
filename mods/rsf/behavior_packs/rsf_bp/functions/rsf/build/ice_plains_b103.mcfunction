# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2151/4224 | 主题内编号: b103/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·十字全向防御方堡 (ice_plains_bunker_cross_redoubt)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_ice []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 snow []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 blue_ice []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 string 8
replaceitem block ~4 ~-2 ~3 slot.container 1 gunpowder 9
replaceitem block ~4 ~-2 ~3 slot.container 2 snowball 18
replaceitem block ~4 ~-2 ~3 slot.container 3 ender_pearl 5
replaceitem block ~4 ~-2 ~3 slot.container 4 phantom_membrane 6
replaceitem block ~4 ~-2 ~3 slot.container 5 bone 17
replaceitem block ~4 ~-2 ~3 slot.container 9 emerald 8
replaceitem block ~4 ~-2 ~3 slot.container 10 flint_and_steel 1
replaceitem block ~4 ~-2 ~3 slot.container 11 lantern 4
replaceitem block ~4 ~-2 ~3 slot.container 12 golden_apple 3
replaceitem block ~4 ~-2 ~3 slot.container 13 cooked_cod 10
replaceitem block ~4 ~-2 ~3 slot.container 14 cooked_salmon 11
loot insert ~4 ~-2 ~3 loot "rsf/ice_plains"
loot insert ~4 ~-2 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~8 ~5 stone_bricks []
fill ~-6 ~1 ~-2 ~6 ~8 ~2 stone_bricks []
fill ~-1 ~1 ~-4 ~1 ~7 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~7 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 spruce_fence []
setblock ~6 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 snow []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 spruce_fence []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 air []
setblock ~-6 ~9 ~-5 spruce_log []
setblock ~-6 ~10 ~-5 campfire []
setblock ~-6 ~9 ~5 spruce_log []
setblock ~-6 ~10 ~5 campfire []
setblock ~6 ~9 ~-5 spruce_log []
setblock ~6 ~10 ~-5 campfire []
setblock ~6 ~9 ~5 spruce_log []
setblock ~6 ~10 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~5 ~-7 spruce_log []
setblock ~-8 ~6 ~-7 campfire []
fill ~-8 ~0 ~7 ~-8 ~5 ~7 spruce_log []
setblock ~-8 ~6 ~7 campfire []
fill ~8 ~0 ~-7 ~8 ~5 ~-7 spruce_log []
setblock ~8 ~6 ~-7 campfire []
fill ~8 ~0 ~7 ~8 ~5 ~7 spruce_log []
setblock ~8 ~6 ~7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x6x2) ---
fill ~-9 ~0 ~-6 ~-9 ~6 ~-6 packed_ice []
fill ~9 ~0 ~6 ~9 ~6 ~6 packed_ice []
setblock ~-9 ~7 ~-6 blue_ice []
setblock ~9 ~7 ~6 blue_ice []
setblock ~1 ~4 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 phantom_membrane 9
replaceitem block ~5 ~1 ~3 slot.container 1 bone 12
replaceitem block ~5 ~1 ~3 slot.container 2 arrow 21
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 4 string 11
replaceitem block ~5 ~1 ~3 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 9 packed_ice 18
replaceitem block ~5 ~1 ~3 slot.container 10 blue_ice 11
replaceitem block ~5 ~1 ~3 slot.container 11 coal 20
replaceitem block ~5 ~1 ~3 slot.container 12 iron_ingot 11
replaceitem block ~5 ~1 ~3 slot.container 13 emerald 9
replaceitem block ~5 ~1 ~3 slot.container 14 flint_and_steel 1
loot insert ~5 ~1 ~3 loot "rsf/ice_plains"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 arrow 24
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 2 string 14
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 4 snowball 16
replaceitem block ~-5 ~1 ~4 slot.container 5 ender_pearl 3
replaceitem block ~-5 ~1 ~4 slot.container 9 packed_ice 16
replaceitem block ~-5 ~1 ~4 slot.container 10 blue_ice 9
replaceitem block ~-5 ~1 ~4 slot.container 11 coal 18
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 13 emerald 7
replaceitem block ~-5 ~1 ~4 slot.container 14 flint_and_steel 1
loot insert ~-5 ~1 ~4 loot "rsf/ice_plains"
loot insert ~-5 ~1 ~4 loot "chests/igloo_chest"
summon polar_bear ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
