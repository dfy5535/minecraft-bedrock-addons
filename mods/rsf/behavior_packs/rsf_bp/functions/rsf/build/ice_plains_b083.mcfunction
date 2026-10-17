# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2131/4224 | 主题内编号: b083/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·铁砧锻造与模具工坊 (ice_plains_mine_smithing_foundry)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_prison]
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

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
setblock ~-4 ~-4 ~0 blast_furnace []
setblock ~4 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~3 anvil []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 phantom_membrane 6
replaceitem block ~4 ~-2 ~3 slot.container 1 bone 17
replaceitem block ~4 ~-2 ~3 slot.container 2 arrow 26
replaceitem block ~4 ~-2 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~4 ~-2 ~3 slot.container 4 string 8
replaceitem block ~4 ~-2 ~3 slot.container 5 gunpowder 9
replaceitem block ~4 ~-2 ~3 slot.container 9 lantern 6
replaceitem block ~4 ~-2 ~3 slot.container 10 golden_apple 5
replaceitem block ~4 ~-2 ~3 slot.container 11 cooked_cod 12
replaceitem block ~4 ~-2 ~3 slot.container 12 cooked_salmon 13
replaceitem block ~4 ~-2 ~3 slot.container 13 packed_ice 22
replaceitem block ~4 ~-2 ~3 slot.container 14 blue_ice 8
loot insert ~4 ~-2 ~3 loot "rsf/ice_plains"
loot insert ~4 ~-2 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~7 ~5 stone_bricks []
fill ~-6 ~1 ~0 ~6 ~6 ~5 blue_ice []
fill ~-5 ~1 ~-4 ~-1 ~6 ~4 air []
fill ~-1 ~1 ~1 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-6 ~-7 ~8 ~6 spruce_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-6 ~7 ~8 ~6 spruce_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 spruce_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 spruce_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~5 ~9 ~5 spruce_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 snow []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~6 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~6 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x7x2) ---
fill ~-9 ~0 ~-7 ~-9 ~6 ~-7 packed_ice []
fill ~9 ~0 ~7 ~9 ~6 ~7 packed_ice []
setblock ~-9 ~7 ~-7 blue_ice []
setblock ~9 ~7 ~7 blue_ice []
setblock ~-1 ~4 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 string 11
replaceitem block ~5 ~1 ~3 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 2 snowball 21
replaceitem block ~5 ~1 ~3 slot.container 3 ender_pearl 8
replaceitem block ~5 ~1 ~3 slot.container 4 phantom_membrane 9
replaceitem block ~5 ~1 ~3 slot.container 5 bone 12
replaceitem block ~5 ~1 ~3 slot.container 9 packed_ice 19
replaceitem block ~5 ~1 ~3 slot.container 10 blue_ice 12
replaceitem block ~5 ~1 ~3 slot.container 11 coal 21
replaceitem block ~5 ~1 ~3 slot.container 12 iron_ingot 12
replaceitem block ~5 ~1 ~3 slot.container 13 emerald 3
replaceitem block ~5 ~1 ~3 slot.container 14 flint_and_steel 1
loot insert ~5 ~1 ~3 loot "rsf/ice_plains"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 snowball 16
replaceitem block ~-5 ~1 ~4 slot.container 1 ender_pearl 3
replaceitem block ~-5 ~1 ~4 slot.container 2 phantom_membrane 4
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 4 arrow 24
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 9 packed_ice 17
replaceitem block ~-5 ~1 ~4 slot.container 10 blue_ice 10
replaceitem block ~-5 ~1 ~4 slot.container 11 coal 19
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_ingot 10
replaceitem block ~-5 ~1 ~4 slot.container 13 emerald 8
replaceitem block ~-5 ~1 ~4 slot.container 14 flint_and_steel 1
loot insert ~-5 ~1 ~4 loot "rsf/ice_plains"
loot insert ~-5 ~1 ~4 loot "chests/igloo_chest"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
