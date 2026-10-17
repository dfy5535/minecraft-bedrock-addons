# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2822/4224 | 主题内编号: b006/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·重檐飞角四方神龛 (frozen_ocean_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 prismarine [] replace water
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 prismarine [] replace air
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_ice []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 prismarine_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 stone_bricks []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 sea_lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 prismarine_crystals 18
replaceitem block ~4 ~-3 ~4 slot.container 1 nautilus_shell 10
replaceitem block ~4 ~-3 ~4 slot.container 2 bone 10
replaceitem block ~4 ~-3 ~4 slot.container 3 rotten_flesh 13
replaceitem block ~4 ~-3 ~4 slot.container 4 wet_sponge 6
replaceitem block ~4 ~-3 ~4 slot.container 5 copper_ingot 11
replaceitem block ~4 ~-3 ~4 slot.container 9 cooked_salmon 12
replaceitem block ~4 ~-3 ~4 slot.container 10 gold_ingot 9
replaceitem block ~4 ~-3 ~4 slot.container 11 iron_ingot 10
replaceitem block ~4 ~-3 ~4 slot.container 12 emerald 7
replaceitem block ~4 ~-3 ~4 slot.container 13 diamond 6
replaceitem block ~4 ~-3 ~4 slot.container 14 golden_apple 7
loot insert ~4 ~-3 ~4 loot "rsf/frozen_ocean"
loot insert ~4 ~-3 ~4 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-4 ~5 ~9 ~4 prismarine []
fill ~-4 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 sea_lantern []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 sea_lantern []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 sea_lantern []
fill ~5 ~1 ~4 ~5 ~9 ~4 sea_lantern []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 prismarine_slab []
fill ~-4 ~10 ~-3 ~4 ~11 ~3 dark_prismarine []
fill ~-5 ~12 ~-4 ~5 ~12 ~4 dark_prismarine_slab []
setblock ~0 ~13 ~0 diamond_block []
setblock ~0 ~14 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 sea_lantern []
setblock ~-7 ~6 ~-6 sea_lantern []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 sea_lantern []
setblock ~-7 ~6 ~6 sea_lantern []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 sea_lantern []
setblock ~7 ~6 ~-6 sea_lantern []
fill ~7 ~0 ~6 ~7 ~5 ~6 sea_lantern []
setblock ~7 ~6 ~6 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~-2 ~0 ~7 ~-2 ~9 ~7 dark_prismarine []
setblock ~-2 ~10 ~7 blue_ice []
setblock ~-2 ~11 ~7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 sea_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 copper_ingot 14
replaceitem block ~-4 ~1 ~2 slot.container 1 trident 8
replaceitem block ~-4 ~1 ~2 slot.container 2 prismarine_shard 16
replaceitem block ~-4 ~1 ~2 slot.container 3 prismarine_crystals 13
replaceitem block ~-4 ~1 ~2 slot.container 4 nautilus_shell 5
replaceitem block ~-4 ~1 ~2 slot.container 5 bone 13
replaceitem block ~-4 ~1 ~2 slot.container 9 emerald 5
replaceitem block ~-4 ~1 ~2 slot.container 10 diamond 4
replaceitem block ~-4 ~1 ~2 slot.container 11 golden_apple 5
replaceitem block ~-4 ~1 ~2 slot.container 12 sea_lantern 10
replaceitem block ~-4 ~1 ~2 slot.container 13 heart_of_the_sea 6
replaceitem block ~-4 ~1 ~2 slot.container 14 blue_ice 18
loot insert ~-4 ~1 ~2 loot "rsf/frozen_ocean"
summon stray ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon elder_guardian ~1 ~1 ~1
summon squid ~0 ~-3 ~0
