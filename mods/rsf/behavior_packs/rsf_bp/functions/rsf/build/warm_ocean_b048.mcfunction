# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2736/4224 | 主题内编号: b048/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·阶梯王座巅峰试炼台 (warm_ocean_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 prismarine [] replace water
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 prismarine [] replace air
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 prismarine_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 dark_prismarine []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 prismarine_bricks []
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 prismarine_bricks []
setblock ~0 ~-5 ~0 sponge []
fill ~0 ~-4 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 sea_lantern []
setblock ~2 ~-4 ~0 sea_lantern []
setblock ~0 ~-2 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-5 slot.container 0 nautilus_shell 10
replaceitem block ~0 ~-2 ~-5 slot.container 1 rotten_flesh 12
replaceitem block ~0 ~-2 ~-5 slot.container 2 wet_sponge 5
replaceitem block ~0 ~-2 ~-5 slot.container 3 copper_ingot 10
replaceitem block ~0 ~-2 ~-5 slot.container 4 ink_sac 11
replaceitem block ~0 ~-2 ~-5 slot.container 5 trident 5
replaceitem block ~0 ~-2 ~-5 slot.container 9 cooked_salmon 12
replaceitem block ~0 ~-2 ~-5 slot.container 10 gold_ingot 11
replaceitem block ~0 ~-2 ~-5 slot.container 11 iron_ingot 12
replaceitem block ~0 ~-2 ~-5 slot.container 12 emerald 10
replaceitem block ~0 ~-2 ~-5 slot.container 13 golden_apple 8
replaceitem block ~0 ~-2 ~-5 slot.container 14 sea_lantern 6
loot insert ~0 ~-2 ~-5 loot "rsf/warm_ocean"
loot insert ~0 ~-2 ~-5 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 prismarine []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 prismarine_bricks []
fill ~-4 ~5 ~-5 ~4 ~7 ~5 prismarine_bricks []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 prismarine_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-7 ~-6 ~9 ~-7 sea_lantern []
setblock ~-6 ~10 ~-7 sea_lantern []
fill ~-6 ~7 ~7 ~-6 ~9 ~7 sea_lantern []
setblock ~-6 ~10 ~7 sea_lantern []
fill ~6 ~7 ~-7 ~6 ~9 ~-7 sea_lantern []
setblock ~6 ~10 ~-7 sea_lantern []
fill ~6 ~7 ~7 ~6 ~9 ~7 sea_lantern []
setblock ~6 ~10 ~7 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 prismarine_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 sea_lantern []
setblock ~2 ~4 ~-8 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~-8 ~0 ~1 ~-8 ~4 ~1 prismarine_bricks []
fill ~8 ~0 ~1 ~8 ~4 ~1 prismarine_bricks []
setblock ~-8 ~5 ~1 sea_lantern []
setblock ~8 ~5 ~1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 sea_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 prismarine_shard 16
replaceitem block ~-5 ~1 ~6 slot.container 1 prismarine_crystals 13
replaceitem block ~-5 ~1 ~6 slot.container 2 nautilus_shell 5
replaceitem block ~-5 ~1 ~6 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~6 slot.container 4 wet_sponge 8
replaceitem block ~-5 ~1 ~6 slot.container 5 copper_ingot 13
replaceitem block ~-5 ~1 ~6 slot.container 9 golden_apple 8
replaceitem block ~-5 ~1 ~6 slot.container 10 sea_lantern 6
replaceitem block ~-5 ~1 ~6 slot.container 11 heart_of_the_sea 2
replaceitem block ~-5 ~1 ~6 slot.container 12 conduit 3
replaceitem block ~-5 ~1 ~6 slot.container 13 sponge 7
replaceitem block ~-5 ~1 ~6 slot.container 14 cooked_cod 14
loot insert ~-5 ~1 ~6 loot "rsf/warm_ocean"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 nautilus_shell 8
replaceitem block ~5 ~1 ~6 slot.container 1 rotten_flesh 18
replaceitem block ~5 ~1 ~6 slot.container 2 wet_sponge 11
replaceitem block ~5 ~1 ~6 slot.container 3 copper_ingot 8
replaceitem block ~5 ~1 ~6 slot.container 4 ink_sac 9
replaceitem block ~5 ~1 ~6 slot.container 5 trident 3
replaceitem block ~5 ~1 ~6 slot.container 9 golden_apple 6
replaceitem block ~5 ~1 ~6 slot.container 10 sea_lantern 11
replaceitem block ~5 ~1 ~6 slot.container 11 heart_of_the_sea 7
replaceitem block ~5 ~1 ~6 slot.container 12 conduit 1
replaceitem block ~5 ~1 ~6 slot.container 13 sponge 5
replaceitem block ~5 ~1 ~6 slot.container 14 cooked_cod 12
loot insert ~5 ~1 ~6 loot "rsf/warm_ocean"
loot insert ~5 ~1 ~6 loot "chests/underwater_ruin_big"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
