# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2813/4224 | 主题内编号: b125/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·巨型阶梯金字塔神王殿 (warm_ocean_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 5格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 prismarine_bricks [] replace water
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 prismarine_bricks [] replace air
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 prismarine_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 prismarine []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cut_sandstone []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 dark_prismarine []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 obsidian []
setblock ~0 ~-6 ~0 sponge []
setblock ~0 ~-7 ~0 sea_lantern []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~4 ~-4 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-4 ~0 slot.container 0 copper_ingot 10
replaceitem block ~4 ~-4 ~0 slot.container 1 ink_sac 11
replaceitem block ~4 ~-4 ~0 slot.container 2 trident 5
replaceitem block ~4 ~-4 ~0 slot.container 3 prismarine_shard 21
replaceitem block ~4 ~-4 ~0 slot.container 4 prismarine_crystals 18
replaceitem block ~4 ~-4 ~0 slot.container 5 nautilus_shell 10
replaceitem block ~4 ~-4 ~0 slot.container 9 gold_ingot 12
replaceitem block ~4 ~-4 ~0 slot.container 10 iron_ingot 13
replaceitem block ~4 ~-4 ~0 slot.container 11 emerald 11
replaceitem block ~4 ~-4 ~0 slot.container 12 golden_apple 2
replaceitem block ~4 ~-4 ~0 slot.container 13 sea_lantern 7
replaceitem block ~4 ~-4 ~0 slot.container 14 heart_of_the_sea 3
loot insert ~4 ~-4 ~0 loot "rsf/warm_ocean"
loot insert ~4 ~-4 ~0 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 prismarine_bricks []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 dark_prismarine []
fill ~-4 ~5 ~-5 ~4 ~9 ~5 dark_prismarine []
fill ~-4 ~1 ~-5 ~4 ~8 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 prismarine_bricks_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~10 ~-7 ~6 ~10 ~7 dark_prismarine []
fill ~-5 ~11 ~-6 ~5 ~11 ~6 dark_prismarine []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 sponge []
setblock ~0 ~13 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 prismarine_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 sea_lantern []
setblock ~2 ~4 ~-8 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~-8 ~0 ~1 ~-8 ~6 ~1 prismarine_bricks []
fill ~8 ~0 ~1 ~8 ~6 ~1 prismarine_bricks []
setblock ~-8 ~7 ~1 sea_lantern []
setblock ~8 ~7 ~1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~4 ~0 sea_lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 sponge []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 copper_ingot 13
replaceitem block ~5 ~1 ~6 slot.container 1 ink_sac 14
replaceitem block ~5 ~1 ~6 slot.container 2 trident 8
replaceitem block ~5 ~1 ~6 slot.container 3 prismarine_shard 16
replaceitem block ~5 ~1 ~6 slot.container 4 prismarine_crystals 13
replaceitem block ~5 ~1 ~6 slot.container 5 nautilus_shell 5
replaceitem block ~5 ~1 ~6 slot.container 9 sea_lantern 12
replaceitem block ~5 ~1 ~6 slot.container 10 heart_of_the_sea 1
replaceitem block ~5 ~1 ~6 slot.container 11 conduit 2
replaceitem block ~5 ~1 ~6 slot.container 12 sponge 6
replaceitem block ~5 ~1 ~6 slot.container 13 cooked_cod 13
replaceitem block ~5 ~1 ~6 slot.container 14 cooked_salmon 14
loot insert ~5 ~1 ~6 loot "rsf/warm_ocean"
summon tropicalfish ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon elder_guardian ~0 ~-4 ~0
