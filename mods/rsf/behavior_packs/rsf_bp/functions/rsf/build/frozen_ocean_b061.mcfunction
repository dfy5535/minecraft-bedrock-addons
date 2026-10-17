# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2877/4224 | 主题内编号: b061/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·双子封土古墓地宫 (frozen_ocean_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 stone_bricks [] replace water
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 stone_bricks [] replace air
fill ~-8 ~1 ~-5 ~8 ~9 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 stone_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 prismarine []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 packed_ice []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 prismarine []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 packed_ice []
setblock ~0 ~-6 ~0 diamond_block []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 sea_lantern []
setblock ~2 ~-5 ~0 sea_lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 trident 5
replaceitem block ~0 ~-3 ~-2 slot.container 1 prismarine_shard 21
replaceitem block ~0 ~-3 ~-2 slot.container 2 prismarine_crystals 18
replaceitem block ~0 ~-3 ~-2 slot.container 3 nautilus_shell 10
replaceitem block ~0 ~-3 ~-2 slot.container 4 bone 10
replaceitem block ~0 ~-3 ~-2 slot.container 5 rotten_flesh 13
replaceitem block ~0 ~-3 ~-2 slot.container 9 diamond 5
replaceitem block ~0 ~-3 ~-2 slot.container 10 golden_apple 6
replaceitem block ~0 ~-3 ~-2 slot.container 11 sea_lantern 11
replaceitem block ~0 ~-3 ~-2 slot.container 12 heart_of_the_sea 7
replaceitem block ~0 ~-3 ~-2 slot.container 13 blue_ice 12
replaceitem block ~0 ~-3 ~-2 slot.container 14 sponge 5
loot insert ~0 ~-3 ~-2 loot "rsf/frozen_ocean"
loot insert ~0 ~-3 ~-2 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~8 ~4 stone_bricks []
fill ~2 ~1 ~-4 ~7 ~8 ~4 stone_bricks []
fill ~-6 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 packed_ice []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~8 ~-4 ~7 ~8 ~4 packed_ice []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 prismarine []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 sponge []
setblock ~0 ~11 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 packed_ice []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 sea_lantern []
setblock ~2 ~4 ~-7 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 10x5x6) ---
fill ~1 ~0 ~5 ~1 ~9 ~5 dark_prismarine []
setblock ~1 ~10 ~5 blue_ice []
setblock ~1 ~11 ~5 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 wet_sponge 9
replaceitem block ~6 ~1 ~2 slot.container 1 copper_ingot 14
replaceitem block ~6 ~1 ~2 slot.container 2 trident 8
replaceitem block ~6 ~1 ~2 slot.container 3 prismarine_shard 16
replaceitem block ~6 ~1 ~2 slot.container 4 prismarine_crystals 13
replaceitem block ~6 ~1 ~2 slot.container 5 nautilus_shell 5
replaceitem block ~6 ~1 ~2 slot.container 9 blue_ice 12
replaceitem block ~6 ~1 ~2 slot.container 10 sponge 5
replaceitem block ~6 ~1 ~2 slot.container 11 cooked_salmon 14
replaceitem block ~6 ~1 ~2 slot.container 12 gold_ingot 11
replaceitem block ~6 ~1 ~2 slot.container 13 iron_ingot 12
replaceitem block ~6 ~1 ~2 slot.container 14 emerald 9
loot insert ~6 ~1 ~2 loot "rsf/frozen_ocean"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 trident 3
replaceitem block ~-6 ~1 ~3 slot.container 1 prismarine_shard 19
replaceitem block ~-6 ~1 ~3 slot.container 2 prismarine_crystals 16
replaceitem block ~-6 ~1 ~3 slot.container 3 nautilus_shell 8
replaceitem block ~-6 ~1 ~3 slot.container 4 bone 16
replaceitem block ~-6 ~1 ~3 slot.container 5 rotten_flesh 19
replaceitem block ~-6 ~1 ~3 slot.container 9 blue_ice 17
replaceitem block ~-6 ~1 ~3 slot.container 10 sponge 10
replaceitem block ~-6 ~1 ~3 slot.container 11 cooked_salmon 12
replaceitem block ~-6 ~1 ~3 slot.container 12 gold_ingot 9
replaceitem block ~-6 ~1 ~3 slot.container 13 iron_ingot 10
replaceitem block ~-6 ~1 ~3 slot.container 14 emerald 7
loot insert ~-6 ~1 ~3 loot "rsf/frozen_ocean"
loot insert ~-6 ~1 ~3 loot "chests/shipwrecktreasure"
summon polar_bear ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
