# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2931/4224 | 主题内编号: b115/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·阶梯立体生态种植台 (frozen_ocean_conservatory_terrace_farm)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 dark_prismarine [] replace water
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 dark_prismarine [] replace air
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 dark_prismarine_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 dark_prismarine []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 packed_ice []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 packed_ice []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 sea_lantern []
setblock ~-4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-2 ~3 slot.container 0 wet_sponge 6
replaceitem block ~-4 ~-2 ~3 slot.container 1 copper_ingot 11
replaceitem block ~-4 ~-2 ~3 slot.container 2 trident 5
replaceitem block ~-4 ~-2 ~3 slot.container 3 prismarine_shard 21
replaceitem block ~-4 ~-2 ~3 slot.container 4 prismarine_crystals 18
replaceitem block ~-4 ~-2 ~3 slot.container 5 nautilus_shell 10
replaceitem block ~-4 ~-2 ~3 slot.container 9 sea_lantern 12
replaceitem block ~-4 ~-2 ~3 slot.container 10 heart_of_the_sea 1
replaceitem block ~-4 ~-2 ~3 slot.container 11 blue_ice 13
replaceitem block ~-4 ~-2 ~3 slot.container 12 sponge 6
replaceitem block ~-4 ~-2 ~3 slot.container 13 cooked_salmon 15
replaceitem block ~-4 ~-2 ~3 slot.container 14 gold_ingot 12
loot insert ~-4 ~-2 ~3 loot "rsf/frozen_ocean"
loot insert ~-4 ~-2 ~3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 dark_prismarine []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 packed_ice []
fill ~-4 ~5 ~-3 ~4 ~7 ~3 prismarine_bricks []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 dark_prismarine_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 sea_lantern []
setblock ~-6 ~10 ~-5 sea_lantern []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 sea_lantern []
setblock ~-6 ~10 ~5 sea_lantern []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 sea_lantern []
setblock ~6 ~10 ~-5 sea_lantern []
fill ~6 ~7 ~5 ~6 ~9 ~5 sea_lantern []
setblock ~6 ~10 ~5 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~8 ~-2 sea_lantern []
fill ~-6 ~0 ~2 ~-6 ~8 ~2 sea_lantern []
fill ~6 ~0 ~-2 ~6 ~8 ~-2 sea_lantern []
fill ~6 ~0 ~2 ~6 ~8 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x6x5) ---
fill ~1 ~0 ~6 ~1 ~8 ~6 dark_prismarine []
setblock ~1 ~9 ~6 blue_ice []
setblock ~1 ~10 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 bone 13
replaceitem block ~5 ~1 ~3 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~3 slot.container 2 wet_sponge 9
replaceitem block ~5 ~1 ~3 slot.container 3 copper_ingot 14
replaceitem block ~5 ~1 ~3 slot.container 4 trident 8
replaceitem block ~5 ~1 ~3 slot.container 5 prismarine_shard 16
replaceitem block ~5 ~1 ~3 slot.container 9 cooked_salmon 17
replaceitem block ~5 ~1 ~3 slot.container 10 gold_ingot 14
replaceitem block ~5 ~1 ~3 slot.container 11 iron_ingot 8
replaceitem block ~5 ~1 ~3 slot.container 12 emerald 5
replaceitem block ~5 ~1 ~3 slot.container 13 diamond 4
replaceitem block ~5 ~1 ~3 slot.container 14 golden_apple 5
loot insert ~5 ~1 ~3 loot "rsf/frozen_ocean"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 wet_sponge 4
replaceitem block ~-5 ~1 ~4 slot.container 1 copper_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 2 trident 3
replaceitem block ~-5 ~1 ~4 slot.container 3 prismarine_shard 19
replaceitem block ~-5 ~1 ~4 slot.container 4 prismarine_crystals 16
replaceitem block ~-5 ~1 ~4 slot.container 5 nautilus_shell 8
replaceitem block ~-5 ~1 ~4 slot.container 9 cooked_salmon 15
replaceitem block ~-5 ~1 ~4 slot.container 10 gold_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_ingot 13
replaceitem block ~-5 ~1 ~4 slot.container 12 emerald 10
replaceitem block ~-5 ~1 ~4 slot.container 13 diamond 2
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 3
loot insert ~-5 ~1 ~4 loot "rsf/frozen_ocean"
loot insert ~-5 ~1 ~4 loot "chests/shipwrecktreasure"
summon polar_bear ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
