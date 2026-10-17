# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2145/4224 | 主题内编号: b097/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·八角射击孔防御棱堡 (ice_plains_bunker_octagonal_bastion)
# 建筑构造: 主体[octagonal_keep] + 屋顶[battlement_flat] + 地宫[trial_pit] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 snow [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 snow [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 quartz_block []
setblock ~0 ~0 ~0 blue_ice []

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

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-5 ~6 ~8 ~5 snow []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-6 ~1 ~-5 ~-6 ~9 ~-5 air []
fill ~6 ~1 ~-5 ~6 ~9 ~-5 air []
fill ~-6 ~1 ~5 ~-6 ~9 ~5 air []
fill ~6 ~1 ~5 ~6 ~9 ~5 air []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 spruce_log []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 spruce_log []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 spruce_log []
fill ~5 ~1 ~4 ~5 ~8 ~4 spruce_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 packed_ice []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 spruce_fence []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 air []
setblock ~-6 ~9 ~-5 spruce_log []
setblock ~-6 ~10 ~-5 lantern []
setblock ~-6 ~9 ~5 spruce_log []
setblock ~-6 ~10 ~5 lantern []
setblock ~6 ~9 ~-5 spruce_log []
setblock ~6 ~10 ~-5 lantern []
setblock ~6 ~9 ~5 spruce_log []
setblock ~6 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~7 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~7 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~7 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~7 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x6x6) ---
fill ~-9 ~0 ~-6 ~-9 ~10 ~-6 packed_ice []
fill ~9 ~0 ~6 ~9 ~10 ~6 packed_ice []
setblock ~-9 ~11 ~-6 blue_ice []
setblock ~9 ~11 ~6 blue_ice []
setblock ~1 ~8 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 arrow 21
replaceitem block ~5 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 2 string 11
replaceitem block ~5 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 4 snowball 21
replaceitem block ~5 ~1 ~3 slot.container 5 ender_pearl 8
replaceitem block ~5 ~1 ~3 slot.container 9 coal 19
replaceitem block ~5 ~1 ~3 slot.container 10 iron_ingot 10
replaceitem block ~5 ~1 ~3 slot.container 11 emerald 8
replaceitem block ~5 ~1 ~3 slot.container 12 flint_and_steel 1
replaceitem block ~5 ~1 ~3 slot.container 13 lantern 4
replaceitem block ~5 ~1 ~3 slot.container 14 golden_apple 3
loot insert ~5 ~1 ~3 loot "rsf/ice_plains"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 string 14
replaceitem block ~-5 ~1 ~4 slot.container 1 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 2 snowball 16
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 3
replaceitem block ~-5 ~1 ~4 slot.container 4 phantom_membrane 4
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 9 coal 17
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_ingot 8
replaceitem block ~-5 ~1 ~4 slot.container 11 emerald 6
replaceitem block ~-5 ~1 ~4 slot.container 12 flint_and_steel 1
replaceitem block ~-5 ~1 ~4 slot.container 13 lantern 9
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 8
loot insert ~-5 ~1 ~4 loot "rsf/ice_plains"
loot insert ~-5 ~1 ~4 loot "chests/igloo_chest"
summon polar_bear ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
