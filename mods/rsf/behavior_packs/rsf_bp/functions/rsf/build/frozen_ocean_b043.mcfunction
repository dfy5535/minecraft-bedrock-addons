# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2859/4224 | 主题内编号: b043/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·十字四门试炼擂台 (frozen_ocean_arena_cross_gauntlet)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 2格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-3 ~-7 ~8 ~-1 ~7 dark_prismarine [] replace water
fill ~-8 ~-3 ~-7 ~8 ~-1 ~7 dark_prismarine [] replace air
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 dark_prismarine_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 prismarine_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 dark_prismarine []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 packed_ice []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 packed_ice []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 sea_lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 trident 5
replaceitem block ~-3 ~-3 ~2 slot.container 1 prismarine_shard 21
replaceitem block ~-3 ~-3 ~2 slot.container 2 prismarine_crystals 18
replaceitem block ~-3 ~-3 ~2 slot.container 3 nautilus_shell 10
replaceitem block ~-3 ~-3 ~2 slot.container 4 bone 10
replaceitem block ~-3 ~-3 ~2 slot.container 5 rotten_flesh 13
replaceitem block ~-3 ~-3 ~2 slot.container 9 sea_lantern 7
replaceitem block ~-3 ~-3 ~2 slot.container 10 heart_of_the_sea 3
replaceitem block ~-3 ~-3 ~2 slot.container 11 blue_ice 15
replaceitem block ~-3 ~-3 ~2 slot.container 12 sponge 8
replaceitem block ~-3 ~-3 ~2 slot.container 13 cooked_salmon 17
replaceitem block ~-3 ~-3 ~2 slot.container 14 gold_ingot 14
loot insert ~-3 ~-3 ~2 loot "rsf/frozen_ocean"
loot insert ~-3 ~-3 ~2 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~7 ~6 dark_prismarine []
fill ~-7 ~1 ~-2 ~7 ~7 ~2 dark_prismarine []
fill ~-1 ~1 ~-5 ~1 ~6 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~6 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 cobblestone_wall []
setblock ~7 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 packed_ice []
fill ~-7 ~8 ~-6 ~7 ~8 ~6 cobblestone_wall []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 air []
setblock ~-7 ~8 ~-6 sea_lantern []
setblock ~-7 ~9 ~-6 sea_lantern []
setblock ~-7 ~8 ~6 sea_lantern []
setblock ~-7 ~9 ~6 sea_lantern []
setblock ~7 ~8 ~-6 sea_lantern []
setblock ~7 ~9 ~-6 sea_lantern []
setblock ~7 ~8 ~6 sea_lantern []
setblock ~7 ~9 ~6 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 packed_ice []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 sea_lantern []
setblock ~2 ~4 ~-9 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 10x7x3) ---
fill ~-3 ~0 ~7 ~-3 ~6 ~7 dark_prismarine []
setblock ~-3 ~7 ~7 blue_ice []
setblock ~-3 ~8 ~7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-6 ~1 ~5 fletching_table []
setblock ~0 ~1 ~5 target []
setblock ~6 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 bone 13
replaceitem block ~6 ~1 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~6 ~1 ~4 slot.container 2 wet_sponge 9
replaceitem block ~6 ~1 ~4 slot.container 3 copper_ingot 14
replaceitem block ~6 ~1 ~4 slot.container 4 trident 8
replaceitem block ~6 ~1 ~4 slot.container 5 prismarine_shard 16
replaceitem block ~6 ~1 ~4 slot.container 9 diamond 5
replaceitem block ~6 ~1 ~4 slot.container 10 golden_apple 6
replaceitem block ~6 ~1 ~4 slot.container 11 sea_lantern 11
replaceitem block ~6 ~1 ~4 slot.container 12 heart_of_the_sea 7
replaceitem block ~6 ~1 ~4 slot.container 13 blue_ice 12
replaceitem block ~6 ~1 ~4 slot.container 14 sponge 5
loot insert ~6 ~1 ~4 loot "rsf/frozen_ocean"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 wet_sponge 4
replaceitem block ~-6 ~1 ~5 slot.container 1 copper_ingot 9
replaceitem block ~-6 ~1 ~5 slot.container 2 trident 3
replaceitem block ~-6 ~1 ~5 slot.container 3 prismarine_shard 19
replaceitem block ~-6 ~1 ~5 slot.container 4 prismarine_crystals 16
replaceitem block ~-6 ~1 ~5 slot.container 5 nautilus_shell 8
replaceitem block ~-6 ~1 ~5 slot.container 9 diamond 3
replaceitem block ~-6 ~1 ~5 slot.container 10 golden_apple 4
replaceitem block ~-6 ~1 ~5 slot.container 11 sea_lantern 9
replaceitem block ~-6 ~1 ~5 slot.container 12 heart_of_the_sea 5
replaceitem block ~-6 ~1 ~5 slot.container 13 blue_ice 17
replaceitem block ~-6 ~1 ~5 slot.container 14 sponge 10
loot insert ~-6 ~1 ~5 loot "rsf/frozen_ocean"
loot insert ~-6 ~1 ~5 loot "chests/shipwrecktreasure"
summon polar_bear ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
