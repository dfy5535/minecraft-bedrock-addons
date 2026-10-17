# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2776/4224 | 主题内编号: b088/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·矿车铁轨转运仓库 (warm_ocean_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x17 | 地上高度 6格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 prismarine [] replace water
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 prismarine [] replace air
fill ~-5 ~1 ~-8 ~5 ~8 ~8 air []
fill ~-5 ~0 ~-8 ~5 ~0 ~8 prismarine_slab [] replace air
fill ~-4 ~0 ~-7 ~4 ~0 ~7 dark_prismarine []
fill ~-3 ~0 ~-6 ~3 ~0 ~6 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 dark_prismarine []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 sea_lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 trident 5
replaceitem block ~-2 ~-4 ~3 slot.container 1 prismarine_shard 21
replaceitem block ~-2 ~-4 ~3 slot.container 2 prismarine_crystals 18
replaceitem block ~-2 ~-4 ~3 slot.container 3 nautilus_shell 10
replaceitem block ~-2 ~-4 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~-2 ~-4 ~3 slot.container 5 wet_sponge 5
replaceitem block ~-2 ~-4 ~3 slot.container 9 gold_ingot 14
replaceitem block ~-2 ~-4 ~3 slot.container 10 iron_ingot 8
replaceitem block ~-2 ~-4 ~3 slot.container 11 emerald 6
replaceitem block ~-2 ~-4 ~3 slot.container 12 golden_apple 4
replaceitem block ~-2 ~-4 ~3 slot.container 13 sea_lantern 9
replaceitem block ~-2 ~-4 ~3 slot.container 14 heart_of_the_sea 5
loot insert ~-2 ~-4 ~3 loot "rsf/warm_ocean"
loot insert ~-2 ~-4 ~3 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-7 ~4 ~6 ~7 prismarine []
fill ~-3 ~1 ~-6 ~3 ~5 ~6 air []
fill ~-4 ~1 ~-7 ~-4 ~6 ~-7 sea_lantern []
fill ~-4 ~1 ~7 ~-4 ~6 ~7 sea_lantern []
fill ~4 ~1 ~-7 ~4 ~6 ~-7 sea_lantern []
fill ~4 ~1 ~7 ~4 ~6 ~7 sea_lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~7 ~-8 ~-5 ~7 ~8 prismarine_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-8 ~5 ~7 ~8 prismarine_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-7 ~-4 ~8 ~7 prismarine_stairs ["weirdo_direction"=0]
fill ~4 ~8 ~-7 ~4 ~8 ~7 prismarine_stairs ["weirdo_direction"=1]
fill ~-3 ~8 ~-7 ~3 ~8 ~7 prismarine_slab []
fill ~0 ~9 ~-8 ~0 ~9 ~8 prismarine_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 prismarine_bricks []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 sea_lantern []
setblock ~2 ~4 ~-10 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 6x10x2) ---
fill ~-6 ~0 ~-1 ~-6 ~4 ~-1 prismarine_bricks []
fill ~6 ~0 ~-1 ~6 ~4 ~-1 prismarine_bricks []
setblock ~-6 ~5 ~-1 sea_lantern []
setblock ~6 ~5 ~-1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~9 ~0 sea_lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~6 slot.container 0 prismarine_shard 16
replaceitem block ~-3 ~1 ~6 slot.container 1 prismarine_crystals 13
replaceitem block ~-3 ~1 ~6 slot.container 2 nautilus_shell 5
replaceitem block ~-3 ~1 ~6 slot.container 3 rotten_flesh 15
replaceitem block ~-3 ~1 ~6 slot.container 4 wet_sponge 8
replaceitem block ~-3 ~1 ~6 slot.container 5 copper_ingot 13
replaceitem block ~-3 ~1 ~6 slot.container 9 golden_apple 6
replaceitem block ~-3 ~1 ~6 slot.container 10 sea_lantern 11
replaceitem block ~-3 ~1 ~6 slot.container 11 heart_of_the_sea 7
replaceitem block ~-3 ~1 ~6 slot.container 12 conduit 1
replaceitem block ~-3 ~1 ~6 slot.container 13 sponge 5
replaceitem block ~-3 ~1 ~6 slot.container 14 cooked_cod 12
loot insert ~-3 ~1 ~6 loot "rsf/warm_ocean"
setblock ~3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~6 slot.container 0 nautilus_shell 8
replaceitem block ~3 ~1 ~6 slot.container 1 rotten_flesh 18
replaceitem block ~3 ~1 ~6 slot.container 2 wet_sponge 11
replaceitem block ~3 ~1 ~6 slot.container 3 copper_ingot 8
replaceitem block ~3 ~1 ~6 slot.container 4 ink_sac 9
replaceitem block ~3 ~1 ~6 slot.container 5 trident 3
replaceitem block ~3 ~1 ~6 slot.container 9 golden_apple 4
replaceitem block ~3 ~1 ~6 slot.container 10 sea_lantern 9
replaceitem block ~3 ~1 ~6 slot.container 11 heart_of_the_sea 5
replaceitem block ~3 ~1 ~6 slot.container 12 conduit 6
replaceitem block ~3 ~1 ~6 slot.container 13 sponge 10
replaceitem block ~3 ~1 ~6 slot.container 14 cooked_cod 10
loot insert ~3 ~1 ~6 loot "rsf/warm_ocean"
loot insert ~3 ~1 ~6 loot "chests/underwater_ruin_big"
summon pufferfish ~0 ~1 ~-1
summon tropicalfish ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
