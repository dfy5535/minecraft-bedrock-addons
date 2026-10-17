# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2087/4224 | 主题内编号: b039/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·永恒圣火图腾方尖塔 (ice_plains_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 11x9 | 地上高度 11格 | 地下深度 3格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 stone_bricks [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 stone_bricks [] replace water
fill ~-5 ~1 ~-4 ~5 ~13 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 packed_ice []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 snow []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-3 ~-2 ~3 ~-1 ~2 stone_bricks []
fill ~-2 ~-4 ~-1 ~2 ~-1 ~1 air []
setblock ~-2 ~-4 ~0 blast_furnace []
setblock ~2 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~1 anvil []
fill ~0 ~-4 ~-1 ~0 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-2 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~1 slot.container 0 string 8
replaceitem block ~2 ~-2 ~1 slot.container 1 gunpowder 9
replaceitem block ~2 ~-2 ~1 slot.container 2 snowball 18
replaceitem block ~2 ~-2 ~1 slot.container 3 ender_pearl 5
replaceitem block ~2 ~-2 ~1 slot.container 4 phantom_membrane 6
replaceitem block ~2 ~-2 ~1 slot.container 5 bone 17
replaceitem block ~2 ~-2 ~1 slot.container 9 emerald 3
replaceitem block ~2 ~-2 ~1 slot.container 10 flint_and_steel 1
replaceitem block ~2 ~-2 ~1 slot.container 11 lantern 6
replaceitem block ~2 ~-2 ~1 slot.container 12 golden_apple 5
replaceitem block ~2 ~-2 ~1 slot.container 13 cooked_cod 12
replaceitem block ~2 ~-2 ~1 slot.container 14 cooked_salmon 13
loot insert ~2 ~-2 ~1 loot "rsf/ice_plains"
loot insert ~2 ~-2 ~1 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~11 ~3 stone_bricks []
fill ~-3 ~1 ~-2 ~3 ~10 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~11 ~-3 spruce_log []
fill ~-4 ~1 ~3 ~-4 ~11 ~3 spruce_log []
fill ~4 ~1 ~-3 ~4 ~11 ~-3 spruce_log []
fill ~4 ~1 ~3 ~4 ~11 ~3 spruce_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 spruce_fence []
setblock ~4 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 snow []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 stone_bricks []
fill ~0 ~17 ~0 ~0 ~18 ~0 chiseled_stone_bricks []
setblock ~0 ~19 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-5 ~0 ~3 ~-5 spruce_log []
setblock ~0 ~4 ~-5 diamond_block []
setblock ~0 ~5 ~-5 campfire []
fill ~0 ~0 ~5 ~0 ~3 ~5 spruce_log []
setblock ~0 ~4 ~5 diamond_block []
setblock ~0 ~5 ~5 campfire []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 spruce_log []
setblock ~-6 ~4 ~0 diamond_block []
setblock ~-6 ~5 ~0 campfire []
fill ~6 ~0 ~0 ~6 ~3 ~0 spruce_log []
setblock ~6 ~4 ~0 diamond_block []
setblock ~6 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~-7 ~0 ~-6 ~-7 ~7 ~-6 packed_ice []
fill ~7 ~0 ~6 ~7 ~7 ~6 packed_ice []
setblock ~-7 ~8 ~-6 blue_ice []
setblock ~7 ~8 ~6 blue_ice []
setblock ~0 ~5 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 phantom_membrane 9
replaceitem block ~3 ~1 ~1 slot.container 1 bone 12
replaceitem block ~3 ~1 ~1 slot.container 2 arrow 21
replaceitem block ~3 ~1 ~1 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~1 ~1 slot.container 4 string 11
replaceitem block ~3 ~1 ~1 slot.container 5 gunpowder 12
replaceitem block ~3 ~1 ~1 slot.container 9 cooked_cod 9
replaceitem block ~3 ~1 ~1 slot.container 10 cooked_salmon 10
replaceitem block ~3 ~1 ~1 slot.container 11 packed_ice 19
replaceitem block ~3 ~1 ~1 slot.container 12 blue_ice 12
replaceitem block ~3 ~1 ~1 slot.container 13 coal 21
replaceitem block ~3 ~1 ~1 slot.container 14 iron_ingot 12
loot insert ~3 ~1 ~1 loot "rsf/ice_plains"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 arrow 24
replaceitem block ~-3 ~1 ~2 slot.container 1 rotten_flesh 15
replaceitem block ~-3 ~1 ~2 slot.container 2 string 14
replaceitem block ~-3 ~1 ~2 slot.container 3 gunpowder 15
replaceitem block ~-3 ~1 ~2 slot.container 4 snowball 16
replaceitem block ~-3 ~1 ~2 slot.container 5 ender_pearl 3
replaceitem block ~-3 ~1 ~2 slot.container 9 cooked_cod 14
replaceitem block ~-3 ~1 ~2 slot.container 10 cooked_salmon 8
replaceitem block ~-3 ~1 ~2 slot.container 11 packed_ice 17
replaceitem block ~-3 ~1 ~2 slot.container 12 blue_ice 10
replaceitem block ~-3 ~1 ~2 slot.container 13 coal 19
replaceitem block ~-3 ~1 ~2 slot.container 14 iron_ingot 10
loot insert ~-3 ~1 ~2 loot "rsf/ice_plains"
loot insert ~-3 ~1 ~2 loot "chests/igloo_chest"
summon witch ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-2 ~0
