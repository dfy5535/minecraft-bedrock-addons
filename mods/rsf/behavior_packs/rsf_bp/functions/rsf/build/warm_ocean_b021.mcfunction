# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2709/4224 | 主题内编号: b021/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·U型合院天井秘宝房 (warm_ocean_chamber_courtyard_villa)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 prismarine_bricks [] replace water
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 prismarine_bricks [] replace air
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 prismarine_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 prismarine []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cut_sandstone []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 prismarine_bricks []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 sea_lantern []
setblock ~-3 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-4 ~4 slot.container 0 prismarine_shard 21
replaceitem block ~-3 ~-4 ~4 slot.container 1 prismarine_crystals 18
replaceitem block ~-3 ~-4 ~4 slot.container 2 nautilus_shell 10
replaceitem block ~-3 ~-4 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~-3 ~-4 ~4 slot.container 4 wet_sponge 5
replaceitem block ~-3 ~-4 ~4 slot.container 5 copper_ingot 10
replaceitem block ~-3 ~-4 ~4 slot.container 9 sponge 5
replaceitem block ~-3 ~-4 ~4 slot.container 10 cooked_cod 12
replaceitem block ~-3 ~-4 ~4 slot.container 11 cooked_salmon 13
replaceitem block ~-3 ~-4 ~4 slot.container 12 gold_ingot 12
replaceitem block ~-3 ~-4 ~4 slot.container 13 iron_ingot 13
replaceitem block ~-3 ~-4 ~4 slot.container 14 emerald 11
loot insert ~-3 ~-4 ~4 loot "rsf/warm_ocean"
loot insert ~-3 ~-4 ~4 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 prismarine_bricks []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 cut_sandstone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 prismarine_brick_slab []
fill ~-4 ~7 ~-5 ~4 ~8 ~5 dark_prismarine []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 dark_prismarine_slab []
setblock ~0 ~10 ~0 sponge []
setblock ~0 ~11 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 cobblestone_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~-7 ~0 ~2 ~-7 ~7 ~2 prismarine_bricks []
fill ~7 ~0 ~2 ~7 ~7 ~2 prismarine_bricks []
setblock ~-7 ~8 ~2 sea_lantern []
setblock ~7 ~8 ~2 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 sea_lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 copper_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 1 ink_sac 14
replaceitem block ~4 ~1 ~5 slot.container 2 trident 8
replaceitem block ~4 ~1 ~5 slot.container 3 prismarine_shard 16
replaceitem block ~4 ~1 ~5 slot.container 4 prismarine_crystals 13
replaceitem block ~4 ~1 ~5 slot.container 5 nautilus_shell 5
replaceitem block ~4 ~1 ~5 slot.container 9 emerald 5
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 3
replaceitem block ~4 ~1 ~5 slot.container 11 sea_lantern 8
replaceitem block ~4 ~1 ~5 slot.container 12 heart_of_the_sea 4
replaceitem block ~4 ~1 ~5 slot.container 13 conduit 5
replaceitem block ~4 ~1 ~5 slot.container 14 sponge 9
loot insert ~4 ~1 ~5 loot "rsf/warm_ocean"
summon dolphin ~0 ~1 ~-1
summon pufferfish ~-1 ~1 ~1
