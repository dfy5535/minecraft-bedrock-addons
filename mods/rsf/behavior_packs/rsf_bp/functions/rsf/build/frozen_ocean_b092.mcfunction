# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2908/4224 | 主题内编号: b092/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·双层重檐供奉宝塔 (frozen_ocean_shrine_terrace_pagoda)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 prismarine_bricks [] replace water
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 prismarine_bricks [] replace air
fill ~-6 ~1 ~-5 ~6 ~12 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 dark_prismarine []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 sea_lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 prismarine_shard 21
replaceitem block ~3 ~-3 ~2 slot.container 1 prismarine_crystals 18
replaceitem block ~3 ~-3 ~2 slot.container 2 nautilus_shell 10
replaceitem block ~3 ~-3 ~2 slot.container 3 bone 10
replaceitem block ~3 ~-3 ~2 slot.container 4 rotten_flesh 13
replaceitem block ~3 ~-3 ~2 slot.container 5 wet_sponge 6
replaceitem block ~3 ~-3 ~2 slot.container 9 golden_apple 8
replaceitem block ~3 ~-3 ~2 slot.container 10 sea_lantern 6
replaceitem block ~3 ~-3 ~2 slot.container 11 heart_of_the_sea 2
replaceitem block ~3 ~-3 ~2 slot.container 12 blue_ice 14
replaceitem block ~3 ~-3 ~2 slot.container 13 sponge 7
replaceitem block ~3 ~-3 ~2 slot.container 14 cooked_salmon 16
loot insert ~3 ~-3 ~2 loot "rsf/frozen_ocean"
loot insert ~3 ~-3 ~2 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~5 ~4 prismarine_bricks []
fill ~-4 ~1 ~-3 ~4 ~4 ~3 air []
fill ~-6 ~5 ~-5 ~6 ~5 ~5 prismarine_brick_slab []
fill ~-4 ~6 ~-3 ~4 ~10 ~3 stone_bricks []
fill ~-3 ~6 ~-2 ~3 ~9 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~6 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~8 ~-5 ~-8 ~8 ~5 prismarine_bricks_stairs ["weirdo_direction"=0]
fill ~8 ~8 ~-5 ~8 ~8 ~5 prismarine_bricks_stairs ["weirdo_direction"=1]
fill ~-7 ~9 ~-4 ~-7 ~9 ~4 prismarine_bricks_stairs ["weirdo_direction"=0]
fill ~7 ~9 ~-4 ~7 ~9 ~4 prismarine_bricks_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-4 ~6 ~9 ~4 prismarine_brick_slab []
fill ~0 ~10 ~-5 ~0 ~10 ~5 blue_ice []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 sea_lantern []
setblock ~-7 ~6 ~-6 sea_lantern []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 sea_lantern []
setblock ~-7 ~6 ~6 sea_lantern []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 sea_lantern []
setblock ~7 ~6 ~-6 sea_lantern []
fill ~7 ~0 ~6 ~7 ~5 ~6 sea_lantern []
setblock ~7 ~6 ~6 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 8x6x2) ---
fill ~-1 ~0 ~6 ~-1 ~5 ~6 dark_prismarine []
setblock ~-1 ~6 ~6 blue_ice []
setblock ~-1 ~7 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~9 ~0 sea_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 rotten_flesh 16
replaceitem block ~-4 ~1 ~2 slot.container 1 wet_sponge 9
replaceitem block ~-4 ~1 ~2 slot.container 2 copper_ingot 14
replaceitem block ~-4 ~1 ~2 slot.container 3 trident 8
replaceitem block ~-4 ~1 ~2 slot.container 4 prismarine_shard 16
replaceitem block ~-4 ~1 ~2 slot.container 5 prismarine_crystals 13
replaceitem block ~-4 ~1 ~2 slot.container 9 gold_ingot 11
replaceitem block ~-4 ~1 ~2 slot.container 10 iron_ingot 12
replaceitem block ~-4 ~1 ~2 slot.container 11 emerald 9
replaceitem block ~-4 ~1 ~2 slot.container 12 diamond 8
replaceitem block ~-4 ~1 ~2 slot.container 13 golden_apple 2
replaceitem block ~-4 ~1 ~2 slot.container 14 sea_lantern 7
loot insert ~-4 ~1 ~2 loot "rsf/frozen_ocean"
summon elder_guardian ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
