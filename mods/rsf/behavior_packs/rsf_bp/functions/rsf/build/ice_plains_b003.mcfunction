# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2051/4224 | 主题内编号: b003/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·环柱巨石方尖祭坛 (ice_plains_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x13 | 地上高度 10格 | 地下深度 3格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_ice []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 snow []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 blue_ice []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 snow []
setblock ~0 ~-5 ~0 diamond_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 campfire []
setblock ~2 ~-4 ~0 campfire []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 snowball 18
replaceitem block ~0 ~-2 ~-3 slot.container 1 ender_pearl 5
replaceitem block ~0 ~-2 ~-3 slot.container 2 phantom_membrane 6
replaceitem block ~0 ~-2 ~-3 slot.container 3 bone 17
replaceitem block ~0 ~-2 ~-3 slot.container 4 arrow 26
replaceitem block ~0 ~-2 ~-3 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-2 ~-3 slot.container 9 lantern 7
replaceitem block ~0 ~-2 ~-3 slot.container 10 golden_apple 6
replaceitem block ~0 ~-2 ~-3 slot.container 11 cooked_cod 13
replaceitem block ~0 ~-2 ~-3 slot.container 12 cooked_salmon 14
replaceitem block ~0 ~-2 ~-3 slot.container 13 packed_ice 16
replaceitem block ~0 ~-2 ~-3 slot.container 14 blue_ice 9
loot insert ~0 ~-2 ~-3 loot "rsf/ice_plains"
loot insert ~0 ~-2 ~-3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~10 ~-5 ~6 ~10 ~5 snow []
fill ~-6 ~1 ~-5 ~-6 ~9 ~-5 spruce_log []
fill ~-6 ~1 ~5 ~-6 ~9 ~5 spruce_log []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 spruce_log []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 spruce_log []
fill ~-2 ~1 ~-5 ~-2 ~9 ~-5 spruce_log []
fill ~-2 ~1 ~5 ~-2 ~9 ~5 spruce_log []
fill ~0 ~1 ~-5 ~0 ~9 ~-5 spruce_log []
fill ~0 ~1 ~5 ~0 ~9 ~5 spruce_log []
fill ~2 ~1 ~-5 ~2 ~9 ~-5 spruce_log []
fill ~2 ~1 ~5 ~2 ~9 ~5 spruce_log []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 spruce_log []
fill ~4 ~1 ~5 ~4 ~9 ~5 spruce_log []
fill ~6 ~1 ~-5 ~6 ~9 ~-5 spruce_log []
fill ~6 ~1 ~5 ~6 ~9 ~5 spruce_log []
fill ~-6 ~1 ~-3 ~-6 ~9 ~-3 spruce_log []
fill ~6 ~1 ~-3 ~6 ~9 ~-3 spruce_log []
fill ~-6 ~1 ~-1 ~-6 ~9 ~-1 spruce_log []
fill ~6 ~1 ~-1 ~6 ~9 ~-1 spruce_log []
fill ~-6 ~1 ~1 ~-6 ~9 ~1 spruce_log []
fill ~6 ~1 ~1 ~6 ~9 ~1 spruce_log []
fill ~-6 ~1 ~3 ~-6 ~9 ~3 spruce_log []
fill ~6 ~1 ~3 ~6 ~9 ~3 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 snow []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 stone_bricks []
fill ~0 ~16 ~0 ~0 ~17 ~0 chiseled_stone_bricks []
setblock ~0 ~18 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 spruce_log []
setblock ~0 ~4 ~-7 diamond_block []
setblock ~0 ~5 ~-7 campfire []
fill ~0 ~0 ~7 ~0 ~3 ~7 spruce_log []
setblock ~0 ~4 ~7 diamond_block []
setblock ~0 ~5 ~7 campfire []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 spruce_log []
setblock ~-8 ~4 ~0 diamond_block []
setblock ~-8 ~5 ~0 campfire []
fill ~8 ~0 ~0 ~8 ~3 ~0 spruce_log []
setblock ~8 ~4 ~0 diamond_block []
setblock ~8 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~-9 ~0 ~-8 ~-9 ~6 ~-8 packed_ice []
fill ~9 ~0 ~8 ~9 ~6 ~8 packed_ice []
setblock ~-9 ~7 ~-8 blue_ice []
setblock ~9 ~7 ~8 blue_ice []
setblock ~-3 ~4 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 string 11
replaceitem block ~5 ~1 ~3 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 2 snowball 21
replaceitem block ~5 ~1 ~3 slot.container 3 ender_pearl 8
replaceitem block ~5 ~1 ~3 slot.container 4 phantom_membrane 9
replaceitem block ~5 ~1 ~3 slot.container 5 bone 12
replaceitem block ~5 ~1 ~3 slot.container 9 packed_ice 16
replaceitem block ~5 ~1 ~3 slot.container 10 blue_ice 9
replaceitem block ~5 ~1 ~3 slot.container 11 coal 18
replaceitem block ~5 ~1 ~3 slot.container 12 iron_ingot 9
replaceitem block ~5 ~1 ~3 slot.container 13 emerald 7
replaceitem block ~5 ~1 ~3 slot.container 14 flint_and_steel 1
loot insert ~5 ~1 ~3 loot "rsf/ice_plains"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 snowball 16
replaceitem block ~-5 ~1 ~4 slot.container 1 ender_pearl 3
replaceitem block ~-5 ~1 ~4 slot.container 2 phantom_membrane 4
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 4 arrow 24
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 9 packed_ice 21
replaceitem block ~-5 ~1 ~4 slot.container 10 blue_ice 14
replaceitem block ~-5 ~1 ~4 slot.container 11 coal 16
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_ingot 7
replaceitem block ~-5 ~1 ~4 slot.container 13 emerald 5
replaceitem block ~-5 ~1 ~4 slot.container 14 flint_and_steel 1
loot insert ~-5 ~1 ~4 loot "rsf/ice_plains"
loot insert ~-5 ~1 ~4 loot "chests/igloo_chest"
summon witch ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-2 ~0
