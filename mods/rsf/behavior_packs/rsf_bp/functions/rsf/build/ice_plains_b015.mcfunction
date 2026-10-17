# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2063/4224 | 主题内编号: b015/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·竖井阶梯深渊地牢 (ice_plains_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 5格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_ice []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 snow []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~2 campfire []
setblock ~3 ~-6 ~-2 campfire []
setblock ~3 ~-4 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~2 slot.container 0 arrow 26
replaceitem block ~3 ~-4 ~2 slot.container 1 rotten_flesh 17
replaceitem block ~3 ~-4 ~2 slot.container 2 string 8
replaceitem block ~3 ~-4 ~2 slot.container 3 gunpowder 9
replaceitem block ~3 ~-4 ~2 slot.container 4 snowball 18
replaceitem block ~3 ~-4 ~2 slot.container 5 ender_pearl 5
replaceitem block ~3 ~-4 ~2 slot.container 9 cooked_cod 8
replaceitem block ~3 ~-4 ~2 slot.container 10 cooked_salmon 9
replaceitem block ~3 ~-4 ~2 slot.container 11 packed_ice 18
replaceitem block ~3 ~-4 ~2 slot.container 12 blue_ice 11
replaceitem block ~3 ~-4 ~2 slot.container 13 coal 20
replaceitem block ~3 ~-4 ~2 slot.container 14 iron_ingot 11
loot insert ~3 ~-4 ~2 loot "rsf/ice_plains"
loot insert ~3 ~-4 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 stone_bricks []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 snow []
fill ~-3 ~5 ~-2 ~3 ~8 ~2 blue_ice []
fill ~-3 ~1 ~-2 ~3 ~7 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 spruce_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 snow []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 stone_bricks []
fill ~0 ~14 ~0 ~0 ~15 ~0 chiseled_stone_bricks []
setblock ~0 ~16 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 spruce_log []
setblock ~-7 ~6 ~-6 campfire []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 spruce_log []
setblock ~-7 ~6 ~6 campfire []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 spruce_log []
setblock ~7 ~6 ~-6 campfire []
fill ~7 ~0 ~6 ~7 ~5 ~6 spruce_log []
setblock ~7 ~6 ~6 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~-8 ~0 ~-7 ~-8 ~8 ~-7 packed_ice []
fill ~8 ~0 ~7 ~8 ~8 ~7 packed_ice []
setblock ~-8 ~9 ~-7 blue_ice []
setblock ~8 ~9 ~7 blue_ice []
setblock ~-1 ~6 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 phantom_membrane 9
replaceitem block ~4 ~1 ~2 slot.container 1 bone 12
replaceitem block ~4 ~1 ~2 slot.container 2 arrow 21
replaceitem block ~4 ~1 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 4 string 11
replaceitem block ~4 ~1 ~2 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~2 slot.container 9 lantern 9
replaceitem block ~4 ~1 ~2 slot.container 10 golden_apple 8
replaceitem block ~4 ~1 ~2 slot.container 11 cooked_cod 8
replaceitem block ~4 ~1 ~2 slot.container 12 cooked_salmon 9
replaceitem block ~4 ~1 ~2 slot.container 13 packed_ice 18
replaceitem block ~4 ~1 ~2 slot.container 14 blue_ice 11
loot insert ~4 ~1 ~2 loot "rsf/ice_plains"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 arrow 24
replaceitem block ~-4 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-4 ~1 ~3 slot.container 2 string 14
replaceitem block ~-4 ~1 ~3 slot.container 3 gunpowder 15
replaceitem block ~-4 ~1 ~3 slot.container 4 snowball 16
replaceitem block ~-4 ~1 ~3 slot.container 5 ender_pearl 3
replaceitem block ~-4 ~1 ~3 slot.container 9 lantern 7
replaceitem block ~-4 ~1 ~3 slot.container 10 golden_apple 6
replaceitem block ~-4 ~1 ~3 slot.container 11 cooked_cod 13
replaceitem block ~-4 ~1 ~3 slot.container 12 cooked_salmon 14
replaceitem block ~-4 ~1 ~3 slot.container 13 packed_ice 16
replaceitem block ~-4 ~1 ~3 slot.container 14 blue_ice 9
loot insert ~-4 ~1 ~3 loot "rsf/ice_plains"
loot insert ~-4 ~1 ~3 loot "chests/igloo_chest"
summon witch ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-4 ~0
