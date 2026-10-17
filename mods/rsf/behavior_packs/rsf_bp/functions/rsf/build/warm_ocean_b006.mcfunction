# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2694/4224 | 主题内编号: b006/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·重檐飞角四方神龛 (warm_ocean_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 dark_prismarine [] replace water
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 dark_prismarine [] replace air
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 dark_prismarine_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cut_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 stone_bricks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 sea_lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 nautilus_shell 10
replaceitem block ~2 ~-2 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~2 ~-2 ~3 slot.container 2 wet_sponge 5
replaceitem block ~2 ~-2 ~3 slot.container 3 copper_ingot 10
replaceitem block ~2 ~-2 ~3 slot.container 4 ink_sac 11
replaceitem block ~2 ~-2 ~3 slot.container 5 trident 5
replaceitem block ~2 ~-2 ~3 slot.container 9 iron_ingot 10
replaceitem block ~2 ~-2 ~3 slot.container 10 emerald 8
replaceitem block ~2 ~-2 ~3 slot.container 11 golden_apple 6
replaceitem block ~2 ~-2 ~3 slot.container 12 sea_lantern 11
replaceitem block ~2 ~-2 ~3 slot.container 13 heart_of_the_sea 7
replaceitem block ~2 ~-2 ~3 slot.container 14 conduit 1
loot insert ~2 ~-2 ~3 loot "rsf/warm_ocean"
loot insert ~2 ~-2 ~3 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 dark_prismarine []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 sea_lantern []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 sea_lantern []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 sea_lantern []
fill ~4 ~1 ~5 ~4 ~8 ~5 sea_lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 dark_prismarine_slab []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 stone_bricks []
fill ~-4 ~11 ~-5 ~4 ~11 ~5 stone_brick_slab []
setblock ~0 ~12 ~0 emerald_block []
setblock ~0 ~13 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 dark_prismarine []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~-6 ~0 ~-1 ~-6 ~7 ~-1 prismarine_bricks []
fill ~6 ~0 ~-1 ~6 ~7 ~-1 prismarine_bricks []
setblock ~-6 ~8 ~-1 sea_lantern []
setblock ~6 ~8 ~-1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 sea_lantern []
setblock ~0 ~1 ~0 sponge []
setblock ~0 ~2 ~0 sea_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 ink_sac 14
replaceitem block ~-3 ~1 ~4 slot.container 1 trident 8
replaceitem block ~-3 ~1 ~4 slot.container 2 prismarine_shard 16
replaceitem block ~-3 ~1 ~4 slot.container 3 prismarine_crystals 13
replaceitem block ~-3 ~1 ~4 slot.container 4 nautilus_shell 5
replaceitem block ~-3 ~1 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~-3 ~1 ~4 slot.container 9 sponge 10
replaceitem block ~-3 ~1 ~4 slot.container 10 cooked_cod 10
replaceitem block ~-3 ~1 ~4 slot.container 11 cooked_salmon 11
replaceitem block ~-3 ~1 ~4 slot.container 12 gold_ingot 10
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_ingot 11
replaceitem block ~-3 ~1 ~4 slot.container 14 emerald 9
loot insert ~-3 ~1 ~4 loot "rsf/warm_ocean"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 prismarine_shard 19
replaceitem block ~3 ~1 ~4 slot.container 1 prismarine_crystals 16
replaceitem block ~3 ~1 ~4 slot.container 2 nautilus_shell 8
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 18
replaceitem block ~3 ~1 ~4 slot.container 4 wet_sponge 11
replaceitem block ~3 ~1 ~4 slot.container 5 copper_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 9 sponge 8
replaceitem block ~3 ~1 ~4 slot.container 10 cooked_cod 15
replaceitem block ~3 ~1 ~4 slot.container 11 cooked_salmon 16
replaceitem block ~3 ~1 ~4 slot.container 12 gold_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 13 iron_ingot 9
replaceitem block ~3 ~1 ~4 slot.container 14 emerald 7
loot insert ~3 ~1 ~4 loot "rsf/warm_ocean"
loot insert ~3 ~1 ~4 loot "chests/underwater_ruin_big"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
