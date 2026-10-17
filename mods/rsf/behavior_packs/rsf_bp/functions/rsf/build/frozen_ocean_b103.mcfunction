# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2919/4224 | 主题内编号: b103/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·十字全向防御方堡 (frozen_ocean_bunker_cross_redoubt)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 dark_prismarine [] replace water
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 dark_prismarine [] replace air
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 dark_prismarine_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 dark_prismarine []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 prismarine_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 sea_lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 bone 10
replaceitem block ~4 ~-2 ~3 slot.container 1 rotten_flesh 13
replaceitem block ~4 ~-2 ~3 slot.container 2 wet_sponge 6
replaceitem block ~4 ~-2 ~3 slot.container 3 copper_ingot 11
replaceitem block ~4 ~-2 ~3 slot.container 4 trident 5
replaceitem block ~4 ~-2 ~3 slot.container 5 prismarine_shard 21
replaceitem block ~4 ~-2 ~3 slot.container 9 blue_ice 15
replaceitem block ~4 ~-2 ~3 slot.container 10 sponge 8
replaceitem block ~4 ~-2 ~3 slot.container 11 cooked_salmon 17
replaceitem block ~4 ~-2 ~3 slot.container 12 gold_ingot 14
replaceitem block ~4 ~-2 ~3 slot.container 13 iron_ingot 8
replaceitem block ~4 ~-2 ~3 slot.container 14 emerald 5
loot insert ~4 ~-2 ~3 loot "rsf/frozen_ocean"
loot insert ~4 ~-2 ~3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~8 ~5 dark_prismarine []
fill ~-6 ~1 ~-2 ~6 ~8 ~2 dark_prismarine []
fill ~-1 ~1 ~-4 ~1 ~7 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~7 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 packed_ice []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 cobblestone_wall []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 air []
setblock ~-6 ~9 ~-5 sea_lantern []
setblock ~-6 ~10 ~-5 sea_lantern []
setblock ~-6 ~9 ~5 sea_lantern []
setblock ~-6 ~10 ~5 sea_lantern []
setblock ~6 ~9 ~-5 sea_lantern []
setblock ~6 ~10 ~-5 sea_lantern []
setblock ~6 ~9 ~5 sea_lantern []
setblock ~6 ~10 ~5 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~5 ~-7 sea_lantern []
setblock ~-8 ~6 ~-7 sea_lantern []
fill ~-8 ~0 ~7 ~-8 ~5 ~7 sea_lantern []
setblock ~-8 ~6 ~7 sea_lantern []
fill ~8 ~0 ~-7 ~8 ~5 ~-7 sea_lantern []
setblock ~8 ~6 ~-7 sea_lantern []
fill ~8 ~0 ~7 ~8 ~5 ~7 sea_lantern []
setblock ~8 ~6 ~7 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x6x3) ---
fill ~1 ~0 ~6 ~1 ~6 ~6 dark_prismarine []
setblock ~1 ~7 ~6 blue_ice []
setblock ~1 ~8 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 trident 8
replaceitem block ~5 ~1 ~3 slot.container 1 prismarine_shard 16
replaceitem block ~5 ~1 ~3 slot.container 2 prismarine_crystals 13
replaceitem block ~5 ~1 ~3 slot.container 3 nautilus_shell 5
replaceitem block ~5 ~1 ~3 slot.container 4 bone 13
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 16
replaceitem block ~5 ~1 ~3 slot.container 9 diamond 2
replaceitem block ~5 ~1 ~3 slot.container 10 golden_apple 3
replaceitem block ~5 ~1 ~3 slot.container 11 sea_lantern 8
replaceitem block ~5 ~1 ~3 slot.container 12 heart_of_the_sea 4
replaceitem block ~5 ~1 ~3 slot.container 13 blue_ice 16
replaceitem block ~5 ~1 ~3 slot.container 14 sponge 9
loot insert ~5 ~1 ~3 loot "rsf/frozen_ocean"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 prismarine_crystals 16
replaceitem block ~-5 ~1 ~4 slot.container 1 nautilus_shell 8
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 16
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 19
replaceitem block ~-5 ~1 ~4 slot.container 4 wet_sponge 4
replaceitem block ~-5 ~1 ~4 slot.container 5 copper_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 9 diamond 7
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 8
replaceitem block ~-5 ~1 ~4 slot.container 11 sea_lantern 6
replaceitem block ~-5 ~1 ~4 slot.container 12 heart_of_the_sea 2
replaceitem block ~-5 ~1 ~4 slot.container 13 blue_ice 14
replaceitem block ~-5 ~1 ~4 slot.container 14 sponge 7
loot insert ~-5 ~1 ~4 loot "rsf/frozen_ocean"
loot insert ~-5 ~1 ~4 loot "chests/shipwrecktreasure"
summon polar_bear ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
