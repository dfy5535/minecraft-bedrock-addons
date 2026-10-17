# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2156/4224 | 主题内编号: b108/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·十字四相元素秘法殿 (ice_plains_arcane_cross_sanctum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 blue_ice [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 blue_ice [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 snow []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 snow []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 diamond_block []
setblock ~0 ~-6 ~0 soul_lantern []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-3 ~0 slot.container 0 gunpowder 9
replaceitem block ~4 ~-3 ~0 slot.container 1 snowball 18
replaceitem block ~4 ~-3 ~0 slot.container 2 ender_pearl 5
replaceitem block ~4 ~-3 ~0 slot.container 3 phantom_membrane 6
replaceitem block ~4 ~-3 ~0 slot.container 4 bone 17
replaceitem block ~4 ~-3 ~0 slot.container 5 arrow 26
replaceitem block ~4 ~-3 ~0 slot.container 9 blue_ice 13
replaceitem block ~4 ~-3 ~0 slot.container 10 coal 22
replaceitem block ~4 ~-3 ~0 slot.container 11 iron_ingot 6
replaceitem block ~4 ~-3 ~0 slot.container 12 emerald 4
replaceitem block ~4 ~-3 ~0 slot.container 13 flint_and_steel 1
replaceitem block ~4 ~-3 ~0 slot.container 14 lantern 7
loot insert ~4 ~-3 ~0 loot "rsf/ice_plains"
loot insert ~4 ~-3 ~0 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~8 ~5 blue_ice []
fill ~-6 ~1 ~-2 ~6 ~8 ~2 blue_ice []
fill ~-1 ~1 ~-4 ~1 ~7 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~7 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 packed_ice []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 snow []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 diamond_block []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~5 ~-8 chiseled_stone_bricks []
setblock ~-9 ~6 ~-8 soul_lantern []
fill ~-9 ~0 ~8 ~-9 ~5 ~8 chiseled_stone_bricks []
setblock ~-9 ~6 ~8 soul_lantern []
fill ~9 ~0 ~-8 ~9 ~5 ~-8 chiseled_stone_bricks []
setblock ~9 ~6 ~-8 soul_lantern []
fill ~9 ~0 ~8 ~9 ~5 ~8 chiseled_stone_bricks []
setblock ~9 ~6 ~8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~-9 ~0 ~-8 ~-9 ~6 ~-8 packed_ice []
fill ~9 ~0 ~8 ~9 ~6 ~8 packed_ice []
setblock ~-9 ~7 ~-8 blue_ice []
setblock ~9 ~7 ~8 blue_ice []
setblock ~0 ~4 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 1 snowball 21
replaceitem block ~-5 ~1 ~3 slot.container 2 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 3 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 5 arrow 21
replaceitem block ~-5 ~1 ~3 slot.container 9 flint_and_steel 1
replaceitem block ~-5 ~1 ~3 slot.container 10 lantern 5
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_apple 4
replaceitem block ~-5 ~1 ~3 slot.container 12 cooked_cod 11
replaceitem block ~-5 ~1 ~3 slot.container 13 cooked_salmon 12
replaceitem block ~-5 ~1 ~3 slot.container 14 packed_ice 21
loot insert ~-5 ~1 ~3 loot "rsf/ice_plains"
summon zombie ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon spider ~1 ~1 ~1
summon witch ~0 ~-3 ~0
