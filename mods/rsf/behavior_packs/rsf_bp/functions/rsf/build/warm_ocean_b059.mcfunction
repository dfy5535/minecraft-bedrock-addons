# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2747/4224 | 主题内编号: b059/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·阶梯金字塔法老墓室 (warm_ocean_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 5格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 dark_prismarine []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 prismarine []
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 prismarine_bricks []
setblock ~0 ~-7 ~0 gold_block []
fill ~0 ~-6 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 sea_lantern []
setblock ~2 ~-6 ~0 sea_lantern []
setblock ~0 ~-4 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-5 slot.container 0 copper_ingot 10
replaceitem block ~0 ~-4 ~-5 slot.container 1 ink_sac 11
replaceitem block ~0 ~-4 ~-5 slot.container 2 trident 5
replaceitem block ~0 ~-4 ~-5 slot.container 3 prismarine_shard 21
replaceitem block ~0 ~-4 ~-5 slot.container 4 prismarine_crystals 18
replaceitem block ~0 ~-4 ~-5 slot.container 5 nautilus_shell 10
replaceitem block ~0 ~-4 ~-5 slot.container 9 emerald 11
replaceitem block ~0 ~-4 ~-5 slot.container 10 golden_apple 2
replaceitem block ~0 ~-4 ~-5 slot.container 11 sea_lantern 7
replaceitem block ~0 ~-4 ~-5 slot.container 12 heart_of_the_sea 3
replaceitem block ~0 ~-4 ~-5 slot.container 13 conduit 4
replaceitem block ~0 ~-4 ~-5 slot.container 14 sponge 8
loot insert ~0 ~-4 ~-5 loot "rsf/warm_ocean"
loot insert ~0 ~-4 ~-5 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 stone_bricks []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 prismarine_bricks []
fill ~-4 ~5 ~-5 ~4 ~7 ~5 prismarine []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 prismarine_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-4 ~7 ~-1 ~-4 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~4 ~-9 sea_lantern []
setblock ~-8 ~5 ~-9 sea_lantern []
fill ~-8 ~0 ~9 ~-8 ~4 ~9 sea_lantern []
setblock ~-8 ~5 ~9 sea_lantern []
fill ~8 ~0 ~-9 ~8 ~4 ~-9 sea_lantern []
setblock ~8 ~5 ~-9 sea_lantern []
fill ~8 ~0 ~9 ~8 ~4 ~9 sea_lantern []
setblock ~8 ~5 ~9 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-8 ~0 ~-2 ~-8 ~5 ~-2 prismarine_bricks []
fill ~8 ~0 ~-2 ~8 ~5 ~-2 prismarine_bricks []
setblock ~-8 ~6 ~-2 sea_lantern []
setblock ~8 ~6 ~-2 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 sea_lantern []
fill ~-5 ~1 ~6 ~-1 ~2 ~6 barrel ["facing_direction"=2]
setblock ~0 ~1 ~6 crafting_table []
setblock ~0 ~1 ~0 diamond_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 1 wet_sponge 8
replaceitem block ~5 ~1 ~6 slot.container 2 copper_ingot 13
replaceitem block ~5 ~1 ~6 slot.container 3 ink_sac 14
replaceitem block ~5 ~1 ~6 slot.container 4 trident 8
replaceitem block ~5 ~1 ~6 slot.container 5 prismarine_shard 16
replaceitem block ~5 ~1 ~6 slot.container 9 conduit 4
replaceitem block ~5 ~1 ~6 slot.container 10 sponge 8
replaceitem block ~5 ~1 ~6 slot.container 11 cooked_cod 15
replaceitem block ~5 ~1 ~6 slot.container 12 cooked_salmon 16
replaceitem block ~5 ~1 ~6 slot.container 13 gold_ingot 8
replaceitem block ~5 ~1 ~6 slot.container 14 iron_ingot 9
loot insert ~5 ~1 ~6 loot "rsf/warm_ocean"
summon tropicalfish ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon elder_guardian ~0 ~-4 ~0
