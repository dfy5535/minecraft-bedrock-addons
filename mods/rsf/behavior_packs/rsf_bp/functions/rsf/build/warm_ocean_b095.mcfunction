# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2783/4224 | 主题内编号: b095/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·双子灯笼守卫神龛 (warm_ocean_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 dark_prismarine []
setblock ~0 ~0 ~0 diamond_block []

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

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~8 ~4 stone_bricks []
fill ~2 ~1 ~-4 ~5 ~8 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 prismarine_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 stone_brick_slab []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 prismarine []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 prismarine_slab []
setblock ~0 ~11 ~0 diamond_block []
setblock ~0 ~12 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 sea_lantern []
setblock ~-7 ~5 ~-6 sea_lantern []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 sea_lantern []
setblock ~-7 ~5 ~6 sea_lantern []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 sea_lantern []
setblock ~7 ~5 ~-6 sea_lantern []
fill ~7 ~0 ~6 ~7 ~4 ~6 sea_lantern []
setblock ~7 ~5 ~6 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x5x4) ---
fill ~-7 ~0 ~-1 ~-7 ~6 ~-1 prismarine_bricks []
fill ~7 ~0 ~-1 ~7 ~6 ~-1 prismarine_bricks []
setblock ~-7 ~7 ~-1 sea_lantern []
setblock ~7 ~7 ~-1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 sea_lantern []
setblock ~0 ~1 ~0 sponge []
setblock ~0 ~2 ~0 sea_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 trident 8
replaceitem block ~4 ~1 ~3 slot.container 1 prismarine_shard 16
replaceitem block ~4 ~1 ~3 slot.container 2 prismarine_crystals 13
replaceitem block ~4 ~1 ~3 slot.container 3 nautilus_shell 5
replaceitem block ~4 ~1 ~3 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~3 slot.container 5 wet_sponge 8
replaceitem block ~4 ~1 ~3 slot.container 9 sea_lantern 10
replaceitem block ~4 ~1 ~3 slot.container 10 heart_of_the_sea 6
replaceitem block ~4 ~1 ~3 slot.container 11 conduit 7
replaceitem block ~4 ~1 ~3 slot.container 12 sponge 4
replaceitem block ~4 ~1 ~3 slot.container 13 cooked_cod 11
replaceitem block ~4 ~1 ~3 slot.container 14 cooked_salmon 12
loot insert ~4 ~1 ~3 loot "rsf/warm_ocean"
summon tropicalfish ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon elder_guardian ~0 ~2 ~0
