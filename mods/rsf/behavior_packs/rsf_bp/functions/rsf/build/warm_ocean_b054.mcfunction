# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2742/4224 | 主题内编号: b054/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·切石与伐木工匠棚屋 (warm_ocean_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 dark_prismarine [] replace water
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 dark_prismarine [] replace air
fill ~-6 ~1 ~-6 ~6 ~8 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 dark_prismarine_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cut_sandstone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 prismarine_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~7 ~5 dark_prismarine []
fill ~2 ~1 ~-5 ~5 ~7 ~5 dark_prismarine []
fill ~-4 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 prismarine_bricks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-6 ~-6 ~7 ~6 dark_prismarine_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-6 ~6 ~7 ~6 dark_prismarine_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~-5 ~8 ~5 dark_prismarine_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-5 ~5 ~8 ~5 dark_prismarine_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-5 ~4 ~8 ~5 dark_prismarine_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 prismarine_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 prismarine_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 sea_lantern []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 sea_lantern []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 prismarine_slab []
setblock ~0 ~3 ~-7 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~-7 ~0 ~2 ~-7 ~5 ~2 prismarine_bricks []
fill ~7 ~0 ~2 ~7 ~5 ~2 prismarine_bricks []
setblock ~-7 ~6 ~2 sea_lantern []
setblock ~7 ~6 ~2 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~9 ~0 sea_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 ink_sac 14
replaceitem block ~-4 ~1 ~4 slot.container 1 trident 8
replaceitem block ~-4 ~1 ~4 slot.container 2 prismarine_shard 16
replaceitem block ~-4 ~1 ~4 slot.container 3 prismarine_crystals 13
replaceitem block ~-4 ~1 ~4 slot.container 4 nautilus_shell 5
replaceitem block ~-4 ~1 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~-4 ~1 ~4 slot.container 9 iron_ingot 13
replaceitem block ~-4 ~1 ~4 slot.container 10 emerald 11
replaceitem block ~-4 ~1 ~4 slot.container 11 golden_apple 2
replaceitem block ~-4 ~1 ~4 slot.container 12 sea_lantern 7
replaceitem block ~-4 ~1 ~4 slot.container 13 heart_of_the_sea 3
replaceitem block ~-4 ~1 ~4 slot.container 14 conduit 4
loot insert ~-4 ~1 ~4 loot "rsf/warm_ocean"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 prismarine_shard 19
replaceitem block ~4 ~1 ~4 slot.container 1 prismarine_crystals 16
replaceitem block ~4 ~1 ~4 slot.container 2 nautilus_shell 8
replaceitem block ~4 ~1 ~4 slot.container 3 rotten_flesh 18
replaceitem block ~4 ~1 ~4 slot.container 4 wet_sponge 11
replaceitem block ~4 ~1 ~4 slot.container 5 copper_ingot 8
replaceitem block ~4 ~1 ~4 slot.container 9 iron_ingot 11
replaceitem block ~4 ~1 ~4 slot.container 10 emerald 9
replaceitem block ~4 ~1 ~4 slot.container 11 golden_apple 7
replaceitem block ~4 ~1 ~4 slot.container 12 sea_lantern 12
replaceitem block ~4 ~1 ~4 slot.container 13 heart_of_the_sea 1
replaceitem block ~4 ~1 ~4 slot.container 14 conduit 2
loot insert ~4 ~1 ~4 loot "rsf/warm_ocean"
loot insert ~4 ~1 ~4 loot "chests/underwater_ruin_big"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
