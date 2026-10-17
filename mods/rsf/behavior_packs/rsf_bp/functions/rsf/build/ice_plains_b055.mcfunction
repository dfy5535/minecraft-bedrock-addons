# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2103/4224 | 主题内编号: b055/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·木栅栏防御拓荒哨所 (ice_plains_outpost_palisade_fort)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[trial_pit] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_ice []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 snow []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
setblock ~-4 ~-5 ~-3 campfire []
setblock ~4 ~-5 ~3 campfire []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 string 8
replaceitem block ~0 ~-3 ~3 slot.container 1 gunpowder 9
replaceitem block ~0 ~-3 ~3 slot.container 2 snowball 18
replaceitem block ~0 ~-3 ~3 slot.container 3 ender_pearl 5
replaceitem block ~0 ~-3 ~3 slot.container 4 phantom_membrane 6
replaceitem block ~0 ~-3 ~3 slot.container 5 bone 17
replaceitem block ~0 ~-3 ~3 slot.container 9 lantern 9
replaceitem block ~0 ~-3 ~3 slot.container 10 golden_apple 8
replaceitem block ~0 ~-3 ~3 slot.container 11 cooked_cod 8
replaceitem block ~0 ~-3 ~3 slot.container 12 cooked_salmon 9
replaceitem block ~0 ~-3 ~3 slot.container 13 packed_ice 18
replaceitem block ~0 ~-3 ~3 slot.container 14 blue_ice 11
loot insert ~0 ~-3 ~3 loot "rsf/ice_plains"
loot insert ~0 ~-3 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~9 ~-4 snow []
setblock ~-6 ~10 ~-5 campfire []
fill ~-6 ~1 ~4 ~-5 ~9 ~5 snow []
setblock ~-6 ~10 ~4 campfire []
fill ~5 ~1 ~-5 ~6 ~9 ~-4 snow []
setblock ~5 ~10 ~-5 campfire []
fill ~5 ~1 ~4 ~6 ~9 ~5 snow []
setblock ~5 ~10 ~4 campfire []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 snow []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 spruce_fence []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 air []
setblock ~-6 ~8 ~-5 spruce_log []
setblock ~-6 ~9 ~-5 campfire []
setblock ~-6 ~8 ~5 spruce_log []
setblock ~-6 ~9 ~5 campfire []
setblock ~6 ~8 ~-5 spruce_log []
setblock ~6 ~9 ~-5 campfire []
setblock ~6 ~8 ~5 spruce_log []
setblock ~6 ~9 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 spruce_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x6x4) ---
fill ~-9 ~0 ~-6 ~-9 ~8 ~-6 packed_ice []
fill ~9 ~0 ~6 ~9 ~8 ~6 packed_ice []
setblock ~-9 ~9 ~-6 blue_ice []
setblock ~9 ~9 ~6 blue_ice []
setblock ~1 ~6 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 phantom_membrane 9
replaceitem block ~5 ~1 ~3 slot.container 1 bone 12
replaceitem block ~5 ~1 ~3 slot.container 2 arrow 21
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 4 string 11
replaceitem block ~5 ~1 ~3 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 9 lantern 7
replaceitem block ~5 ~1 ~3 slot.container 10 golden_apple 6
replaceitem block ~5 ~1 ~3 slot.container 11 cooked_cod 13
replaceitem block ~5 ~1 ~3 slot.container 12 cooked_salmon 14
replaceitem block ~5 ~1 ~3 slot.container 13 packed_ice 16
replaceitem block ~5 ~1 ~3 slot.container 14 blue_ice 9
loot insert ~5 ~1 ~3 loot "rsf/ice_plains"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 arrow 24
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 2 string 14
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 4 snowball 16
replaceitem block ~-5 ~1 ~4 slot.container 5 ender_pearl 3
replaceitem block ~-5 ~1 ~4 slot.container 9 lantern 5
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 4
replaceitem block ~-5 ~1 ~4 slot.container 11 cooked_cod 11
replaceitem block ~-5 ~1 ~4 slot.container 12 cooked_salmon 12
replaceitem block ~-5 ~1 ~4 slot.container 13 packed_ice 21
replaceitem block ~-5 ~1 ~4 slot.container 14 blue_ice 14
loot insert ~-5 ~1 ~4 loot "rsf/ice_plains"
loot insert ~-5 ~1 ~4 loot "chests/igloo_chest"
summon polar_bear ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
