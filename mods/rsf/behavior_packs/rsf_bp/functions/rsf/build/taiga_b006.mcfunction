# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0646/4224 | 主题内编号: b006/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·重檐飞角四方神龛 (taiga_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 cobblestone [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 cobblestone [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 podzol []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 spruce_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 stone_bricks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~2 ~-2 ~3 slot.container 1 string 8
replaceitem block ~2 ~-2 ~3 slot.container 2 gunpowder 7
replaceitem block ~2 ~-2 ~3 slot.container 3 rabbit_hide 8
replaceitem block ~2 ~-2 ~3 slot.container 4 leather 9
replaceitem block ~2 ~-2 ~3 slot.container 5 ender_pearl 6
replaceitem block ~2 ~-2 ~3 slot.container 9 cooked_salmon 11
replaceitem block ~2 ~-2 ~3 slot.container 10 spruce_log 22
replaceitem block ~2 ~-2 ~3 slot.container 11 iron_ingot 6
replaceitem block ~2 ~-2 ~3 slot.container 12 coal 13
replaceitem block ~2 ~-2 ~3 slot.container 13 emerald 5
replaceitem block ~2 ~-2 ~3 slot.container 14 iron_pickaxe 1
loot insert ~2 ~-2 ~3 loot "rsf/taiga"
loot insert ~2 ~-2 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-5 ~4 ~7 ~5 cobblestone []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 spruce_log []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 spruce_log []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 spruce_log []
fill ~4 ~1 ~5 ~4 ~7 ~5 spruce_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-4 ~2 ~0 spruce_fence []
setblock ~4 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 cobblestone_slab []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 stone_bricks []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 spruce_slab []
setblock ~0 ~11 ~0 bookshelf []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~7 ~2 cobblestone []
fill ~6 ~1 ~-1 ~7 ~6 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~8 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 5x6x4) ---
fill ~-3 ~0 ~-5 ~-1 ~0 ~-6 mossy_cobblestone []
setblock ~-2 ~1 ~-6 campfire []
fill ~-3 ~1 ~-5 ~-3 ~5 ~-5 spruce_fence []
fill ~-1 ~1 ~-5 ~-1 ~5 ~-5 spruce_fence []
fill ~-3 ~6 ~-5 ~-1 ~6 ~-6 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-2 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 leather 12
replaceitem block ~-3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 2 bone 10
replaceitem block ~-3 ~1 ~4 slot.container 3 arrow 17
replaceitem block ~-3 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 5 string 11
replaceitem block ~-3 ~1 ~4 slot.container 9 campfire 4
replaceitem block ~-3 ~1 ~4 slot.container 10 lantern 7
replaceitem block ~-3 ~1 ~4 slot.container 11 sweet_berries 16
replaceitem block ~-3 ~1 ~4 slot.container 12 cooked_rabbit 11
replaceitem block ~-3 ~1 ~4 slot.container 13 cooked_salmon 12
replaceitem block ~-3 ~1 ~4 slot.container 14 spruce_log 16
loot insert ~-3 ~1 ~4 loot "rsf/taiga"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 13
replaceitem block ~3 ~1 ~4 slot.container 1 arrow 20
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 3 string 14
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 13
replaceitem block ~3 ~1 ~4 slot.container 5 rabbit_hide 6
replaceitem block ~3 ~1 ~4 slot.container 9 campfire 2
replaceitem block ~3 ~1 ~4 slot.container 10 lantern 5
replaceitem block ~3 ~1 ~4 slot.container 11 sweet_berries 14
replaceitem block ~3 ~1 ~4 slot.container 12 cooked_rabbit 9
replaceitem block ~3 ~1 ~4 slot.container 13 cooked_salmon 10
replaceitem block ~3 ~1 ~4 slot.container 14 spruce_log 21
loot insert ~3 ~1 ~4 loot "rsf/taiga"
loot insert ~3 ~1 ~4 loot "chests/village/village_taiga_house"
summon pillager ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1
