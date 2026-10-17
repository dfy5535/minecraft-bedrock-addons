# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0390/4224 | 主题内编号: b006/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·重檐飞角四方神龛 (roofed_forest_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 dark_oak_planks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 dark_oak_planks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 dark_oak_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 cracked_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 mossy_stone_bricks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 bone 17
replaceitem block ~2 ~-2 ~3 slot.container 1 spider_eye 6
replaceitem block ~2 ~-2 ~3 slot.container 2 gunpowder 9
replaceitem block ~2 ~-2 ~3 slot.container 3 string 12
replaceitem block ~2 ~-2 ~3 slot.container 4 ender_pearl 6
replaceitem block ~2 ~-2 ~3 slot.container 5 totem_of_undying 5
replaceitem block ~2 ~-2 ~3 slot.container 9 diamond 3
replaceitem block ~2 ~-2 ~3 slot.container 10 experience_bottle 6
replaceitem block ~2 ~-2 ~3 slot.container 11 iron_chestplate 1
replaceitem block ~2 ~-2 ~3 slot.container 12 crossbow 1
replaceitem block ~2 ~-2 ~3 slot.container 13 arrow 29
replaceitem block ~2 ~-2 ~3 slot.container 14 lantern 10
loot insert ~2 ~-2 ~3 loot "rsf/roofed_forest"
loot insert ~2 ~-2 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 dark_oak_planks []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 dark_oak_log []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 dark_oak_log []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 dark_oak_log []
fill ~4 ~1 ~5 ~4 ~8 ~5 dark_oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-4 ~2 ~0 dark_oak_fence []
setblock ~4 ~2 ~0 dark_oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 dark_oak_slab []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 mossy_stone_bricks []
fill ~-4 ~11 ~-5 ~4 ~11 ~5 stone_brick_slab []
setblock ~0 ~12 ~0 chiseled_stone_bricks []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 mossy_stone_bricks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~-5 ~0 ~-2 ~-6 ~3 ~0 iron_bars []
fill ~-5 ~4 ~-2 ~-6 ~4 ~0 dark_oak_slab []
setblock ~-6 ~5 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 1 totem_of_undying 8
replaceitem block ~-3 ~1 ~4 slot.container 2 emerald 6
replaceitem block ~-3 ~1 ~4 slot.container 3 rotten_flesh 13
replaceitem block ~-3 ~1 ~4 slot.container 4 bone 12
replaceitem block ~-3 ~1 ~4 slot.container 5 spider_eye 9
replaceitem block ~-3 ~1 ~4 slot.container 9 dark_oak_log 21
replaceitem block ~-3 ~1 ~4 slot.container 10 golden_apple 8
replaceitem block ~-3 ~1 ~4 slot.container 11 mushroom_stew 1
replaceitem block ~-3 ~1 ~4 slot.container 12 iron_ingot 9
replaceitem block ~-3 ~1 ~4 slot.container 13 diamond 4
replaceitem block ~-3 ~1 ~4 slot.container 14 experience_bottle 7
loot insert ~-3 ~1 ~4 loot "rsf/roofed_forest"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 emerald 9
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 2 bone 15
replaceitem block ~3 ~1 ~4 slot.container 3 spider_eye 12
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 5 string 10
replaceitem block ~3 ~1 ~4 slot.container 9 dark_oak_log 19
replaceitem block ~3 ~1 ~4 slot.container 10 golden_apple 6
replaceitem block ~3 ~1 ~4 slot.container 11 mushroom_stew 1
replaceitem block ~3 ~1 ~4 slot.container 12 iron_ingot 14
replaceitem block ~3 ~1 ~4 slot.container 13 diamond 2
replaceitem block ~3 ~1 ~4 slot.container 14 experience_bottle 5
loot insert ~3 ~1 ~4 loot "rsf/roofed_forest"
loot insert ~3 ~1 ~4 loot "chests/woodland_mansion"
summon vindicator ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
