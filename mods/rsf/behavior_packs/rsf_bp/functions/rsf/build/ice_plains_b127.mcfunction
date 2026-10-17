# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2175/4224 | 主题内编号: b127/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·万神殿巨型穹顶与试炼宫 (ice_plains_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 spruce_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 packed_ice []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 snow []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks []
fill ~-6 ~-5 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
setblock ~-5 ~-5 ~-4 campfire []
setblock ~5 ~-5 ~4 campfire []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 phantom_membrane 6
replaceitem block ~0 ~-3 ~4 slot.container 1 bone 17
replaceitem block ~0 ~-3 ~4 slot.container 2 arrow 26
replaceitem block ~0 ~-3 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~4 slot.container 4 string 8
replaceitem block ~0 ~-3 ~4 slot.container 5 gunpowder 9
replaceitem block ~0 ~-3 ~4 slot.container 9 emerald 5
replaceitem block ~0 ~-3 ~4 slot.container 10 flint_and_steel 1
replaceitem block ~0 ~-3 ~4 slot.container 11 lantern 8
replaceitem block ~0 ~-3 ~4 slot.container 12 golden_apple 7
replaceitem block ~0 ~-3 ~4 slot.container 13 cooked_cod 14
replaceitem block ~0 ~-3 ~4 slot.container 14 cooked_salmon 8
loot insert ~0 ~-3 ~4 loot "rsf/ice_plains"
loot insert ~0 ~-3 ~4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~9 ~-6 ~7 ~9 ~6 snow []
fill ~-7 ~1 ~-6 ~-7 ~8 ~-6 spruce_log []
fill ~-7 ~1 ~6 ~-7 ~8 ~6 spruce_log []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 spruce_log []
fill ~-5 ~1 ~6 ~-5 ~8 ~6 spruce_log []
fill ~-3 ~1 ~-6 ~-3 ~8 ~-6 spruce_log []
fill ~-3 ~1 ~6 ~-3 ~8 ~6 spruce_log []
fill ~-1 ~1 ~-6 ~-1 ~8 ~-6 spruce_log []
fill ~-1 ~1 ~6 ~-1 ~8 ~6 spruce_log []
fill ~1 ~1 ~-6 ~1 ~8 ~-6 spruce_log []
fill ~1 ~1 ~6 ~1 ~8 ~6 spruce_log []
fill ~3 ~1 ~-6 ~3 ~8 ~-6 spruce_log []
fill ~3 ~1 ~6 ~3 ~8 ~6 spruce_log []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 spruce_log []
fill ~5 ~1 ~6 ~5 ~8 ~6 spruce_log []
fill ~7 ~1 ~-6 ~7 ~8 ~-6 spruce_log []
fill ~7 ~1 ~6 ~7 ~8 ~6 spruce_log []
fill ~-7 ~1 ~-4 ~-7 ~8 ~-4 spruce_log []
fill ~7 ~1 ~-4 ~7 ~8 ~-4 spruce_log []
fill ~-7 ~1 ~-2 ~-7 ~8 ~-2 spruce_log []
fill ~7 ~1 ~-2 ~7 ~8 ~-2 spruce_log []
fill ~-7 ~1 ~0 ~-7 ~8 ~0 spruce_log []
fill ~7 ~1 ~0 ~7 ~8 ~0 spruce_log []
fill ~-7 ~1 ~2 ~-7 ~8 ~2 spruce_log []
fill ~7 ~1 ~2 ~7 ~8 ~2 spruce_log []
fill ~-7 ~1 ~4 ~-7 ~8 ~4 spruce_log []
fill ~7 ~1 ~4 ~7 ~8 ~4 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~9 ~-6 ~7 ~9 ~6 snow []
fill ~-6 ~10 ~-5 ~6 ~11 ~5 glass []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 air []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 spruce_log []
setblock ~0 ~4 ~-8 diamond_block []
setblock ~0 ~5 ~-8 campfire []
fill ~0 ~0 ~8 ~0 ~3 ~8 spruce_log []
setblock ~0 ~4 ~8 diamond_block []
setblock ~0 ~5 ~8 campfire []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 spruce_log []
setblock ~-9 ~4 ~0 diamond_block []
setblock ~-9 ~5 ~0 campfire []
fill ~9 ~0 ~0 ~9 ~3 ~0 spruce_log []
setblock ~9 ~4 ~0 diamond_block []
setblock ~9 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 10x7x6) ---
fill ~-10 ~0 ~-7 ~-10 ~10 ~-7 packed_ice []
fill ~10 ~0 ~7 ~10 ~10 ~7 packed_ice []
setblock ~-10 ~11 ~-7 blue_ice []
setblock ~10 ~11 ~7 blue_ice []
setblock ~0 ~8 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 phantom_membrane 9
replaceitem block ~6 ~1 ~4 slot.container 1 bone 12
replaceitem block ~6 ~1 ~4 slot.container 2 arrow 21
replaceitem block ~6 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~6 ~1 ~4 slot.container 4 string 11
replaceitem block ~6 ~1 ~4 slot.container 5 gunpowder 12
replaceitem block ~6 ~1 ~4 slot.container 9 coal 21
replaceitem block ~6 ~1 ~4 slot.container 10 iron_ingot 12
replaceitem block ~6 ~1 ~4 slot.container 11 emerald 3
replaceitem block ~6 ~1 ~4 slot.container 12 flint_and_steel 1
replaceitem block ~6 ~1 ~4 slot.container 13 lantern 6
replaceitem block ~6 ~1 ~4 slot.container 14 golden_apple 5
loot insert ~6 ~1 ~4 loot "rsf/ice_plains"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 arrow 24
replaceitem block ~-6 ~1 ~5 slot.container 1 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 2 string 14
replaceitem block ~-6 ~1 ~5 slot.container 3 gunpowder 15
replaceitem block ~-6 ~1 ~5 slot.container 4 snowball 16
replaceitem block ~-6 ~1 ~5 slot.container 5 ender_pearl 3
replaceitem block ~-6 ~1 ~5 slot.container 9 coal 19
replaceitem block ~-6 ~1 ~5 slot.container 10 iron_ingot 10
replaceitem block ~-6 ~1 ~5 slot.container 11 emerald 8
replaceitem block ~-6 ~1 ~5 slot.container 12 flint_and_steel 1
replaceitem block ~-6 ~1 ~5 slot.container 13 lantern 4
replaceitem block ~-6 ~1 ~5 slot.container 14 golden_apple 3
loot insert ~-6 ~1 ~5 loot "rsf/ice_plains"
loot insert ~-6 ~1 ~5 loot "chests/igloo_chest"
summon polar_bear ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
