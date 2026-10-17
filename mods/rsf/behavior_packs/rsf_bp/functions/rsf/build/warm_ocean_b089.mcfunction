# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2777/4224 | 主题内编号: b089/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·四柱挑檐祈愿凉亭 (warm_ocean_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 9x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 prismarine_bricks [] replace water
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 prismarine_bricks [] replace air
fill ~-4 ~1 ~-5 ~4 ~9 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 prismarine_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 prismarine []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 cut_sandstone []
setblock ~0 ~0 ~0 sponge []

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

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~7 ~4 prismarine_bricks []
fill ~-2 ~1 ~-3 ~2 ~6 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 sea_lantern []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 sea_lantern []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 sea_lantern []
fill ~3 ~1 ~4 ~3 ~7 ~4 sea_lantern []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 prismarine_brick_slab []
fill ~-2 ~8 ~-3 ~2 ~9 ~3 dark_prismarine []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 dark_prismarine_slab []
setblock ~0 ~11 ~0 sponge []
setblock ~0 ~12 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 dark_prismarine []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 sea_lantern []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 sea_lantern []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 prismarine_brick_slab []
setblock ~0 ~3 ~-6 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 5x5x3) ---
fill ~-5 ~0 ~1 ~-5 ~5 ~1 prismarine_bricks []
fill ~5 ~0 ~1 ~5 ~5 ~1 prismarine_bricks []
setblock ~-5 ~6 ~1 sea_lantern []
setblock ~5 ~6 ~1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-3 ~1 ~0 lectern []
setblock ~3 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 prismarine_crystals 13
replaceitem block ~2 ~1 ~3 slot.container 1 nautilus_shell 5
replaceitem block ~2 ~1 ~3 slot.container 2 rotten_flesh 15
replaceitem block ~2 ~1 ~3 slot.container 3 wet_sponge 8
replaceitem block ~2 ~1 ~3 slot.container 4 copper_ingot 13
replaceitem block ~2 ~1 ~3 slot.container 5 ink_sac 14
replaceitem block ~2 ~1 ~3 slot.container 9 conduit 6
replaceitem block ~2 ~1 ~3 slot.container 10 sponge 10
replaceitem block ~2 ~1 ~3 slot.container 11 cooked_cod 10
replaceitem block ~2 ~1 ~3 slot.container 12 cooked_salmon 11
replaceitem block ~2 ~1 ~3 slot.container 13 gold_ingot 10
replaceitem block ~2 ~1 ~3 slot.container 14 iron_ingot 11
loot insert ~2 ~1 ~3 loot "rsf/warm_ocean"
summon tropicalfish ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon elder_guardian ~0 ~2 ~0
