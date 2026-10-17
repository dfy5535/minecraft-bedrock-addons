# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2070/4224 | 主题内编号: b022/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·廊柱书库秘藏室 (ice_plains_chamber_pillared_archive)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 packed_ice [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 packed_ice [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 quartz_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 quartz_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_ice []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-3 ~3 slot.container 1 string 8
replaceitem block ~4 ~-3 ~3 slot.container 2 gunpowder 9
replaceitem block ~4 ~-3 ~3 slot.container 3 snowball 18
replaceitem block ~4 ~-3 ~3 slot.container 4 ender_pearl 5
replaceitem block ~4 ~-3 ~3 slot.container 5 phantom_membrane 6
replaceitem block ~4 ~-3 ~3 slot.container 9 blue_ice 9
replaceitem block ~4 ~-3 ~3 slot.container 10 coal 18
replaceitem block ~4 ~-3 ~3 slot.container 11 iron_ingot 9
replaceitem block ~4 ~-3 ~3 slot.container 12 emerald 7
replaceitem block ~4 ~-3 ~3 slot.container 13 flint_and_steel 1
replaceitem block ~4 ~-3 ~3 slot.container 14 lantern 10
loot insert ~4 ~-3 ~3 loot "rsf/ice_plains"
loot insert ~4 ~-3 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 snow []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 chiseled_stone_bricks []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 chiseled_stone_bricks []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 chiseled_stone_bricks []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 chiseled_stone_bricks []
fill ~-2 ~1 ~-5 ~-2 ~7 ~-5 chiseled_stone_bricks []
fill ~-2 ~1 ~5 ~-2 ~7 ~5 chiseled_stone_bricks []
fill ~0 ~1 ~-5 ~0 ~7 ~-5 chiseled_stone_bricks []
fill ~0 ~1 ~5 ~0 ~7 ~5 chiseled_stone_bricks []
fill ~2 ~1 ~-5 ~2 ~7 ~-5 chiseled_stone_bricks []
fill ~2 ~1 ~5 ~2 ~7 ~5 chiseled_stone_bricks []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 chiseled_stone_bricks []
fill ~4 ~1 ~5 ~4 ~7 ~5 chiseled_stone_bricks []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 chiseled_stone_bricks []
fill ~6 ~1 ~5 ~6 ~7 ~5 chiseled_stone_bricks []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 chiseled_stone_bricks []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 chiseled_stone_bricks []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 chiseled_stone_bricks []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 chiseled_stone_bricks []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 chiseled_stone_bricks []
fill ~6 ~1 ~1 ~6 ~7 ~1 chiseled_stone_bricks []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 chiseled_stone_bricks []
fill ~6 ~1 ~3 ~6 ~7 ~3 chiseled_stone_bricks []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 snow []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 sea_lantern []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 spruce_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x6x6) ---
fill ~-9 ~0 ~-6 ~-9 ~10 ~-6 packed_ice []
fill ~9 ~0 ~6 ~9 ~10 ~6 packed_ice []
setblock ~-9 ~11 ~-6 blue_ice []
setblock ~9 ~11 ~6 blue_ice []
setblock ~-2 ~8 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~4 bookshelf []
setblock ~5 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 1 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 3 arrow 21
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 5 string 11
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 7
replaceitem block ~-5 ~1 ~3 slot.container 10 cooked_cod 14
replaceitem block ~-5 ~1 ~3 slot.container 11 cooked_salmon 8
replaceitem block ~-5 ~1 ~3 slot.container 12 packed_ice 17
replaceitem block ~-5 ~1 ~3 slot.container 13 blue_ice 10
replaceitem block ~-5 ~1 ~3 slot.container 14 coal 19
loot insert ~-5 ~1 ~3 loot "rsf/ice_plains"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
