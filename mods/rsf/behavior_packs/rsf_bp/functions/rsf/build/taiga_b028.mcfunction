# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0668/4224 | 主题内编号: b028/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·重檐挑角古钟楼 (taiga_tower_pagoda_bell)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 2格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log2
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 spruce_planks [] replace air
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 spruce_planks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 spruce_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 spruce_planks []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 ender_pearl 6
replaceitem block ~-2 ~-4 ~3 slot.container 1 bone 15
replaceitem block ~-2 ~-4 ~3 slot.container 2 arrow 22
replaceitem block ~-2 ~-4 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~-2 ~-4 ~3 slot.container 4 string 8
replaceitem block ~-2 ~-4 ~3 slot.container 5 gunpowder 7
replaceitem block ~-2 ~-4 ~3 slot.container 9 cooked_rabbit 8
replaceitem block ~-2 ~-4 ~3 slot.container 10 cooked_salmon 9
replaceitem block ~-2 ~-4 ~3 slot.container 11 spruce_log 20
replaceitem block ~-2 ~-4 ~3 slot.container 12 iron_ingot 11
replaceitem block ~-2 ~-4 ~3 slot.container 13 coal 18
replaceitem block ~-2 ~-4 ~3 slot.container 14 emerald 3
loot insert ~-2 ~-4 ~3 loot "rsf/taiga"
loot insert ~-2 ~-4 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~4 ~5 spruce_planks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-5 ~4 ~-6 ~5 ~4 ~6 spruce_slab []
fill ~-3 ~5 ~-4 ~3 ~9 ~4 mossy_stone_bricks []
fill ~-2 ~5 ~-3 ~2 ~8 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 spruce_slab []
fill ~-3 ~10 ~-4 ~3 ~11 ~4 mossy_stone_bricks []
fill ~-4 ~12 ~-5 ~4 ~12 ~5 stone_brick_slab []
setblock ~0 ~13 ~0 chiseled_stone_bricks []
setblock ~0 ~14 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~3 ~-7 spruce_log []
setblock ~-6 ~4 ~-7 lantern []
fill ~-6 ~0 ~7 ~-6 ~3 ~7 spruce_log []
setblock ~-6 ~4 ~7 lantern []
fill ~6 ~0 ~-7 ~6 ~3 ~-7 spruce_log []
setblock ~6 ~4 ~-7 lantern []
fill ~6 ~0 ~7 ~6 ~3 ~7 spruce_log []
setblock ~6 ~4 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 5x7x6) ---
fill ~-1 ~0 ~-6 ~1 ~0 ~-7 mossy_cobblestone []
setblock ~0 ~1 ~-7 campfire []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 spruce_fence []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 spruce_fence []
fill ~-1 ~8 ~-6 ~1 ~8 ~-7 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gunpowder 10
replaceitem block ~-3 ~1 ~4 slot.container 1 rabbit_hide 11
replaceitem block ~-3 ~1 ~4 slot.container 2 leather 12
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 bone 10
replaceitem block ~-3 ~1 ~4 slot.container 5 arrow 17
replaceitem block ~-3 ~1 ~4 slot.container 9 iron_ingot 9
replaceitem block ~-3 ~1 ~4 slot.container 10 coal 16
replaceitem block ~-3 ~1 ~4 slot.container 11 emerald 8
replaceitem block ~-3 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~-3 ~1 ~4 slot.container 13 campfire 2
replaceitem block ~-3 ~1 ~4 slot.container 14 lantern 5
loot insert ~-3 ~1 ~4 loot "rsf/taiga"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 leather 7
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 bone 13
replaceitem block ~3 ~1 ~4 slot.container 3 arrow 20
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 5 string 14
replaceitem block ~3 ~1 ~4 slot.container 9 iron_ingot 7
replaceitem block ~3 ~1 ~4 slot.container 10 coal 14
replaceitem block ~3 ~1 ~4 slot.container 11 emerald 6
replaceitem block ~3 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 13 campfire 7
replaceitem block ~3 ~1 ~4 slot.container 14 lantern 10
loot insert ~3 ~1 ~4 loot "rsf/taiga"
loot insert ~3 ~1 ~4 loot "chests/village/village_taiga_house"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon fox ~0 ~2 ~0
