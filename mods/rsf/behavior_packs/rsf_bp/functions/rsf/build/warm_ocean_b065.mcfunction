# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2753/4224 | 主题内编号: b065/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·断柱露天古神庙废墟 (warm_ocean_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 prismarine_bricks [] replace water
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 prismarine_bricks [] replace air
fill ~-6 ~1 ~-8 ~6 ~8 ~8 air []
fill ~-6 ~0 ~-8 ~6 ~0 ~8 prismarine_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 prismarine []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 cut_sandstone []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 dark_prismarine []
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 sea_lantern []
setblock ~3 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~5 slot.container 0 copper_ingot 10
replaceitem block ~3 ~-3 ~5 slot.container 1 ink_sac 11
replaceitem block ~3 ~-3 ~5 slot.container 2 trident 5
replaceitem block ~3 ~-3 ~5 slot.container 3 prismarine_shard 21
replaceitem block ~3 ~-3 ~5 slot.container 4 prismarine_crystals 18
replaceitem block ~3 ~-3 ~5 slot.container 5 nautilus_shell 10
replaceitem block ~3 ~-3 ~5 slot.container 9 cooked_cod 15
replaceitem block ~3 ~-3 ~5 slot.container 10 cooked_salmon 16
replaceitem block ~3 ~-3 ~5 slot.container 11 gold_ingot 8
replaceitem block ~3 ~-3 ~5 slot.container 12 iron_ingot 9
replaceitem block ~3 ~-3 ~5 slot.container 13 emerald 7
replaceitem block ~3 ~-3 ~5 slot.container 14 golden_apple 5
loot insert ~3 ~-3 ~5 loot "rsf/warm_ocean"
loot insert ~3 ~-3 ~5 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~6 ~-7 ~5 ~6 ~7 dark_prismarine []
fill ~-5 ~1 ~-7 ~-5 ~5 ~-7 sea_lantern []
fill ~-5 ~1 ~7 ~-5 ~5 ~7 sea_lantern []
fill ~-3 ~1 ~-7 ~-3 ~5 ~-7 sea_lantern []
fill ~-3 ~1 ~7 ~-3 ~5 ~7 sea_lantern []
fill ~-1 ~1 ~-7 ~-1 ~5 ~-7 sea_lantern []
fill ~-1 ~1 ~7 ~-1 ~5 ~7 sea_lantern []
fill ~1 ~1 ~-7 ~1 ~5 ~-7 sea_lantern []
fill ~1 ~1 ~7 ~1 ~5 ~7 sea_lantern []
fill ~3 ~1 ~-7 ~3 ~5 ~-7 sea_lantern []
fill ~3 ~1 ~7 ~3 ~5 ~7 sea_lantern []
fill ~5 ~1 ~-7 ~5 ~5 ~-7 sea_lantern []
fill ~5 ~1 ~7 ~5 ~5 ~7 sea_lantern []
fill ~-5 ~1 ~-5 ~-5 ~5 ~-5 sea_lantern []
fill ~5 ~1 ~-5 ~5 ~5 ~-5 sea_lantern []
fill ~-5 ~1 ~-3 ~-5 ~5 ~-3 sea_lantern []
fill ~5 ~1 ~-3 ~5 ~5 ~-3 sea_lantern []
fill ~-5 ~1 ~-1 ~-5 ~5 ~-1 sea_lantern []
fill ~5 ~1 ~-1 ~5 ~5 ~-1 sea_lantern []
fill ~-5 ~1 ~1 ~-5 ~5 ~1 sea_lantern []
fill ~5 ~1 ~1 ~5 ~5 ~1 sea_lantern []
fill ~-5 ~1 ~3 ~-5 ~5 ~3 sea_lantern []
fill ~5 ~1 ~3 ~5 ~5 ~3 sea_lantern []
fill ~-5 ~1 ~5 ~-5 ~5 ~5 sea_lantern []
fill ~5 ~1 ~5 ~5 ~5 ~5 sea_lantern []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~6 ~-7 ~5 ~6 ~7 prismarine_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-5 ~5 ~-1 ~-5 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 prismarine_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 sea_lantern []
setblock ~2 ~4 ~-8 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~-7 ~0 ~-3 ~-7 ~6 ~-3 prismarine_bricks []
fill ~7 ~0 ~-3 ~7 ~6 ~-3 prismarine_bricks []
setblock ~-7 ~7 ~-3 sea_lantern []
setblock ~7 ~7 ~-3 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 sea_lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 sponge []
setblock ~0 ~1 ~0 emerald_block []
setblock ~0 ~2 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 prismarine_crystals 13
replaceitem block ~4 ~1 ~6 slot.container 1 nautilus_shell 5
replaceitem block ~4 ~1 ~6 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~6 slot.container 3 wet_sponge 8
replaceitem block ~4 ~1 ~6 slot.container 4 copper_ingot 13
replaceitem block ~4 ~1 ~6 slot.container 5 ink_sac 14
replaceitem block ~4 ~1 ~6 slot.container 9 sea_lantern 8
replaceitem block ~4 ~1 ~6 slot.container 10 heart_of_the_sea 4
replaceitem block ~4 ~1 ~6 slot.container 11 conduit 5
replaceitem block ~4 ~1 ~6 slot.container 12 sponge 9
replaceitem block ~4 ~1 ~6 slot.container 13 cooked_cod 16
replaceitem block ~4 ~1 ~6 slot.container 14 cooked_salmon 10
loot insert ~4 ~1 ~6 loot "rsf/warm_ocean"
summon tropicalfish ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon elder_guardian ~0 ~-3 ~0
