# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2159/4224 | 主题内编号: b111/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·地下禁忌书库与炼药室 (ice_plains_arcane_sunken_archive)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_ice []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 snow []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-5 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-5 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-5 ~0 campfire []
setblock ~4 ~-5 ~0 campfire []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 snowball 18
replaceitem block ~0 ~-3 ~3 slot.container 1 ender_pearl 5
replaceitem block ~0 ~-3 ~3 slot.container 2 phantom_membrane 6
replaceitem block ~0 ~-3 ~3 slot.container 3 bone 17
replaceitem block ~0 ~-3 ~3 slot.container 4 arrow 26
replaceitem block ~0 ~-3 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-3 ~3 slot.container 9 lantern 6
replaceitem block ~0 ~-3 ~3 slot.container 10 golden_apple 5
replaceitem block ~0 ~-3 ~3 slot.container 11 cooked_cod 12
replaceitem block ~0 ~-3 ~3 slot.container 12 cooked_salmon 13
replaceitem block ~0 ~-3 ~3 slot.container 13 packed_ice 22
replaceitem block ~0 ~-3 ~3 slot.container 14 blue_ice 8
loot insert ~0 ~-3 ~3 loot "rsf/ice_plains"
loot insert ~0 ~-3 ~3 loot "chests/igloo_chest"
setblock ~0 ~-3 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-3 slot.container 0 snowball 16
replaceitem block ~0 ~-3 ~-3 slot.container 1 ender_pearl 3
replaceitem block ~0 ~-3 ~-3 slot.container 2 phantom_membrane 4
replaceitem block ~0 ~-3 ~-3 slot.container 3 bone 15
replaceitem block ~0 ~-3 ~-3 slot.container 4 arrow 24
replaceitem block ~0 ~-3 ~-3 slot.container 5 rotten_flesh 15
replaceitem block ~0 ~-3 ~-3 slot.container 9 lantern 5
replaceitem block ~0 ~-3 ~-3 slot.container 10 golden_apple 4
replaceitem block ~0 ~-3 ~-3 slot.container 11 cooked_cod 11
replaceitem block ~0 ~-3 ~-3 slot.container 12 cooked_salmon 12
replaceitem block ~0 ~-3 ~-3 slot.container 13 packed_ice 21
replaceitem block ~0 ~-3 ~-3 slot.container 14 blue_ice 14
loot insert ~0 ~-3 ~-3 loot "rsf/ice_plains"
loot insert ~0 ~-3 ~-3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 snow []
fill ~0 ~1 ~-5 ~0 ~2 ~5 snow []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 snow []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 blue_ice []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 chiseled_stone_bricks []
setblock ~0 ~11 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 spruce_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x8x5) ---
fill ~-9 ~0 ~-8 ~-9 ~9 ~-8 packed_ice []
fill ~9 ~0 ~8 ~9 ~9 ~8 packed_ice []
setblock ~-9 ~10 ~-8 blue_ice []
setblock ~9 ~10 ~8 blue_ice []
setblock ~-3 ~7 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 phantom_membrane 9
replaceitem block ~5 ~1 ~3 slot.container 1 bone 12
replaceitem block ~5 ~1 ~3 slot.container 2 arrow 21
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 4 string 11
replaceitem block ~5 ~1 ~3 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 9 emerald 6
replaceitem block ~5 ~1 ~3 slot.container 10 flint_and_steel 1
replaceitem block ~5 ~1 ~3 slot.container 11 lantern 9
replaceitem block ~5 ~1 ~3 slot.container 12 golden_apple 8
replaceitem block ~5 ~1 ~3 slot.container 13 cooked_cod 8
replaceitem block ~5 ~1 ~3 slot.container 14 cooked_salmon 9
loot insert ~5 ~1 ~3 loot "rsf/ice_plains"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 arrow 24
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 2 string 14
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 4 snowball 16
replaceitem block ~-5 ~1 ~4 slot.container 5 ender_pearl 3
replaceitem block ~-5 ~1 ~4 slot.container 9 emerald 4
replaceitem block ~-5 ~1 ~4 slot.container 10 flint_and_steel 1
replaceitem block ~-5 ~1 ~4 slot.container 11 lantern 7
replaceitem block ~-5 ~1 ~4 slot.container 12 golden_apple 6
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_cod 13
replaceitem block ~-5 ~1 ~4 slot.container 14 cooked_salmon 14
loot insert ~-5 ~1 ~4 loot "rsf/ice_plains"
loot insert ~-5 ~1 ~4 loot "chests/igloo_chest"
summon witch ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
