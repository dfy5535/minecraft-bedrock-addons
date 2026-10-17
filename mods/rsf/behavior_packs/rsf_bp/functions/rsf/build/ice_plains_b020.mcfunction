# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2068/4224 | 主题内编号: b020/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·重甲防爆金库房间 (ice_plains_chamber_fortified_strongbox)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 blue_ice [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 blue_ice [] replace water
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 snow []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 packed_ice []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 packed_ice []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 phantom_membrane 6
replaceitem block ~-3 ~-3 ~2 slot.container 1 bone 17
replaceitem block ~-3 ~-3 ~2 slot.container 2 arrow 26
replaceitem block ~-3 ~-3 ~2 slot.container 3 rotten_flesh 17
replaceitem block ~-3 ~-3 ~2 slot.container 4 string 8
replaceitem block ~-3 ~-3 ~2 slot.container 5 gunpowder 9
replaceitem block ~-3 ~-3 ~2 slot.container 9 coal 19
replaceitem block ~-3 ~-3 ~2 slot.container 10 iron_ingot 10
replaceitem block ~-3 ~-3 ~2 slot.container 11 emerald 8
replaceitem block ~-3 ~-3 ~2 slot.container 12 flint_and_steel 1
replaceitem block ~-3 ~-3 ~2 slot.container 13 lantern 4
replaceitem block ~-3 ~-3 ~2 slot.container 14 golden_apple 3
loot insert ~-3 ~-3 ~2 loot "rsf/ice_plains"
loot insert ~-3 ~-3 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 blue_ice []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-5 ~1 ~-4 ~-4 ~9 ~-3 packed_ice []
setblock ~-5 ~10 ~-4 soul_lantern []
fill ~-5 ~1 ~3 ~-4 ~9 ~4 packed_ice []
setblock ~-5 ~10 ~3 soul_lantern []
fill ~4 ~1 ~-4 ~5 ~9 ~-3 packed_ice []
setblock ~4 ~10 ~-4 soul_lantern []
fill ~4 ~1 ~3 ~5 ~9 ~4 packed_ice []
setblock ~4 ~10 ~3 soul_lantern []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 packed_ice []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 cobblestone_wall []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 air []
setblock ~-5 ~8 ~-4 quartz_block []
setblock ~-5 ~9 ~-4 soul_lantern []
setblock ~-5 ~8 ~4 quartz_block []
setblock ~-5 ~9 ~4 soul_lantern []
setblock ~5 ~8 ~-4 quartz_block []
setblock ~5 ~9 ~-4 soul_lantern []
setblock ~5 ~8 ~4 quartz_block []
setblock ~5 ~9 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~6 ~-2 quartz_block []
fill ~-6 ~0 ~2 ~-6 ~6 ~2 quartz_block []
fill ~6 ~0 ~-2 ~6 ~6 ~-2 quartz_block []
fill ~6 ~0 ~2 ~6 ~6 ~2 quartz_block []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~-8 ~0 ~-6 ~-8 ~8 ~-6 packed_ice []
fill ~8 ~0 ~6 ~8 ~8 ~6 packed_ice []
setblock ~-8 ~9 ~-6 blue_ice []
setblock ~8 ~9 ~6 blue_ice []
setblock ~-1 ~6 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~3 smithing_table []
setblock ~0 ~1 ~3 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 1 snowball 21
replaceitem block ~-4 ~1 ~2 slot.container 2 ender_pearl 8
replaceitem block ~-4 ~1 ~2 slot.container 3 phantom_membrane 9
replaceitem block ~-4 ~1 ~2 slot.container 4 bone 12
replaceitem block ~-4 ~1 ~2 slot.container 5 arrow 21
replaceitem block ~-4 ~1 ~2 slot.container 9 blue_ice 11
replaceitem block ~-4 ~1 ~2 slot.container 10 coal 20
replaceitem block ~-4 ~1 ~2 slot.container 11 iron_ingot 11
replaceitem block ~-4 ~1 ~2 slot.container 12 emerald 9
replaceitem block ~-4 ~1 ~2 slot.container 13 flint_and_steel 1
replaceitem block ~-4 ~1 ~2 slot.container 14 lantern 5
loot insert ~-4 ~1 ~2 loot "rsf/ice_plains"
summon spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon stray ~1 ~1 ~1
