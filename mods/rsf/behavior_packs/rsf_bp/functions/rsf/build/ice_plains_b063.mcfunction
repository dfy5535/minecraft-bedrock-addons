# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2111/4224 | 主题内编号: b063/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·方尖碑镇压古墓穴 (ice_plains_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~12 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_ice []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 snow []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-3 ~1 ~-2 ~3 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 campfire []
setblock ~3 ~-5 ~0 campfire []
setblock ~0 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~2 slot.container 0 snowball 18
replaceitem block ~0 ~-3 ~2 slot.container 1 ender_pearl 5
replaceitem block ~0 ~-3 ~2 slot.container 2 phantom_membrane 6
replaceitem block ~0 ~-3 ~2 slot.container 3 bone 17
replaceitem block ~0 ~-3 ~2 slot.container 4 arrow 26
replaceitem block ~0 ~-3 ~2 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-3 ~2 slot.container 9 coal 19
replaceitem block ~0 ~-3 ~2 slot.container 10 iron_ingot 10
replaceitem block ~0 ~-3 ~2 slot.container 11 emerald 8
replaceitem block ~0 ~-3 ~2 slot.container 12 flint_and_steel 1
replaceitem block ~0 ~-3 ~2 slot.container 13 lantern 4
replaceitem block ~0 ~-3 ~2 slot.container 14 golden_apple 3
loot insert ~0 ~-3 ~2 loot "rsf/ice_plains"
loot insert ~0 ~-3 ~2 loot "chests/igloo_chest"
setblock ~0 ~-3 ~-2 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-2 slot.container 0 snowball 16
replaceitem block ~0 ~-3 ~-2 slot.container 1 ender_pearl 3
replaceitem block ~0 ~-3 ~-2 slot.container 2 phantom_membrane 4
replaceitem block ~0 ~-3 ~-2 slot.container 3 bone 15
replaceitem block ~0 ~-3 ~-2 slot.container 4 arrow 24
replaceitem block ~0 ~-3 ~-2 slot.container 5 rotten_flesh 15
replaceitem block ~0 ~-3 ~-2 slot.container 9 coal 18
replaceitem block ~0 ~-3 ~-2 slot.container 10 iron_ingot 9
replaceitem block ~0 ~-3 ~-2 slot.container 11 emerald 7
replaceitem block ~0 ~-3 ~-2 slot.container 12 flint_and_steel 1
replaceitem block ~0 ~-3 ~-2 slot.container 13 lantern 10
replaceitem block ~0 ~-3 ~-2 slot.container 14 golden_apple 2
loot insert ~0 ~-3 ~-2 loot "rsf/ice_plains"
loot insert ~0 ~-3 ~-2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~10 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~9 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~11 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~11 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~11 ~4 air []
fill ~5 ~1 ~4 ~5 ~11 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~10 ~-3 spruce_log []
fill ~4 ~1 ~-3 ~4 ~10 ~-3 spruce_log []
fill ~-4 ~1 ~3 ~-4 ~10 ~3 spruce_log []
fill ~4 ~1 ~3 ~4 ~10 ~3 spruce_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 snow []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 stone_bricks []
fill ~0 ~16 ~0 ~0 ~17 ~0 chiseled_stone_bricks []
setblock ~0 ~18 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~9 ~-2 spruce_log []
fill ~-6 ~0 ~2 ~-6 ~9 ~2 spruce_log []
fill ~6 ~0 ~-2 ~6 ~9 ~-2 spruce_log []
fill ~6 ~0 ~2 ~6 ~9 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-8 ~0 ~-7 ~-8 ~6 ~-7 packed_ice []
fill ~8 ~0 ~7 ~8 ~6 ~7 packed_ice []
setblock ~-8 ~7 ~-7 blue_ice []
setblock ~8 ~7 ~7 blue_ice []
setblock ~2 ~4 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 phantom_membrane 9
replaceitem block ~4 ~1 ~2 slot.container 1 bone 12
replaceitem block ~4 ~1 ~2 slot.container 2 arrow 21
replaceitem block ~4 ~1 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 4 string 11
replaceitem block ~4 ~1 ~2 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~2 slot.container 9 packed_ice 20
replaceitem block ~4 ~1 ~2 slot.container 10 blue_ice 13
replaceitem block ~4 ~1 ~2 slot.container 11 coal 22
replaceitem block ~4 ~1 ~2 slot.container 12 iron_ingot 6
replaceitem block ~4 ~1 ~2 slot.container 13 emerald 4
replaceitem block ~4 ~1 ~2 slot.container 14 flint_and_steel 1
loot insert ~4 ~1 ~2 loot "rsf/ice_plains"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 arrow 24
replaceitem block ~-4 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-4 ~1 ~3 slot.container 2 string 14
replaceitem block ~-4 ~1 ~3 slot.container 3 gunpowder 15
replaceitem block ~-4 ~1 ~3 slot.container 4 snowball 16
replaceitem block ~-4 ~1 ~3 slot.container 5 ender_pearl 3
replaceitem block ~-4 ~1 ~3 slot.container 9 packed_ice 18
replaceitem block ~-4 ~1 ~3 slot.container 10 blue_ice 11
replaceitem block ~-4 ~1 ~3 slot.container 11 coal 20
replaceitem block ~-4 ~1 ~3 slot.container 12 iron_ingot 11
replaceitem block ~-4 ~1 ~3 slot.container 13 emerald 9
replaceitem block ~-4 ~1 ~3 slot.container 14 flint_and_steel 1
loot insert ~-4 ~1 ~3 loot "rsf/ice_plains"
loot insert ~-4 ~1 ~3 loot "chests/igloo_chest"
summon witch ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
