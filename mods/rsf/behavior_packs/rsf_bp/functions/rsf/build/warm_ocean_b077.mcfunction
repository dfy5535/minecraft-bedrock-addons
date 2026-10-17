# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2765/4224 | 主题内编号: b077/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·双子鸟居图腾神道 (warm_ocean_totem_twin_spirit_gate)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 prismarine_bricks [] replace water
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 prismarine_bricks [] replace air
fill ~-6 ~1 ~-6 ~6 ~9 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 prismarine_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 prismarine []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 cut_sandstone []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 prismarine_bricks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 sea_lantern []
setblock ~-4 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-4 ~3 slot.container 0 prismarine_crystals 18
replaceitem block ~-4 ~-4 ~3 slot.container 1 nautilus_shell 10
replaceitem block ~-4 ~-4 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~-4 ~3 slot.container 3 wet_sponge 5
replaceitem block ~-4 ~-4 ~3 slot.container 4 copper_ingot 10
replaceitem block ~-4 ~-4 ~3 slot.container 5 ink_sac 11
replaceitem block ~-4 ~-4 ~3 slot.container 9 conduit 7
replaceitem block ~-4 ~-4 ~3 slot.container 10 sponge 4
replaceitem block ~-4 ~-4 ~3 slot.container 11 cooked_cod 11
replaceitem block ~-4 ~-4 ~3 slot.container 12 cooked_salmon 12
replaceitem block ~-4 ~-4 ~3 slot.container 13 gold_ingot 11
replaceitem block ~-4 ~-4 ~3 slot.container 14 iron_ingot 12
loot insert ~-4 ~-4 ~3 loot "rsf/warm_ocean"
loot insert ~-4 ~-4 ~3 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~7 ~5 prismarine_bricks []
fill ~-4 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 prismarine_brick_slab []
fill ~-4 ~8 ~-4 ~4 ~9 ~4 dark_prismarine []
fill ~-5 ~10 ~-5 ~5 ~10 ~5 dark_prismarine_slab []
setblock ~0 ~11 ~0 sponge []
setblock ~0 ~12 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 dark_prismarine []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~-7 ~0 ~0 ~-7 ~8 ~0 prismarine_bricks []
fill ~7 ~0 ~0 ~7 ~8 ~0 prismarine_bricks []
setblock ~-7 ~9 ~0 sea_lantern []
setblock ~7 ~9 ~0 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 copper_ingot 13
replaceitem block ~4 ~1 ~4 slot.container 1 ink_sac 14
replaceitem block ~4 ~1 ~4 slot.container 2 trident 8
replaceitem block ~4 ~1 ~4 slot.container 3 prismarine_shard 16
replaceitem block ~4 ~1 ~4 slot.container 4 prismarine_crystals 13
replaceitem block ~4 ~1 ~4 slot.container 5 nautilus_shell 5
replaceitem block ~4 ~1 ~4 slot.container 9 gold_ingot 8
replaceitem block ~4 ~1 ~4 slot.container 10 iron_ingot 9
replaceitem block ~4 ~1 ~4 slot.container 11 emerald 7
replaceitem block ~4 ~1 ~4 slot.container 12 golden_apple 5
replaceitem block ~4 ~1 ~4 slot.container 13 sea_lantern 10
replaceitem block ~4 ~1 ~4 slot.container 14 heart_of_the_sea 6
loot insert ~4 ~1 ~4 loot "rsf/warm_ocean"
summon tropicalfish ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon elder_guardian ~0 ~2 ~0
