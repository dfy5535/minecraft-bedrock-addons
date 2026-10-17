# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2700/4224 | 主题内编号: b012/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·双子暗门地底宝库 (warm_ocean_dungeon_twin_vault)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 prismarine [] replace water
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 prismarine [] replace air
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 prismarine_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 dark_prismarine []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 prismarine []
setblock ~0 ~0 ~0 gold_block []

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
fill ~-6 ~1 ~-5 ~-2 ~7 ~5 prismarine []
fill ~2 ~1 ~-5 ~6 ~7 ~5 prismarine []
fill ~-5 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 prismarine_bricks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-6 ~-7 ~7 ~6 prismarine_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-6 ~7 ~7 ~6 prismarine_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-5 ~-6 ~8 ~5 prismarine_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-5 ~6 ~8 ~5 prismarine_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~5 ~8 ~5 prismarine_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 prismarine_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 sea_lantern []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 sea_lantern []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 sea_lantern []
fill ~7 ~0 ~2 ~7 ~5 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~-8 ~0 ~0 ~-8 ~8 ~0 prismarine_bricks []
fill ~8 ~0 ~0 ~8 ~8 ~0 prismarine_bricks []
setblock ~-8 ~9 ~0 sea_lantern []
setblock ~8 ~9 ~0 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-4 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 wet_sponge 8
replaceitem block ~-5 ~1 ~4 slot.container 1 copper_ingot 13
replaceitem block ~-5 ~1 ~4 slot.container 2 ink_sac 14
replaceitem block ~-5 ~1 ~4 slot.container 3 trident 8
replaceitem block ~-5 ~1 ~4 slot.container 4 prismarine_shard 16
replaceitem block ~-5 ~1 ~4 slot.container 5 prismarine_crystals 13
replaceitem block ~-5 ~1 ~4 slot.container 9 heart_of_the_sea 6
replaceitem block ~-5 ~1 ~4 slot.container 10 conduit 7
replaceitem block ~-5 ~1 ~4 slot.container 11 sponge 4
replaceitem block ~-5 ~1 ~4 slot.container 12 cooked_cod 11
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_salmon 12
replaceitem block ~-5 ~1 ~4 slot.container 14 gold_ingot 11
loot insert ~-5 ~1 ~4 loot "rsf/warm_ocean"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ink_sac 9
replaceitem block ~5 ~1 ~4 slot.container 1 trident 3
replaceitem block ~5 ~1 ~4 slot.container 2 prismarine_shard 19
replaceitem block ~5 ~1 ~4 slot.container 3 prismarine_crystals 16
replaceitem block ~5 ~1 ~4 slot.container 4 nautilus_shell 8
replaceitem block ~5 ~1 ~4 slot.container 5 rotten_flesh 18
replaceitem block ~5 ~1 ~4 slot.container 9 heart_of_the_sea 4
replaceitem block ~5 ~1 ~4 slot.container 10 conduit 5
replaceitem block ~5 ~1 ~4 slot.container 11 sponge 9
replaceitem block ~5 ~1 ~4 slot.container 12 cooked_cod 16
replaceitem block ~5 ~1 ~4 slot.container 13 cooked_salmon 10
replaceitem block ~5 ~1 ~4 slot.container 14 gold_ingot 9
loot insert ~5 ~1 ~4 loot "rsf/warm_ocean"
loot insert ~5 ~1 ~4 loot "chests/underwater_ruin_big"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
