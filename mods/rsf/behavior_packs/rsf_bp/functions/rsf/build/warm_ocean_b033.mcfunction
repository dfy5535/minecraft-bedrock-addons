# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2721/4224 | 主题内编号: b033/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·太阳金顶高耸方尖碑 (warm_ocean_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[battlement_flat] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 9x11 | 地上高度 11格 | 地下深度 4格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 prismarine_bricks [] replace water
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 prismarine_bricks [] replace air
fill ~-4 ~1 ~-5 ~4 ~13 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 prismarine_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 prismarine []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 cut_sandstone []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 dark_prismarine []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 dark_prismarine []
setblock ~0 ~-6 ~0 emerald_block []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 sea_lantern []
setblock ~2 ~-5 ~0 sea_lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 rotten_flesh 12
replaceitem block ~0 ~-3 ~-2 slot.container 1 wet_sponge 5
replaceitem block ~0 ~-3 ~-2 slot.container 2 copper_ingot 10
replaceitem block ~0 ~-3 ~-2 slot.container 3 ink_sac 11
replaceitem block ~0 ~-3 ~-2 slot.container 4 trident 5
replaceitem block ~0 ~-3 ~-2 slot.container 5 prismarine_shard 21
replaceitem block ~0 ~-3 ~-2 slot.container 9 sea_lantern 7
replaceitem block ~0 ~-3 ~-2 slot.container 10 heart_of_the_sea 3
replaceitem block ~0 ~-3 ~-2 slot.container 11 conduit 4
replaceitem block ~0 ~-3 ~-2 slot.container 12 sponge 8
replaceitem block ~0 ~-3 ~-2 slot.container 13 cooked_cod 15
replaceitem block ~0 ~-3 ~-2 slot.container 14 cooked_salmon 16
loot insert ~0 ~-3 ~-2 loot "rsf/warm_ocean"
loot insert ~0 ~-3 ~-2 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-3 ~1 ~-4 ~3 ~2 ~4 prismarine_bricks []
fill ~-2 ~3 ~-3 ~2 ~4 ~3 dark_prismarine []
fill ~-1 ~5 ~-2 ~1 ~11 ~2 dark_prismarine []
fill ~-1 ~1 ~-2 ~1 ~10 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 prismarine_bricks_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-5 ~5 ~7 ~5 prismarine_bricks []
fill ~-5 ~8 ~-5 ~5 ~8 ~5 cobblestone_wall []
fill ~-4 ~8 ~-4 ~4 ~8 ~4 air []
setblock ~-5 ~8 ~-5 sea_lantern []
setblock ~-5 ~9 ~-5 sea_lantern []
setblock ~-5 ~8 ~5 sea_lantern []
setblock ~-5 ~9 ~5 sea_lantern []
setblock ~5 ~8 ~-5 sea_lantern []
setblock ~5 ~9 ~-5 sea_lantern []
setblock ~5 ~8 ~5 sea_lantern []
setblock ~5 ~9 ~5 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-5 ~0 ~-6 ~-5 ~4 ~-6 sea_lantern []
setblock ~-5 ~5 ~-6 sea_lantern []
fill ~-5 ~0 ~6 ~-5 ~4 ~6 sea_lantern []
setblock ~-5 ~5 ~6 sea_lantern []
fill ~5 ~0 ~-6 ~5 ~4 ~-6 sea_lantern []
setblock ~5 ~5 ~-6 sea_lantern []
fill ~5 ~0 ~6 ~5 ~4 ~6 sea_lantern []
setblock ~5 ~5 ~6 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 5x6x2) ---
fill ~-5 ~0 ~1 ~-5 ~4 ~1 prismarine_bricks []
fill ~5 ~0 ~1 ~5 ~4 ~1 prismarine_bricks []
setblock ~-5 ~5 ~1 sea_lantern []
setblock ~5 ~5 ~1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~10 ~0 sea_lantern []
setblock ~0 ~1 ~0 sponge []
setblock ~0 ~2 ~0 sea_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 prismarine_crystals 13
replaceitem block ~2 ~1 ~3 slot.container 1 nautilus_shell 5
replaceitem block ~2 ~1 ~3 slot.container 2 rotten_flesh 15
replaceitem block ~2 ~1 ~3 slot.container 3 wet_sponge 8
replaceitem block ~2 ~1 ~3 slot.container 4 copper_ingot 13
replaceitem block ~2 ~1 ~3 slot.container 5 ink_sac 14
replaceitem block ~2 ~1 ~3 slot.container 9 cooked_cod 15
replaceitem block ~2 ~1 ~3 slot.container 10 cooked_salmon 16
replaceitem block ~2 ~1 ~3 slot.container 11 gold_ingot 8
replaceitem block ~2 ~1 ~3 slot.container 12 iron_ingot 9
replaceitem block ~2 ~1 ~3 slot.container 13 emerald 7
replaceitem block ~2 ~1 ~3 slot.container 14 golden_apple 5
loot insert ~2 ~1 ~3 loot "rsf/warm_ocean"
summon dolphin ~0 ~1 ~-1
summon pufferfish ~-1 ~1 ~1
