# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2886/4224 | 主题内编号: b070/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·风化坍塌阶梯祭台 (frozen_ocean_ruin_crumbled_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 prismarine [] replace water
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 prismarine [] replace air
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 prismarine_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_ice []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 prismarine_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 dark_prismarine []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 sea_lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 nautilus_shell 10
replaceitem block ~4 ~-3 ~3 slot.container 1 bone 10
replaceitem block ~4 ~-3 ~3 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~-3 ~3 slot.container 3 wet_sponge 6
replaceitem block ~4 ~-3 ~3 slot.container 4 copper_ingot 11
replaceitem block ~4 ~-3 ~3 slot.container 5 trident 5
replaceitem block ~4 ~-3 ~3 slot.container 9 sponge 9
replaceitem block ~4 ~-3 ~3 slot.container 10 cooked_salmon 18
replaceitem block ~4 ~-3 ~3 slot.container 11 gold_ingot 8
replaceitem block ~4 ~-3 ~3 slot.container 12 iron_ingot 9
replaceitem block ~4 ~-3 ~3 slot.container 13 emerald 6
replaceitem block ~4 ~-3 ~3 slot.container 14 diamond 5
loot insert ~4 ~-3 ~3 loot "rsf/frozen_ocean"
loot insert ~4 ~-3 ~3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 prismarine []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 dark_prismarine []
fill ~-4 ~5 ~-3 ~4 ~7 ~3 dark_prismarine []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 prismarine_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 prismarine_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 sea_lantern []
setblock ~0 ~4 ~-7 blue_ice []
setblock ~0 ~5 ~-7 sea_lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 sea_lantern []
setblock ~0 ~4 ~7 blue_ice []
setblock ~0 ~5 ~7 sea_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 sea_lantern []
setblock ~-8 ~4 ~0 blue_ice []
setblock ~-8 ~5 ~0 sea_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 sea_lantern []
setblock ~8 ~4 ~0 blue_ice []
setblock ~8 ~5 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x6x5) ---
fill ~-2 ~0 ~6 ~-2 ~8 ~6 dark_prismarine []
setblock ~-2 ~9 ~6 blue_ice []
setblock ~-2 ~10 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 copper_ingot 14
replaceitem block ~-5 ~1 ~3 slot.container 1 trident 8
replaceitem block ~-5 ~1 ~3 slot.container 2 prismarine_shard 16
replaceitem block ~-5 ~1 ~3 slot.container 3 prismarine_crystals 13
replaceitem block ~-5 ~1 ~3 slot.container 4 nautilus_shell 5
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 13
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 4
replaceitem block ~-5 ~1 ~3 slot.container 10 sea_lantern 9
replaceitem block ~-5 ~1 ~3 slot.container 11 heart_of_the_sea 5
replaceitem block ~-5 ~1 ~3 slot.container 12 blue_ice 17
replaceitem block ~-5 ~1 ~3 slot.container 13 sponge 10
replaceitem block ~-5 ~1 ~3 slot.container 14 cooked_salmon 12
loot insert ~-5 ~1 ~3 loot "rsf/frozen_ocean"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
