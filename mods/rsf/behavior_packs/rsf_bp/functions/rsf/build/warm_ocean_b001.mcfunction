# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2689/4224 | 主题内编号: b001/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·三层阶梯圣火祭坛 (warm_ocean_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 prismarine_bricks [] replace water
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 prismarine_bricks [] replace air
fill ~-5 ~1 ~-6 ~5 ~8 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 prismarine_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 prismarine []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 cut_sandstone []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 dark_prismarine []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 sea_lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 copper_ingot 10
replaceitem block ~2 ~-3 ~3 slot.container 1 ink_sac 11
replaceitem block ~2 ~-3 ~3 slot.container 2 trident 5
replaceitem block ~2 ~-3 ~3 slot.container 3 prismarine_shard 21
replaceitem block ~2 ~-3 ~3 slot.container 4 prismarine_crystals 18
replaceitem block ~2 ~-3 ~3 slot.container 5 nautilus_shell 10
replaceitem block ~2 ~-3 ~3 slot.container 9 conduit 5
replaceitem block ~2 ~-3 ~3 slot.container 10 sponge 9
replaceitem block ~2 ~-3 ~3 slot.container 11 cooked_cod 16
replaceitem block ~2 ~-3 ~3 slot.container 12 cooked_salmon 10
replaceitem block ~2 ~-3 ~3 slot.container 13 gold_ingot 9
replaceitem block ~2 ~-3 ~3 slot.container 14 iron_ingot 10
loot insert ~2 ~-3 ~3 loot "rsf/warm_ocean"
loot insert ~2 ~-3 ~3 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 prismarine_bricks []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 dark_prismarine []
fill ~-2 ~5 ~-3 ~2 ~6 ~3 dark_prismarine []
fill ~-2 ~1 ~-3 ~2 ~5 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 prismarine_bricks_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-4 ~6 ~-5 ~-4 ~8 ~-5 sea_lantern []
setblock ~-4 ~9 ~-5 sea_lantern []
fill ~-4 ~6 ~5 ~-4 ~8 ~5 sea_lantern []
setblock ~-4 ~9 ~5 sea_lantern []
fill ~4 ~6 ~-5 ~4 ~8 ~-5 sea_lantern []
setblock ~4 ~9 ~-5 sea_lantern []
fill ~4 ~6 ~5 ~4 ~8 ~5 sea_lantern []
setblock ~4 ~9 ~5 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 dark_prismarine []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 6x8x5) ---
fill ~-6 ~0 ~-1 ~-6 ~7 ~-1 prismarine_bricks []
fill ~6 ~0 ~-1 ~6 ~7 ~-1 prismarine_bricks []
setblock ~-6 ~8 ~-1 sea_lantern []
setblock ~6 ~8 ~-1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 sea_lantern []
setblock ~-4 ~1 ~5 crafting_table []
setblock ~-3 ~1 ~5 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 prismarine_crystals 13
replaceitem block ~3 ~1 ~4 slot.container 1 nautilus_shell 5
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 3 wet_sponge 8
replaceitem block ~3 ~1 ~4 slot.container 4 copper_ingot 13
replaceitem block ~3 ~1 ~4 slot.container 5 ink_sac 14
replaceitem block ~3 ~1 ~4 slot.container 9 emerald 6
replaceitem block ~3 ~1 ~4 slot.container 10 golden_apple 4
replaceitem block ~3 ~1 ~4 slot.container 11 sea_lantern 9
replaceitem block ~3 ~1 ~4 slot.container 12 heart_of_the_sea 5
replaceitem block ~3 ~1 ~4 slot.container 13 conduit 6
replaceitem block ~3 ~1 ~4 slot.container 14 sponge 10
loot insert ~3 ~1 ~4 loot "rsf/warm_ocean"
summon guardian ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
summon dolphin ~1 ~1 ~1
