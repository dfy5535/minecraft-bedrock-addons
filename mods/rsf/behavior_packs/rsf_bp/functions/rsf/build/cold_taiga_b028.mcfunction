# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0796/4224 | 主题内编号: b028/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·重檐挑角古钟楼 (cold_taiga_tower_pagoda_bell)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 3格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_planks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 packed_ice []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~5 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~4 ~3 air []
fill ~-6 ~5 ~-5 ~6 ~5 ~5 stone_brick_slab []
fill ~-4 ~6 ~-3 ~4 ~10 ~3 deepslate_bricks []
fill ~-3 ~6 ~-2 ~3 ~9 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~6 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~10 ~-5 ~6 ~10 ~5 stone_brick_slab []
fill ~-4 ~11 ~-3 ~4 ~12 ~3 deepslate_bricks []
fill ~-5 ~13 ~-4 ~5 ~13 ~4 deepslate_brick_slab []
setblock ~0 ~14 ~0 chiseled_stone_bricks []
setblock ~0 ~15 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 stripped_spruce_log []
setblock ~-7 ~5 ~-6 campfire []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 stripped_spruce_log []
setblock ~-7 ~5 ~6 campfire []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 stripped_spruce_log []
setblock ~7 ~5 ~-6 campfire []
fill ~7 ~0 ~6 ~7 ~4 ~6 stripped_spruce_log []
setblock ~7 ~5 ~6 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~-5 ~0 ~5 ~-6 ~14 ~6 cobblestone []
setblock ~-5 ~1 ~5 campfire []
setblock ~-5 ~15 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 gunpowder 10
replaceitem block ~-4 ~1 ~2 slot.container 1 leather 13
replaceitem block ~-4 ~1 ~2 slot.container 2 rabbit_foot 8
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 4 bone 12
replaceitem block ~-4 ~1 ~2 slot.container 5 arrow 17
replaceitem block ~-4 ~1 ~2 slot.container 9 campfire 7
replaceitem block ~-4 ~1 ~2 slot.container 10 lantern 10
replaceitem block ~-4 ~1 ~2 slot.container 11 cooked_mutton 8
replaceitem block ~-4 ~1 ~2 slot.container 12 sweet_berries 13
replaceitem block ~-4 ~1 ~2 slot.container 13 spruce_log 18
replaceitem block ~-4 ~1 ~2 slot.container 14 coal 19
loot insert ~-4 ~1 ~2 loot "rsf/cold_taiga"
summon wolf ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1
