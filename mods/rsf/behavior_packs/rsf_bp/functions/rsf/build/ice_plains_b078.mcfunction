# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2126/4224 | 主题内编号: b078/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·下沉祭池图腾柱群 (ice_plains_totem_sunken_ritual_pool)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 packed_ice [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 packed_ice [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 quartz_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 quartz_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_ice []
setblock ~0 ~0 ~0 sea_lantern []

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
fill ~-6 ~1 ~-5 ~6 ~2 ~5 packed_ice []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 snow []
fill ~0 ~1 ~-5 ~0 ~2 ~5 snow []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 chiseled_stone_bricks []
setblock ~-6 ~10 ~-5 soul_lantern []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 chiseled_stone_bricks []
setblock ~-6 ~10 ~5 soul_lantern []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 chiseled_stone_bricks []
setblock ~6 ~10 ~-5 soul_lantern []
fill ~6 ~7 ~5 ~6 ~9 ~5 chiseled_stone_bricks []
setblock ~6 ~10 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~5 ~-7 chiseled_stone_bricks []
setblock ~-8 ~6 ~-7 soul_lantern []
fill ~-8 ~0 ~7 ~-8 ~5 ~7 chiseled_stone_bricks []
setblock ~-8 ~6 ~7 soul_lantern []
fill ~8 ~0 ~-7 ~8 ~5 ~-7 chiseled_stone_bricks []
setblock ~8 ~6 ~-7 soul_lantern []
fill ~8 ~0 ~7 ~8 ~5 ~7 chiseled_stone_bricks []
setblock ~8 ~6 ~7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~-9 ~0 ~-8 ~-9 ~6 ~-8 packed_ice []
fill ~9 ~0 ~8 ~9 ~6 ~8 packed_ice []
setblock ~-9 ~7 ~-8 blue_ice []
setblock ~9 ~7 ~8 blue_ice []
setblock ~0 ~4 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 1 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 3 arrow 21
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 5 string 11
replaceitem block ~-5 ~1 ~3 slot.container 9 flint_and_steel 1
replaceitem block ~-5 ~1 ~3 slot.container 10 lantern 10
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_apple 2
replaceitem block ~-5 ~1 ~3 slot.container 12 cooked_cod 9
replaceitem block ~-5 ~1 ~3 slot.container 13 cooked_salmon 10
replaceitem block ~-5 ~1 ~3 slot.container 14 packed_ice 19
loot insert ~-5 ~1 ~3 loot "rsf/ice_plains"
summon zombie ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon spider ~1 ~1 ~1
summon witch ~0 ~-4 ~0
