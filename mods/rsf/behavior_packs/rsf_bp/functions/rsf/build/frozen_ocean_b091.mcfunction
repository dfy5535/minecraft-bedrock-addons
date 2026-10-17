# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2907/4224 | 主题内编号: b091/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·跨水拱桥水神小祠 (frozen_ocean_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x9 | 地上高度 8格 | 地下深度 3格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 dark_prismarine [] replace water
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 dark_prismarine [] replace air
fill ~-7 ~1 ~-4 ~7 ~10 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 dark_prismarine_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 prismarine_bricks []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 dark_prismarine []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-3 ~-2 ~5 ~-1 ~2 packed_ice []
fill ~-4 ~-4 ~-1 ~4 ~-1 ~1 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 packed_ice []
fill ~0 ~-4 ~-1 ~0 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 sea_lantern []
setblock ~-4 ~-2 ~1 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-2 ~1 slot.container 0 wet_sponge 6
replaceitem block ~-4 ~-2 ~1 slot.container 1 copper_ingot 11
replaceitem block ~-4 ~-2 ~1 slot.container 2 trident 5
replaceitem block ~-4 ~-2 ~1 slot.container 3 prismarine_shard 21
replaceitem block ~-4 ~-2 ~1 slot.container 4 prismarine_crystals 18
replaceitem block ~-4 ~-2 ~1 slot.container 5 nautilus_shell 10
replaceitem block ~-4 ~-2 ~1 slot.container 9 diamond 5
replaceitem block ~-4 ~-2 ~1 slot.container 10 golden_apple 6
replaceitem block ~-4 ~-2 ~1 slot.container 11 sea_lantern 11
replaceitem block ~-4 ~-2 ~1 slot.container 12 heart_of_the_sea 7
replaceitem block ~-4 ~-2 ~1 slot.container 13 blue_ice 12
replaceitem block ~-4 ~-2 ~1 slot.container 14 sponge 5
loot insert ~-4 ~-2 ~1 loot "rsf/frozen_ocean"
loot insert ~-4 ~-2 ~1 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-3 ~6 ~8 ~3 dark_prismarine []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 air []
fill ~-1 ~1 ~-3 ~1 ~3 ~3 air []
fill ~-1 ~3 ~-3 ~1 ~3 ~-3 iron_bars []
fill ~-1 ~3 ~3 ~1 ~3 ~3 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-4 ~7 ~8 ~4 dark_prismarine_slab []
fill ~-5 ~9 ~-2 ~5 ~10 ~2 prismarine_bricks []
fill ~-6 ~11 ~-3 ~6 ~11 ~3 prismarine_brick_slab []
setblock ~0 ~12 ~0 blue_ice []
setblock ~0 ~13 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 packed_ice []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 sea_lantern []
setblock ~2 ~4 ~-6 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x4x6) ---
fill ~1 ~0 ~4 ~1 ~9 ~4 dark_prismarine []
setblock ~1 ~10 ~4 blue_ice []
setblock ~1 ~11 ~4 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~3 crafting_table []
setblock ~-4 ~1 ~3 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 bone 13
replaceitem block ~5 ~1 ~1 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~1 slot.container 2 wet_sponge 9
replaceitem block ~5 ~1 ~1 slot.container 3 copper_ingot 14
replaceitem block ~5 ~1 ~1 slot.container 4 trident 8
replaceitem block ~5 ~1 ~1 slot.container 5 prismarine_shard 16
replaceitem block ~5 ~1 ~1 slot.container 9 blue_ice 14
replaceitem block ~5 ~1 ~1 slot.container 10 sponge 7
replaceitem block ~5 ~1 ~1 slot.container 11 cooked_salmon 16
replaceitem block ~5 ~1 ~1 slot.container 12 gold_ingot 13
replaceitem block ~5 ~1 ~1 slot.container 13 iron_ingot 14
replaceitem block ~5 ~1 ~1 slot.container 14 emerald 4
loot insert ~5 ~1 ~1 loot "rsf/frozen_ocean"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 wet_sponge 4
replaceitem block ~-5 ~1 ~2 slot.container 1 copper_ingot 9
replaceitem block ~-5 ~1 ~2 slot.container 2 trident 3
replaceitem block ~-5 ~1 ~2 slot.container 3 prismarine_shard 19
replaceitem block ~-5 ~1 ~2 slot.container 4 prismarine_crystals 16
replaceitem block ~-5 ~1 ~2 slot.container 5 nautilus_shell 8
replaceitem block ~-5 ~1 ~2 slot.container 9 blue_ice 12
replaceitem block ~-5 ~1 ~2 slot.container 10 sponge 5
replaceitem block ~-5 ~1 ~2 slot.container 11 cooked_salmon 14
replaceitem block ~-5 ~1 ~2 slot.container 12 gold_ingot 11
replaceitem block ~-5 ~1 ~2 slot.container 13 iron_ingot 12
replaceitem block ~-5 ~1 ~2 slot.container 14 emerald 9
loot insert ~-5 ~1 ~2 loot "rsf/frozen_ocean"
loot insert ~-5 ~1 ~2 loot "chests/shipwrecktreasure"
summon polar_bear ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
