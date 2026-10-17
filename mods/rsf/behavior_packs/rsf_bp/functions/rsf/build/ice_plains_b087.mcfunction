# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2135/4224 | 主题内编号: b087/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·十字矿道枢纽补给室 (ice_plains_mine_cross_tunnel_hub)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_ice []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 snow []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 string 8
replaceitem block ~4 ~-3 ~3 slot.container 1 gunpowder 9
replaceitem block ~4 ~-3 ~3 slot.container 2 snowball 18
replaceitem block ~4 ~-3 ~3 slot.container 3 ender_pearl 5
replaceitem block ~4 ~-3 ~3 slot.container 4 phantom_membrane 6
replaceitem block ~4 ~-3 ~3 slot.container 5 bone 17
replaceitem block ~4 ~-3 ~3 slot.container 9 cooked_cod 14
replaceitem block ~4 ~-3 ~3 slot.container 10 cooked_salmon 8
replaceitem block ~4 ~-3 ~3 slot.container 11 packed_ice 17
replaceitem block ~4 ~-3 ~3 slot.container 12 blue_ice 10
replaceitem block ~4 ~-3 ~3 slot.container 13 coal 19
replaceitem block ~4 ~-3 ~3 slot.container 14 iron_ingot 10
loot insert ~4 ~-3 ~3 loot "rsf/ice_plains"
loot insert ~4 ~-3 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~6 ~5 stone_bricks []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 stone_bricks []
fill ~-1 ~1 ~-4 ~1 ~5 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 spruce_fence []
setblock ~6 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 snow []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 spruce_fence []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 air []
setblock ~-6 ~7 ~-5 spruce_log []
setblock ~-6 ~8 ~-5 campfire []
setblock ~-6 ~7 ~5 spruce_log []
setblock ~-6 ~8 ~5 campfire []
setblock ~6 ~7 ~-5 spruce_log []
setblock ~6 ~8 ~-5 campfire []
setblock ~6 ~7 ~5 spruce_log []
setblock ~6 ~8 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 snow []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 campfire []
setblock ~2 ~4 ~-8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~-9 ~0 ~-8 ~-9 ~10 ~-8 packed_ice []
fill ~9 ~0 ~8 ~9 ~10 ~8 packed_ice []
setblock ~-9 ~11 ~-8 blue_ice []
setblock ~9 ~11 ~8 blue_ice []
setblock ~-3 ~8 ~8 soul_lantern []

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
replaceitem block ~5 ~1 ~3 slot.container 9 coal 16
replaceitem block ~5 ~1 ~3 slot.container 10 iron_ingot 7
replaceitem block ~5 ~1 ~3 slot.container 11 emerald 5
replaceitem block ~5 ~1 ~3 slot.container 12 flint_and_steel 1
replaceitem block ~5 ~1 ~3 slot.container 13 lantern 8
replaceitem block ~5 ~1 ~3 slot.container 14 golden_apple 7
loot insert ~5 ~1 ~3 loot "rsf/ice_plains"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 arrow 24
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 2 string 14
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 4 snowball 16
replaceitem block ~-5 ~1 ~4 slot.container 5 ender_pearl 3
replaceitem block ~-5 ~1 ~4 slot.container 9 coal 21
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 11 emerald 3
replaceitem block ~-5 ~1 ~4 slot.container 12 flint_and_steel 1
replaceitem block ~-5 ~1 ~4 slot.container 13 lantern 6
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 5
loot insert ~-5 ~1 ~4 loot "rsf/ice_plains"
loot insert ~-5 ~1 ~4 loot "chests/igloo_chest"
summon witch ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
