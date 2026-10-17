# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0732/4224 | 主题内编号: b092/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·双层重檐供奉宝塔 (taiga_shrine_terrace_pagoda)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 spruce_planks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 spruce_planks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 spruce_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 mossy_stone_bricks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 bone 15
replaceitem block ~2 ~-2 ~3 slot.container 1 arrow 22
replaceitem block ~2 ~-2 ~3 slot.container 2 rotten_flesh 17
replaceitem block ~2 ~-2 ~3 slot.container 3 string 8
replaceitem block ~2 ~-2 ~3 slot.container 4 gunpowder 7
replaceitem block ~2 ~-2 ~3 slot.container 5 rabbit_hide 8
replaceitem block ~2 ~-2 ~3 slot.container 9 sweet_berries 12
replaceitem block ~2 ~-2 ~3 slot.container 10 cooked_rabbit 7
replaceitem block ~2 ~-2 ~3 slot.container 11 cooked_salmon 8
replaceitem block ~2 ~-2 ~3 slot.container 12 spruce_log 19
replaceitem block ~2 ~-2 ~3 slot.container 13 iron_ingot 10
replaceitem block ~2 ~-2 ~3 slot.container 14 coal 17
loot insert ~2 ~-2 ~3 loot "rsf/taiga"
loot insert ~2 ~-2 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~4 ~5 spruce_planks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-5 ~4 ~-6 ~5 ~4 ~6 spruce_slab []
fill ~-3 ~5 ~-4 ~3 ~8 ~4 mossy_stone_bricks []
fill ~-2 ~5 ~-3 ~2 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 spruce_slab []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 mossy_stone_bricks []
fill ~-4 ~11 ~-5 ~4 ~11 ~5 stone_brick_slab []
setblock ~0 ~12 ~0 chiseled_stone_bricks []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~9 ~2 spruce_planks []
fill ~5 ~1 ~-1 ~6 ~8 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~10 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 5x8x5) ---
fill ~-1 ~0 ~-7 ~1 ~0 ~-8 mossy_cobblestone []
setblock ~0 ~1 ~-8 campfire []
fill ~-1 ~1 ~-7 ~-1 ~6 ~-7 spruce_fence []
fill ~1 ~1 ~-7 ~1 ~6 ~-7 spruce_fence []
fill ~-1 ~7 ~-7 ~1 ~7 ~-8 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-3 ~1 ~4 smoker []
setblock ~3 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gunpowder 10
replaceitem block ~-3 ~1 ~4 slot.container 1 rabbit_hide 11
replaceitem block ~-3 ~1 ~4 slot.container 2 leather 12
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 bone 10
replaceitem block ~-3 ~1 ~4 slot.container 5 arrow 17
replaceitem block ~-3 ~1 ~4 slot.container 9 emerald 7
replaceitem block ~-3 ~1 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~-3 ~1 ~4 slot.container 11 campfire 8
replaceitem block ~-3 ~1 ~4 slot.container 12 lantern 4
replaceitem block ~-3 ~1 ~4 slot.container 13 sweet_berries 13
replaceitem block ~-3 ~1 ~4 slot.container 14 cooked_rabbit 8
loot insert ~-3 ~1 ~4 loot "rsf/taiga"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 leather 7
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 bone 13
replaceitem block ~3 ~1 ~4 slot.container 3 arrow 20
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 5 string 14
replaceitem block ~3 ~1 ~4 slot.container 9 emerald 5
replaceitem block ~3 ~1 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 11 campfire 6
replaceitem block ~3 ~1 ~4 slot.container 12 lantern 9
replaceitem block ~3 ~1 ~4 slot.container 13 sweet_berries 18
replaceitem block ~3 ~1 ~4 slot.container 14 cooked_rabbit 6
loot insert ~3 ~1 ~4 loot "rsf/taiga"
loot insert ~3 ~1 ~4 loot "chests/village/village_taiga_house"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
