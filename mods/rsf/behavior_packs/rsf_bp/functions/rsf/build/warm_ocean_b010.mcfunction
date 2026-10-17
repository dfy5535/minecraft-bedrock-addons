# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2698/4224 | 主题内编号: b010/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·十字交叉深层地牢 (warm_ocean_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x17 | 地上高度 5格 | 地下深度 5格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 dark_prismarine [] replace water
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 dark_prismarine [] replace air
fill ~-7 ~1 ~-8 ~7 ~7 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 dark_prismarine_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cut_sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-6 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 diamond_block []
setblock ~-3 ~-6 ~-4 sea_lantern []
setblock ~3 ~-6 ~4 sea_lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~0 ~-4 ~4 slot.container 1 wet_sponge 5
replaceitem block ~0 ~-4 ~4 slot.container 2 copper_ingot 10
replaceitem block ~0 ~-4 ~4 slot.container 3 ink_sac 11
replaceitem block ~0 ~-4 ~4 slot.container 4 trident 5
replaceitem block ~0 ~-4 ~4 slot.container 5 prismarine_shard 21
replaceitem block ~0 ~-4 ~4 slot.container 9 sea_lantern 7
replaceitem block ~0 ~-4 ~4 slot.container 10 heart_of_the_sea 3
replaceitem block ~0 ~-4 ~4 slot.container 11 conduit 4
replaceitem block ~0 ~-4 ~4 slot.container 12 sponge 8
replaceitem block ~0 ~-4 ~4 slot.container 13 cooked_cod 15
replaceitem block ~0 ~-4 ~4 slot.container 14 cooked_salmon 16
loot insert ~0 ~-4 ~4 loot "rsf/warm_ocean"
loot insert ~0 ~-4 ~4 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~5 ~7 dark_prismarine []
fill ~-6 ~1 ~-2 ~6 ~5 ~2 dark_prismarine []
fill ~-1 ~1 ~-6 ~1 ~4 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~4 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~5 ~-7 ~6 ~5 ~7 dark_prismarine_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-6 ~4 ~-1 ~-6 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~4 ~-9 sea_lantern []
setblock ~-8 ~5 ~-9 sea_lantern []
fill ~-8 ~0 ~9 ~-8 ~4 ~9 sea_lantern []
setblock ~-8 ~5 ~9 sea_lantern []
fill ~8 ~0 ~-9 ~8 ~4 ~-9 sea_lantern []
setblock ~8 ~5 ~-9 sea_lantern []
fill ~8 ~0 ~9 ~8 ~4 ~9 sea_lantern []
setblock ~8 ~5 ~9 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 8x10x4) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 prismarine_bricks []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 prismarine_bricks []
setblock ~-8 ~7 ~-2 sea_lantern []
setblock ~8 ~7 ~-2 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 sea_lantern []
setblock ~0 ~1 ~0 emerald_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 nautilus_shell 5
replaceitem block ~-5 ~1 ~6 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~6 slot.container 2 wet_sponge 8
replaceitem block ~-5 ~1 ~6 slot.container 3 copper_ingot 13
replaceitem block ~-5 ~1 ~6 slot.container 4 ink_sac 14
replaceitem block ~-5 ~1 ~6 slot.container 5 trident 8
replaceitem block ~-5 ~1 ~6 slot.container 9 cooked_salmon 13
replaceitem block ~-5 ~1 ~6 slot.container 10 gold_ingot 12
replaceitem block ~-5 ~1 ~6 slot.container 11 iron_ingot 13
replaceitem block ~-5 ~1 ~6 slot.container 12 emerald 11
replaceitem block ~-5 ~1 ~6 slot.container 13 golden_apple 2
replaceitem block ~-5 ~1 ~6 slot.container 14 sea_lantern 7
loot insert ~-5 ~1 ~6 loot "rsf/warm_ocean"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 wet_sponge 11
replaceitem block ~5 ~1 ~6 slot.container 1 copper_ingot 8
replaceitem block ~5 ~1 ~6 slot.container 2 ink_sac 9
replaceitem block ~5 ~1 ~6 slot.container 3 trident 3
replaceitem block ~5 ~1 ~6 slot.container 4 prismarine_shard 19
replaceitem block ~5 ~1 ~6 slot.container 5 prismarine_crystals 16
replaceitem block ~5 ~1 ~6 slot.container 9 cooked_salmon 11
replaceitem block ~5 ~1 ~6 slot.container 10 gold_ingot 10
replaceitem block ~5 ~1 ~6 slot.container 11 iron_ingot 11
replaceitem block ~5 ~1 ~6 slot.container 12 emerald 9
replaceitem block ~5 ~1 ~6 slot.container 13 golden_apple 7
replaceitem block ~5 ~1 ~6 slot.container 14 sea_lantern 12
loot insert ~5 ~1 ~6 loot "rsf/warm_ocean"
loot insert ~5 ~1 ~6 loot "chests/underwater_ruin_big"
summon pufferfish ~0 ~1 ~-1
summon tropicalfish ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
