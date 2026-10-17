# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2749/4224 | 主题内编号: b061/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·双子封土古墓地宫 (warm_ocean_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 prismarine_bricks [] replace water
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 prismarine_bricks [] replace air
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 prismarine_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cut_sandstone []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 dark_prismarine []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 dark_prismarine []
setblock ~0 ~-7 ~0 emerald_block []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 sea_lantern []
setblock ~2 ~-6 ~0 sea_lantern []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 trident 5
replaceitem block ~0 ~-4 ~-3 slot.container 1 prismarine_shard 21
replaceitem block ~0 ~-4 ~-3 slot.container 2 prismarine_crystals 18
replaceitem block ~0 ~-4 ~-3 slot.container 3 nautilus_shell 10
replaceitem block ~0 ~-4 ~-3 slot.container 4 rotten_flesh 12
replaceitem block ~0 ~-4 ~-3 slot.container 5 wet_sponge 5
replaceitem block ~0 ~-4 ~-3 slot.container 9 cooked_cod 11
replaceitem block ~0 ~-4 ~-3 slot.container 10 cooked_salmon 12
replaceitem block ~0 ~-4 ~-3 slot.container 11 gold_ingot 11
replaceitem block ~0 ~-4 ~-3 slot.container 12 iron_ingot 12
replaceitem block ~0 ~-4 ~-3 slot.container 13 emerald 10
replaceitem block ~0 ~-4 ~-3 slot.container 14 golden_apple 8
loot insert ~0 ~-4 ~-3 loot "rsf/warm_ocean"
loot insert ~0 ~-4 ~-3 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~7 ~5 prismarine_bricks []
fill ~2 ~1 ~-5 ~6 ~7 ~5 prismarine_bricks []
fill ~-5 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 dark_prismarine []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~7 ~-5 ~5 ~7 ~5 stone_brick_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-5 ~6 ~-1 ~-5 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 dark_prismarine []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 sea_lantern []
setblock ~2 ~4 ~-8 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~-8 ~0 ~-1 ~-8 ~7 ~-1 prismarine_bricks []
fill ~8 ~0 ~-1 ~8 ~7 ~-1 prismarine_bricks []
setblock ~-8 ~8 ~-1 sea_lantern []
setblock ~8 ~8 ~-1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 sea_lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 copper_ingot 13
replaceitem block ~5 ~1 ~4 slot.container 1 ink_sac 14
replaceitem block ~5 ~1 ~4 slot.container 2 trident 8
replaceitem block ~5 ~1 ~4 slot.container 3 prismarine_shard 16
replaceitem block ~5 ~1 ~4 slot.container 4 prismarine_crystals 13
replaceitem block ~5 ~1 ~4 slot.container 5 nautilus_shell 5
replaceitem block ~5 ~1 ~4 slot.container 9 emerald 10
replaceitem block ~5 ~1 ~4 slot.container 10 golden_apple 8
replaceitem block ~5 ~1 ~4 slot.container 11 sea_lantern 6
replaceitem block ~5 ~1 ~4 slot.container 12 heart_of_the_sea 2
replaceitem block ~5 ~1 ~4 slot.container 13 conduit 3
replaceitem block ~5 ~1 ~4 slot.container 14 sponge 7
loot insert ~5 ~1 ~4 loot "rsf/warm_ocean"
summon guardian ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
summon dolphin ~1 ~1 ~1
