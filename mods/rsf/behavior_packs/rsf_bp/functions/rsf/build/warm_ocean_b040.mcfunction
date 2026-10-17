# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2728/4224 | 主题内编号: b040/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·崩裂远古符文石碑 (warm_ocean_obelisk_fractured_relic)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 prismarine [] replace water
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 prismarine [] replace air
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 prismarine_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 dark_prismarine []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 prismarine_bricks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 sea_lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 wet_sponge 5
replaceitem block ~2 ~-2 ~3 slot.container 1 copper_ingot 10
replaceitem block ~2 ~-2 ~3 slot.container 2 ink_sac 11
replaceitem block ~2 ~-2 ~3 slot.container 3 trident 5
replaceitem block ~2 ~-2 ~3 slot.container 4 prismarine_shard 21
replaceitem block ~2 ~-2 ~3 slot.container 5 prismarine_crystals 18
replaceitem block ~2 ~-2 ~3 slot.container 9 golden_apple 3
replaceitem block ~2 ~-2 ~3 slot.container 10 sea_lantern 8
replaceitem block ~2 ~-2 ~3 slot.container 11 heart_of_the_sea 4
replaceitem block ~2 ~-2 ~3 slot.container 12 conduit 5
replaceitem block ~2 ~-2 ~3 slot.container 13 sponge 9
replaceitem block ~2 ~-2 ~3 slot.container 14 cooked_cod 16
loot insert ~2 ~-2 ~3 loot "rsf/warm_ocean"
loot insert ~2 ~-2 ~3 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 prismarine []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 prismarine_bricks []
fill ~-2 ~5 ~-3 ~2 ~8 ~3 prismarine_bricks []
fill ~-2 ~1 ~-3 ~2 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 prismarine_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 prismarine_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-4 ~7 ~-1 ~-4 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 prismarine_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 sea_lantern []
setblock ~2 ~4 ~-8 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 6x8x4) ---
fill ~-6 ~0 ~-2 ~-6 ~6 ~-2 prismarine_bricks []
fill ~6 ~0 ~-2 ~6 ~6 ~-2 prismarine_bricks []
setblock ~-6 ~7 ~-2 sea_lantern []
setblock ~6 ~7 ~-2 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 sea_lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 prismarine_shard 16
replaceitem block ~-3 ~1 ~4 slot.container 1 prismarine_crystals 13
replaceitem block ~-3 ~1 ~4 slot.container 2 nautilus_shell 5
replaceitem block ~-3 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-3 ~1 ~4 slot.container 4 wet_sponge 8
replaceitem block ~-3 ~1 ~4 slot.container 5 copper_ingot 13
replaceitem block ~-3 ~1 ~4 slot.container 9 cooked_salmon 15
replaceitem block ~-3 ~1 ~4 slot.container 10 gold_ingot 14
replaceitem block ~-3 ~1 ~4 slot.container 11 iron_ingot 8
replaceitem block ~-3 ~1 ~4 slot.container 12 emerald 6
replaceitem block ~-3 ~1 ~4 slot.container 13 golden_apple 4
replaceitem block ~-3 ~1 ~4 slot.container 14 sea_lantern 9
loot insert ~-3 ~1 ~4 loot "rsf/warm_ocean"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 nautilus_shell 8
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 18
replaceitem block ~3 ~1 ~4 slot.container 2 wet_sponge 11
replaceitem block ~3 ~1 ~4 slot.container 3 copper_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 4 ink_sac 9
replaceitem block ~3 ~1 ~4 slot.container 5 trident 3
replaceitem block ~3 ~1 ~4 slot.container 9 cooked_salmon 13
replaceitem block ~3 ~1 ~4 slot.container 10 gold_ingot 12
replaceitem block ~3 ~1 ~4 slot.container 11 iron_ingot 13
replaceitem block ~3 ~1 ~4 slot.container 12 emerald 11
replaceitem block ~3 ~1 ~4 slot.container 13 golden_apple 2
replaceitem block ~3 ~1 ~4 slot.container 14 sea_lantern 7
loot insert ~3 ~1 ~4 loot "rsf/warm_ocean"
loot insert ~3 ~1 ~4 loot "chests/underwater_ruin_big"
summon pufferfish ~0 ~1 ~-1
summon tropicalfish ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
