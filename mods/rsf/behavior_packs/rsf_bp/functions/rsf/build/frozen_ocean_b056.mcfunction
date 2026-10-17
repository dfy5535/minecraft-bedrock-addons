# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2872/4224 | 主题内编号: b056/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·隐士半地下避难山居 (frozen_ocean_outpost_hermit_retreat)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 prismarine_bricks [] replace water
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 prismarine_bricks [] replace air
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
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
replaceitem block ~3 ~-3 ~2 slot.container 0 rotten_flesh 13
replaceitem block ~3 ~-3 ~2 slot.container 1 wet_sponge 6
replaceitem block ~3 ~-3 ~2 slot.container 2 copper_ingot 11
replaceitem block ~3 ~-3 ~2 slot.container 3 trident 5
replaceitem block ~3 ~-3 ~2 slot.container 4 prismarine_shard 21
replaceitem block ~3 ~-3 ~2 slot.container 5 prismarine_crystals 18
replaceitem block ~3 ~-3 ~2 slot.container 9 heart_of_the_sea 6
replaceitem block ~3 ~-3 ~2 slot.container 10 blue_ice 18
replaceitem block ~3 ~-3 ~2 slot.container 11 sponge 4
replaceitem block ~3 ~-3 ~2 slot.container 12 cooked_salmon 13
replaceitem block ~3 ~-3 ~2 slot.container 13 gold_ingot 10
replaceitem block ~3 ~-3 ~2 slot.container 14 iron_ingot 11
loot insert ~3 ~-3 ~2 loot "rsf/frozen_ocean"
loot insert ~3 ~-3 ~2 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 prismarine_bricks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 blue_ice []
fill ~0 ~1 ~-4 ~0 ~2 ~4 blue_ice []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-5 ~-6 ~8 ~5 prismarine_bricks_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-5 ~6 ~8 ~5 prismarine_bricks_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-4 ~-5 ~9 ~4 prismarine_bricks_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-4 ~5 ~9 ~4 prismarine_bricks_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-4 ~4 ~9 ~4 prismarine_brick_slab []
fill ~0 ~10 ~-5 ~0 ~10 ~5 blue_ice []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~5 ~-7 sea_lantern []
setblock ~-8 ~6 ~-7 sea_lantern []
fill ~-8 ~0 ~7 ~-8 ~5 ~7 sea_lantern []
setblock ~-8 ~6 ~7 sea_lantern []
fill ~8 ~0 ~-7 ~8 ~5 ~-7 sea_lantern []
setblock ~8 ~6 ~-7 sea_lantern []
fill ~8 ~0 ~7 ~8 ~5 ~7 sea_lantern []
setblock ~8 ~6 ~7 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 8x6x6) ---
fill ~-2 ~0 ~6 ~-2 ~9 ~6 dark_prismarine []
setblock ~-2 ~10 ~6 blue_ice []
setblock ~-2 ~11 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-4 ~1 ~3 crafting_table []
setblock ~-3 ~1 ~3 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 prismarine_shard 16
replaceitem block ~-4 ~1 ~2 slot.container 1 prismarine_crystals 13
replaceitem block ~-4 ~1 ~2 slot.container 2 nautilus_shell 5
replaceitem block ~-4 ~1 ~2 slot.container 3 bone 13
replaceitem block ~-4 ~1 ~2 slot.container 4 rotten_flesh 16
replaceitem block ~-4 ~1 ~2 slot.container 5 wet_sponge 9
replaceitem block ~-4 ~1 ~2 slot.container 9 emerald 6
replaceitem block ~-4 ~1 ~2 slot.container 10 diamond 5
replaceitem block ~-4 ~1 ~2 slot.container 11 golden_apple 6
replaceitem block ~-4 ~1 ~2 slot.container 12 sea_lantern 11
replaceitem block ~-4 ~1 ~2 slot.container 13 heart_of_the_sea 7
replaceitem block ~-4 ~1 ~2 slot.container 14 blue_ice 12
loot insert ~-4 ~1 ~2 loot "rsf/frozen_ocean"
summon elder_guardian ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
