# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2153/4224 | 主题内编号: b105/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·满书架奥术附魔书院 (ice_plains_arcane_enchant_library)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 snow [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 snow [] replace water
fill ~-6 ~1 ~-6 ~6 ~10 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 quartz_block []
setblock ~0 ~0 ~0 blue_ice []

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

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-5 ~5 ~8 ~5 snow []
fill ~-4 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-5 ~1 ~-5 ~-5 ~8 ~-5 spruce_log []
fill ~-5 ~1 ~5 ~-5 ~8 ~5 spruce_log []
fill ~5 ~1 ~-5 ~5 ~8 ~-5 spruce_log []
fill ~5 ~1 ~5 ~5 ~8 ~5 spruce_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-5 ~2 ~0 spruce_fence []
setblock ~5 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~9 ~-6 ~-6 ~9 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-6 ~6 ~9 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~10 ~-5 ~-5 ~10 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~10 ~-5 ~5 ~10 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~10 ~-5 ~4 ~10 ~5 stone_brick_slab []
fill ~0 ~11 ~-6 ~0 ~11 ~6 packed_ice []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 packed_ice []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 spruce_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 spruce_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~-8 ~0 ~-8 ~-8 ~8 ~-8 packed_ice []
fill ~8 ~0 ~8 ~8 ~8 ~8 packed_ice []
setblock ~-8 ~9 ~-8 blue_ice []
setblock ~8 ~9 ~8 blue_ice []
setblock ~-1 ~6 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 arrow 21
replaceitem block ~4 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 2 string 11
replaceitem block ~4 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 4 snowball 21
replaceitem block ~4 ~1 ~3 slot.container 5 ender_pearl 8
replaceitem block ~4 ~1 ~3 slot.container 9 lantern 8
replaceitem block ~4 ~1 ~3 slot.container 10 golden_apple 7
replaceitem block ~4 ~1 ~3 slot.container 11 cooked_cod 14
replaceitem block ~4 ~1 ~3 slot.container 12 cooked_salmon 8
replaceitem block ~4 ~1 ~3 slot.container 13 packed_ice 17
replaceitem block ~4 ~1 ~3 slot.container 14 blue_ice 10
loot insert ~4 ~1 ~3 loot "rsf/ice_plains"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 string 14
replaceitem block ~-4 ~1 ~4 slot.container 1 gunpowder 15
replaceitem block ~-4 ~1 ~4 slot.container 2 snowball 16
replaceitem block ~-4 ~1 ~4 slot.container 3 ender_pearl 3
replaceitem block ~-4 ~1 ~4 slot.container 4 phantom_membrane 4
replaceitem block ~-4 ~1 ~4 slot.container 5 bone 15
replaceitem block ~-4 ~1 ~4 slot.container 9 lantern 6
replaceitem block ~-4 ~1 ~4 slot.container 10 golden_apple 5
replaceitem block ~-4 ~1 ~4 slot.container 11 cooked_cod 12
replaceitem block ~-4 ~1 ~4 slot.container 12 cooked_salmon 13
replaceitem block ~-4 ~1 ~4 slot.container 13 packed_ice 22
replaceitem block ~-4 ~1 ~4 slot.container 14 blue_ice 8
loot insert ~-4 ~1 ~4 loot "rsf/ice_plains"
loot insert ~-4 ~1 ~4 loot "chests/igloo_chest"
summon witch ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-2 ~0
