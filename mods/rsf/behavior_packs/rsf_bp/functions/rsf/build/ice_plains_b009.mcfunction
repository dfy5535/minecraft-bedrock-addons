# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2057/4224 | 主题内编号: b009/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·铁栏双室地下死牢 (ice_plains_dungeon_iron_prison)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 snow [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 snow [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 quartz_block []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 snow []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 lantern []
setblock ~4 ~-5 ~-3 lantern []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 string 8
replaceitem block ~4 ~-3 ~3 slot.container 1 gunpowder 9
replaceitem block ~4 ~-3 ~3 slot.container 2 snowball 18
replaceitem block ~4 ~-3 ~3 slot.container 3 ender_pearl 5
replaceitem block ~4 ~-3 ~3 slot.container 4 phantom_membrane 6
replaceitem block ~4 ~-3 ~3 slot.container 5 bone 17
replaceitem block ~4 ~-3 ~3 slot.container 9 packed_ice 17
replaceitem block ~4 ~-3 ~3 slot.container 10 blue_ice 10
replaceitem block ~4 ~-3 ~3 slot.container 11 coal 19
replaceitem block ~4 ~-3 ~3 slot.container 12 iron_ingot 10
replaceitem block ~4 ~-3 ~3 slot.container 13 emerald 8
replaceitem block ~4 ~-3 ~3 slot.container 14 flint_and_steel 1
loot insert ~4 ~-3 ~3 loot "rsf/ice_plains"
loot insert ~4 ~-3 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 snow []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 packed_ice []
fill ~0 ~1 ~-5 ~0 ~2 ~5 packed_ice []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 packed_ice []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 spruce_fence []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 air []
setblock ~-6 ~7 ~-5 spruce_log []
setblock ~-6 ~8 ~-5 lantern []
setblock ~-6 ~7 ~5 spruce_log []
setblock ~-6 ~8 ~5 lantern []
setblock ~6 ~7 ~-5 spruce_log []
setblock ~6 ~8 ~-5 lantern []
setblock ~6 ~7 ~5 spruce_log []
setblock ~6 ~8 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 packed_ice []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 spruce_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 spruce_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~-9 ~0 ~-8 ~-9 ~7 ~-8 packed_ice []
fill ~9 ~0 ~8 ~9 ~7 ~8 packed_ice []
setblock ~-9 ~8 ~-8 blue_ice []
setblock ~9 ~8 ~8 blue_ice []
setblock ~-3 ~5 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 arrow 21
replaceitem block ~5 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 2 string 11
replaceitem block ~5 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 4 snowball 21
replaceitem block ~5 ~1 ~3 slot.container 5 ender_pearl 8
replaceitem block ~5 ~1 ~3 slot.container 9 cooked_cod 14
replaceitem block ~5 ~1 ~3 slot.container 10 cooked_salmon 8
replaceitem block ~5 ~1 ~3 slot.container 11 packed_ice 17
replaceitem block ~5 ~1 ~3 slot.container 12 blue_ice 10
replaceitem block ~5 ~1 ~3 slot.container 13 coal 19
replaceitem block ~5 ~1 ~3 slot.container 14 iron_ingot 10
loot insert ~5 ~1 ~3 loot "rsf/ice_plains"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 string 14
replaceitem block ~-5 ~1 ~4 slot.container 1 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 2 snowball 16
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 3
replaceitem block ~-5 ~1 ~4 slot.container 4 phantom_membrane 4
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 9 cooked_cod 12
replaceitem block ~-5 ~1 ~4 slot.container 10 cooked_salmon 13
replaceitem block ~-5 ~1 ~4 slot.container 11 packed_ice 22
replaceitem block ~-5 ~1 ~4 slot.container 12 blue_ice 8
replaceitem block ~-5 ~1 ~4 slot.container 13 coal 17
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 8
loot insert ~-5 ~1 ~4 loot "rsf/ice_plains"
loot insert ~-5 ~1 ~4 loot "chests/igloo_chest"
summon witch ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
