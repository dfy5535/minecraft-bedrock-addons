# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2833/4224 | 主题内编号: b017/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·双坡顶皇家藏宝室 (frozen_ocean_chamber_gabled_treasury)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 stone_bricks [] replace water
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 stone_bricks [] replace air
fill ~-6 ~1 ~-6 ~6 ~9 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 prismarine []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 packed_ice []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-4 ~4 ~-1 ~4 prismarine []
fill ~-3 ~-4 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 sea_lantern []
setblock ~3 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~3 slot.container 0 wet_sponge 6
replaceitem block ~3 ~-2 ~3 slot.container 1 copper_ingot 11
replaceitem block ~3 ~-2 ~3 slot.container 2 trident 5
replaceitem block ~3 ~-2 ~3 slot.container 3 prismarine_shard 21
replaceitem block ~3 ~-2 ~3 slot.container 4 prismarine_crystals 18
replaceitem block ~3 ~-2 ~3 slot.container 5 nautilus_shell 10
replaceitem block ~3 ~-2 ~3 slot.container 9 cooked_salmon 13
replaceitem block ~3 ~-2 ~3 slot.container 10 gold_ingot 10
replaceitem block ~3 ~-2 ~3 slot.container 11 iron_ingot 11
replaceitem block ~3 ~-2 ~3 slot.container 12 emerald 8
replaceitem block ~3 ~-2 ~3 slot.container 13 diamond 7
replaceitem block ~3 ~-2 ~3 slot.container 14 golden_apple 8
loot insert ~3 ~-2 ~3 loot "rsf/frozen_ocean"
loot insert ~3 ~-2 ~3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-5 ~5 ~7 ~5 stone_bricks []
fill ~-4 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-5 ~1 ~-5 ~-5 ~7 ~-5 sea_lantern []
fill ~-5 ~1 ~5 ~-5 ~7 ~5 sea_lantern []
fill ~5 ~1 ~-5 ~5 ~7 ~-5 sea_lantern []
fill ~5 ~1 ~5 ~5 ~7 ~5 sea_lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-6 ~-6 ~8 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-6 ~6 ~8 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~-5 ~9 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-5 ~5 ~9 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-5 ~4 ~9 ~5 stone_brick_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 packed_ice []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~9 ~2 prismarine []
fill ~7 ~1 ~-1 ~8 ~8 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~10 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-1 ~0 ~7 ~-1 ~5 ~7 dark_prismarine []
setblock ~-1 ~6 ~7 blue_ice []
setblock ~-1 ~7 ~7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 sea_lantern []
fill ~-4 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 sponge []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 prismarine_crystals 13
replaceitem block ~4 ~1 ~3 slot.container 1 nautilus_shell 5
replaceitem block ~4 ~1 ~3 slot.container 2 bone 13
replaceitem block ~4 ~1 ~3 slot.container 3 rotten_flesh 16
replaceitem block ~4 ~1 ~3 slot.container 4 wet_sponge 9
replaceitem block ~4 ~1 ~3 slot.container 5 copper_ingot 14
replaceitem block ~4 ~1 ~3 slot.container 9 sea_lantern 11
replaceitem block ~4 ~1 ~3 slot.container 10 heart_of_the_sea 7
replaceitem block ~4 ~1 ~3 slot.container 11 blue_ice 12
replaceitem block ~4 ~1 ~3 slot.container 12 sponge 5
replaceitem block ~4 ~1 ~3 slot.container 13 cooked_salmon 14
replaceitem block ~4 ~1 ~3 slot.container 14 gold_ingot 11
loot insert ~4 ~1 ~3 loot "rsf/frozen_ocean"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 bone 16
replaceitem block ~-4 ~1 ~4 slot.container 1 rotten_flesh 19
replaceitem block ~-4 ~1 ~4 slot.container 2 wet_sponge 4
replaceitem block ~-4 ~1 ~4 slot.container 3 copper_ingot 9
replaceitem block ~-4 ~1 ~4 slot.container 4 trident 3
replaceitem block ~-4 ~1 ~4 slot.container 5 prismarine_shard 19
replaceitem block ~-4 ~1 ~4 slot.container 9 sea_lantern 9
replaceitem block ~-4 ~1 ~4 slot.container 10 heart_of_the_sea 5
replaceitem block ~-4 ~1 ~4 slot.container 11 blue_ice 17
replaceitem block ~-4 ~1 ~4 slot.container 12 sponge 10
replaceitem block ~-4 ~1 ~4 slot.container 13 cooked_salmon 12
replaceitem block ~-4 ~1 ~4 slot.container 14 gold_ingot 9
loot insert ~-4 ~1 ~4 loot "rsf/frozen_ocean"
loot insert ~-4 ~1 ~4 loot "chests/shipwrecktreasure"
summon guardian ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
