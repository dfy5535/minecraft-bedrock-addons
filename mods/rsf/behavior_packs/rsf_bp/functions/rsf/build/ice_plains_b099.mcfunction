# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2147/4224 | 主题内编号: b099/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·铁闸门瓮城防御堡 (ice_plains_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 stone_bricks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 stone_bricks [] replace water
fill ~-7 ~1 ~-5 ~7 ~10 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 spruce_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 packed_ice []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 snow []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-3 ~5 ~-1 ~3 blue_ice []
fill ~-4 ~-4 ~-2 ~4 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~2 slot.container 0 phantom_membrane 6
replaceitem block ~4 ~-2 ~2 slot.container 1 bone 17
replaceitem block ~4 ~-2 ~2 slot.container 2 arrow 26
replaceitem block ~4 ~-2 ~2 slot.container 3 rotten_flesh 17
replaceitem block ~4 ~-2 ~2 slot.container 4 string 8
replaceitem block ~4 ~-2 ~2 slot.container 5 gunpowder 9
replaceitem block ~4 ~-2 ~2 slot.container 9 coal 17
replaceitem block ~4 ~-2 ~2 slot.container 10 iron_ingot 8
replaceitem block ~4 ~-2 ~2 slot.container 11 emerald 6
replaceitem block ~4 ~-2 ~2 slot.container 12 flint_and_steel 1
replaceitem block ~4 ~-2 ~2 slot.container 13 lantern 9
replaceitem block ~4 ~-2 ~2 slot.container 14 golden_apple 8
loot insert ~4 ~-2 ~2 loot "rsf/ice_plains"
loot insert ~4 ~-2 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~8 ~4 stone_bricks []
fill ~-5 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-4 ~6 ~8 ~4 snow []
fill ~-6 ~9 ~-4 ~6 ~9 ~4 spruce_fence []
fill ~-5 ~9 ~-3 ~5 ~9 ~3 air []
setblock ~-6 ~9 ~-4 spruce_log []
setblock ~-6 ~10 ~-4 campfire []
setblock ~-6 ~9 ~4 spruce_log []
setblock ~-6 ~10 ~4 campfire []
setblock ~6 ~9 ~-4 spruce_log []
setblock ~6 ~10 ~-4 campfire []
setblock ~6 ~9 ~4 spruce_log []
setblock ~6 ~10 ~4 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 snow []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 campfire []
setblock ~2 ~4 ~-7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x7x3) ---
fill ~-9 ~0 ~-7 ~-9 ~7 ~-7 packed_ice []
fill ~9 ~0 ~7 ~9 ~7 ~7 packed_ice []
setblock ~-9 ~8 ~-7 blue_ice []
setblock ~9 ~8 ~7 blue_ice []
setblock ~-3 ~5 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 string 11
replaceitem block ~5 ~1 ~2 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~2 slot.container 2 snowball 21
replaceitem block ~5 ~1 ~2 slot.container 3 ender_pearl 8
replaceitem block ~5 ~1 ~2 slot.container 4 phantom_membrane 9
replaceitem block ~5 ~1 ~2 slot.container 5 bone 12
replaceitem block ~5 ~1 ~2 slot.container 9 cooked_cod 13
replaceitem block ~5 ~1 ~2 slot.container 10 cooked_salmon 14
replaceitem block ~5 ~1 ~2 slot.container 11 packed_ice 16
replaceitem block ~5 ~1 ~2 slot.container 12 blue_ice 9
replaceitem block ~5 ~1 ~2 slot.container 13 coal 18
replaceitem block ~5 ~1 ~2 slot.container 14 iron_ingot 9
loot insert ~5 ~1 ~2 loot "rsf/ice_plains"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 snowball 16
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 3
replaceitem block ~-5 ~1 ~3 slot.container 2 phantom_membrane 4
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~3 slot.container 4 arrow 24
replaceitem block ~-5 ~1 ~3 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 9 cooked_cod 11
replaceitem block ~-5 ~1 ~3 slot.container 10 cooked_salmon 12
replaceitem block ~-5 ~1 ~3 slot.container 11 packed_ice 21
replaceitem block ~-5 ~1 ~3 slot.container 12 blue_ice 14
replaceitem block ~-5 ~1 ~3 slot.container 13 coal 16
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_ingot 7
loot insert ~-5 ~1 ~3 loot "rsf/ice_plains"
loot insert ~-5 ~1 ~3 loot "chests/igloo_chest"
summon witch ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-2 ~0
