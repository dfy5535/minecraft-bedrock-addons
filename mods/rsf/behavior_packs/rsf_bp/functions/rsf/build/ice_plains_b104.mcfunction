# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2152/4224 | 主题内编号: b104/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·双层指挥台卫戍堡 (ice_plains_bunker_terrace_command)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[battlement_flat] + 地宫[trial_pit] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 9格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 blue_ice [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 blue_ice [] replace water
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 snow []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

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

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-5 ~6 ~4 ~5 blue_ice []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-7 ~4 ~-6 ~7 ~4 ~6 stone_brick_slab []
fill ~-5 ~5 ~-4 ~5 ~9 ~4 snow []
fill ~-4 ~5 ~-3 ~4 ~8 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 packed_ice []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 cobblestone_wall []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 air []
setblock ~-6 ~10 ~-5 quartz_block []
setblock ~-6 ~11 ~-5 soul_lantern []
setblock ~-6 ~10 ~5 quartz_block []
setblock ~-6 ~11 ~5 soul_lantern []
setblock ~6 ~10 ~-5 quartz_block []
setblock ~6 ~11 ~-5 soul_lantern []
setblock ~6 ~10 ~5 quartz_block []
setblock ~6 ~11 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x7x3) ---
fill ~-9 ~0 ~-7 ~-9 ~7 ~-7 packed_ice []
fill ~9 ~0 ~7 ~9 ~7 ~7 packed_ice []
setblock ~-9 ~8 ~-7 blue_ice []
setblock ~9 ~8 ~7 blue_ice []
setblock ~2 ~5 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 1 arrow 21
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 3 string 11
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 5 snowball 21
replaceitem block ~-5 ~1 ~3 slot.container 9 iron_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 10 emerald 7
replaceitem block ~-5 ~1 ~3 slot.container 11 flint_and_steel 1
replaceitem block ~-5 ~1 ~3 slot.container 12 lantern 10
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 2
replaceitem block ~-5 ~1 ~3 slot.container 14 cooked_cod 9
loot insert ~-5 ~1 ~3 loot "rsf/ice_plains"
summon spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon stray ~1 ~1 ~1
