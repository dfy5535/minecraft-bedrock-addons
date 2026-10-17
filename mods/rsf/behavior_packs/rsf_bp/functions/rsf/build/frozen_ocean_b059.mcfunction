# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2875/4224 | 主题内编号: b059/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·阶梯金字塔法老墓室 (frozen_ocean_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 dark_prismarine [] replace water
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 dark_prismarine [] replace air
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 dark_prismarine_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 prismarine_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 dark_prismarine []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 prismarine_bricks []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 packed_ice []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 sea_lantern []
setblock ~2 ~-5 ~0 sea_lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 wet_sponge 6
replaceitem block ~0 ~-3 ~-4 slot.container 1 copper_ingot 11
replaceitem block ~0 ~-3 ~-4 slot.container 2 trident 5
replaceitem block ~0 ~-3 ~-4 slot.container 3 prismarine_shard 21
replaceitem block ~0 ~-3 ~-4 slot.container 4 prismarine_crystals 18
replaceitem block ~0 ~-3 ~-4 slot.container 5 nautilus_shell 10
replaceitem block ~0 ~-3 ~-4 slot.container 9 blue_ice 13
replaceitem block ~0 ~-3 ~-4 slot.container 10 sponge 6
replaceitem block ~0 ~-3 ~-4 slot.container 11 cooked_salmon 15
replaceitem block ~0 ~-3 ~-4 slot.container 12 gold_ingot 12
replaceitem block ~0 ~-3 ~-4 slot.container 13 iron_ingot 13
replaceitem block ~0 ~-3 ~-4 slot.container 14 emerald 10
loot insert ~0 ~-3 ~-4 loot "rsf/frozen_ocean"
loot insert ~0 ~-3 ~-4 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 dark_prismarine []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 packed_ice []
fill ~-5 ~5 ~-4 ~5 ~8 ~4 prismarine_bricks []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 dark_prismarine_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~9 ~-6 ~7 ~9 ~6 packed_ice []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 prismarine_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 blue_ice []
setblock ~0 ~12 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~5 ~-8 sea_lantern []
setblock ~-9 ~6 ~-8 sea_lantern []
fill ~-9 ~0 ~8 ~-9 ~5 ~8 sea_lantern []
setblock ~-9 ~6 ~8 sea_lantern []
fill ~9 ~0 ~-8 ~9 ~5 ~-8 sea_lantern []
setblock ~9 ~6 ~-8 sea_lantern []
fill ~9 ~0 ~8 ~9 ~5 ~8 sea_lantern []
setblock ~9 ~6 ~8 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 10x8x4) ---
fill ~-1 ~0 ~8 ~-1 ~7 ~8 dark_prismarine []
setblock ~-1 ~8 ~8 blue_ice []
setblock ~-1 ~9 ~8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 sea_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 bone 13
replaceitem block ~6 ~1 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~6 ~1 ~4 slot.container 2 wet_sponge 9
replaceitem block ~6 ~1 ~4 slot.container 3 copper_ingot 14
replaceitem block ~6 ~1 ~4 slot.container 4 trident 8
replaceitem block ~6 ~1 ~4 slot.container 5 prismarine_shard 16
replaceitem block ~6 ~1 ~4 slot.container 9 iron_ingot 13
replaceitem block ~6 ~1 ~4 slot.container 10 emerald 10
replaceitem block ~6 ~1 ~4 slot.container 11 diamond 2
replaceitem block ~6 ~1 ~4 slot.container 12 golden_apple 3
replaceitem block ~6 ~1 ~4 slot.container 13 sea_lantern 8
replaceitem block ~6 ~1 ~4 slot.container 14 heart_of_the_sea 4
loot insert ~6 ~1 ~4 loot "rsf/frozen_ocean"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 wet_sponge 4
replaceitem block ~-6 ~1 ~5 slot.container 1 copper_ingot 9
replaceitem block ~-6 ~1 ~5 slot.container 2 trident 3
replaceitem block ~-6 ~1 ~5 slot.container 3 prismarine_shard 19
replaceitem block ~-6 ~1 ~5 slot.container 4 prismarine_crystals 16
replaceitem block ~-6 ~1 ~5 slot.container 5 nautilus_shell 8
replaceitem block ~-6 ~1 ~5 slot.container 9 iron_ingot 11
replaceitem block ~-6 ~1 ~5 slot.container 10 emerald 8
replaceitem block ~-6 ~1 ~5 slot.container 11 diamond 7
replaceitem block ~-6 ~1 ~5 slot.container 12 golden_apple 8
replaceitem block ~-6 ~1 ~5 slot.container 13 sea_lantern 6
replaceitem block ~-6 ~1 ~5 slot.container 14 heart_of_the_sea 2
loot insert ~-6 ~1 ~5 loot "rsf/frozen_ocean"
loot insert ~-6 ~1 ~5 loot "chests/shipwrecktreasure"
summon guardian ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
