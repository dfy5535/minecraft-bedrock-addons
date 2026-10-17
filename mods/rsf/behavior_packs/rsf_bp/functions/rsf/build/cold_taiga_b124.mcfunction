# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0892/4224 | 主题内编号: b124/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·三层重檐帝王阁楼与秘库 (cold_taiga_grand_pagoda_imperial)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x15 | 地上高度 10格 | 地下深度 5格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~14 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~14 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~14 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~14 ~8 air [] replace log2
fill ~-7 ~-6 ~-7 ~7 ~-1 ~7 stone_bricks [] replace air
fill ~-7 ~-6 ~-7 ~7 ~-1 ~7 stone_bricks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 spruce_planks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 deepslate_bricks []
fill ~-4 ~-6 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-4 ~4 slot.container 0 bone 17
replaceitem block ~4 ~-4 ~4 slot.container 1 arrow 22
replaceitem block ~4 ~-4 ~4 slot.container 2 rotten_flesh 17
replaceitem block ~4 ~-4 ~4 slot.container 3 string 8
replaceitem block ~4 ~-4 ~4 slot.container 4 gunpowder 7
replaceitem block ~4 ~-4 ~4 slot.container 5 leather 10
replaceitem block ~4 ~-4 ~4 slot.container 9 cooked_mutton 14
replaceitem block ~4 ~-4 ~4 slot.container 10 sweet_berries 12
replaceitem block ~4 ~-4 ~4 slot.container 11 spruce_log 17
replaceitem block ~4 ~-4 ~4 slot.container 12 coal 18
replaceitem block ~4 ~-4 ~4 slot.container 13 iron_ingot 9
replaceitem block ~4 ~-4 ~4 slot.container 14 leather_boots 1
loot insert ~4 ~-4 ~4 loot "rsf/cold_taiga"
loot insert ~4 ~-4 ~4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-6 ~6 ~5 ~6 stone_bricks []
fill ~-5 ~1 ~-5 ~5 ~4 ~5 air []
fill ~-7 ~5 ~-7 ~7 ~5 ~7 stone_brick_slab []
fill ~-5 ~6 ~-5 ~5 ~10 ~5 deepslate_bricks []
fill ~-4 ~6 ~-4 ~4 ~9 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~6 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~10 ~-7 ~7 ~10 ~7 stone_brick_slab []
fill ~-5 ~11 ~-5 ~5 ~12 ~5 deepslate_bricks []
fill ~-6 ~13 ~-6 ~6 ~13 ~6 deepslate_brick_slab []
setblock ~0 ~14 ~0 chiseled_stone_bricks []
setblock ~0 ~15 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~4 ~-8 stripped_spruce_log []
setblock ~-8 ~5 ~-8 campfire []
fill ~-8 ~0 ~8 ~-8 ~4 ~8 stripped_spruce_log []
setblock ~-8 ~5 ~8 campfire []
fill ~8 ~0 ~-8 ~8 ~4 ~-8 stripped_spruce_log []
setblock ~8 ~5 ~-8 campfire []
fill ~8 ~0 ~8 ~8 ~4 ~8 stripped_spruce_log []
setblock ~8 ~5 ~8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x9x3) ---
fill ~-6 ~0 ~7 ~-7 ~15 ~8 cobblestone []
setblock ~-6 ~1 ~7 campfire []
setblock ~-6 ~16 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 10
replaceitem block ~-5 ~1 ~4 slot.container 1 leather 13
replaceitem block ~-5 ~1 ~4 slot.container 2 rabbit_foot 8
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 5 arrow 17
replaceitem block ~-5 ~1 ~4 slot.container 9 golden_apple 4
replaceitem block ~-5 ~1 ~4 slot.container 10 flint_and_steel 1
replaceitem block ~-5 ~1 ~4 slot.container 11 campfire 7
replaceitem block ~-5 ~1 ~4 slot.container 12 lantern 10
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_mutton 8
replaceitem block ~-5 ~1 ~4 slot.container 14 sweet_berries 13
loot insert ~-5 ~1 ~4 loot "rsf/cold_taiga"
summon wolf ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1
