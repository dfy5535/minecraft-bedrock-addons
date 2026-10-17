# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2050/4224 | 主题内编号: b002/128
# 地形主题 #17: 雪原、冰山与冰刺之地 (ice_plains) —— 带浮冰穹顶与蓝冰折射棱柱塔
# 建筑名称: 极地冰刺系·十字拱门祈愿圣殿 (ice_plains_altar_cross_sanctuary)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: ice_plains, ice_plains_spikes, ice_mountains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 packed_ice [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 packed_ice [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 quartz_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 quartz_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_ice []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 snow []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~8 ~5 packed_ice []
fill ~-6 ~1 ~-2 ~6 ~8 ~2 packed_ice []
fill ~-1 ~1 ~-4 ~1 ~7 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~7 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 snow []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 sea_lantern []
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

# --- [阶段 5.5] 地形专属标志性结构 (ice_plains 独有建筑构件 | 几何特征参数 9x7x6) ---
fill ~-9 ~0 ~-7 ~-9 ~10 ~-7 packed_ice []
fill ~9 ~0 ~7 ~9 ~10 ~7 packed_ice []
setblock ~-9 ~11 ~-7 blue_ice []
setblock ~9 ~11 ~7 blue_ice []
setblock ~2 ~8 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 1 string 11
replaceitem block ~-5 ~1 ~3 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 3 snowball 21
replaceitem block ~-5 ~1 ~3 slot.container 4 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 5 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 8
replaceitem block ~-5 ~1 ~3 slot.container 10 cooked_cod 8
replaceitem block ~-5 ~1 ~3 slot.container 11 cooked_salmon 9
replaceitem block ~-5 ~1 ~3 slot.container 12 packed_ice 18
replaceitem block ~-5 ~1 ~3 slot.container 13 blue_ice 11
replaceitem block ~-5 ~1 ~3 slot.container 14 coal 20
loot insert ~-5 ~1 ~3 loot "rsf/ice_plains"
summon spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon stray ~1 ~1 ~1
