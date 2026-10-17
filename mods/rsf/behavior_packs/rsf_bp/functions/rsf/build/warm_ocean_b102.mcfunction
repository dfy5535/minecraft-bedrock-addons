# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2790/4224 | 主题内编号: b102/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·双子箭塔联防碉楼 (warm_ocean_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 dark_prismarine [] replace water
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 dark_prismarine [] replace air
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 dark_prismarine_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cut_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 dark_prismarine []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-4 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-4 ~3 sea_lantern []
setblock ~4 ~-4 ~-3 sea_lantern []
setblock ~4 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-2 ~3 slot.container 0 prismarine_shard 21
replaceitem block ~4 ~-2 ~3 slot.container 1 prismarine_crystals 18
replaceitem block ~4 ~-2 ~3 slot.container 2 nautilus_shell 10
replaceitem block ~4 ~-2 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~-2 ~3 slot.container 4 wet_sponge 5
replaceitem block ~4 ~-2 ~3 slot.container 5 copper_ingot 10
replaceitem block ~4 ~-2 ~3 slot.container 9 sponge 10
replaceitem block ~4 ~-2 ~3 slot.container 10 cooked_cod 10
replaceitem block ~4 ~-2 ~3 slot.container 11 cooked_salmon 11
replaceitem block ~4 ~-2 ~3 slot.container 12 gold_ingot 10
replaceitem block ~4 ~-2 ~3 slot.container 13 iron_ingot 11
replaceitem block ~4 ~-2 ~3 slot.container 14 emerald 9
loot insert ~4 ~-2 ~3 loot "rsf/warm_ocean"
loot insert ~4 ~-2 ~3 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~9 ~5 dark_prismarine []
fill ~2 ~1 ~-5 ~6 ~9 ~5 dark_prismarine []
fill ~-5 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~5 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 prismarine_bricks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 stone_brick_slab []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 prismarine []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 prismarine_slab []
setblock ~0 ~11 ~0 diamond_block []
setblock ~0 ~12 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~7 ~-2 sea_lantern []
fill ~-7 ~0 ~2 ~-7 ~7 ~2 sea_lantern []
fill ~7 ~0 ~-2 ~7 ~7 ~-2 sea_lantern []
fill ~7 ~0 ~2 ~7 ~7 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~-8 ~0 ~0 ~-8 ~8 ~0 prismarine_bricks []
fill ~8 ~0 ~0 ~8 ~8 ~0 prismarine_bricks []
setblock ~-8 ~9 ~0 sea_lantern []
setblock ~8 ~9 ~0 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~7 ~0 sea_lantern []
setblock ~-5 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ink_sac 14
replaceitem block ~-5 ~1 ~4 slot.container 1 trident 8
replaceitem block ~-5 ~1 ~4 slot.container 2 prismarine_shard 16
replaceitem block ~-5 ~1 ~4 slot.container 3 prismarine_crystals 13
replaceitem block ~-5 ~1 ~4 slot.container 4 nautilus_shell 5
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 9 heart_of_the_sea 5
replaceitem block ~-5 ~1 ~4 slot.container 10 conduit 6
replaceitem block ~-5 ~1 ~4 slot.container 11 sponge 10
replaceitem block ~-5 ~1 ~4 slot.container 12 cooked_cod 10
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_salmon 11
replaceitem block ~-5 ~1 ~4 slot.container 14 gold_ingot 10
loot insert ~-5 ~1 ~4 loot "rsf/warm_ocean"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 prismarine_shard 19
replaceitem block ~5 ~1 ~4 slot.container 1 prismarine_crystals 16
replaceitem block ~5 ~1 ~4 slot.container 2 nautilus_shell 8
replaceitem block ~5 ~1 ~4 slot.container 3 rotten_flesh 18
replaceitem block ~5 ~1 ~4 slot.container 4 wet_sponge 11
replaceitem block ~5 ~1 ~4 slot.container 5 copper_ingot 8
replaceitem block ~5 ~1 ~4 slot.container 9 heart_of_the_sea 3
replaceitem block ~5 ~1 ~4 slot.container 10 conduit 4
replaceitem block ~5 ~1 ~4 slot.container 11 sponge 8
replaceitem block ~5 ~1 ~4 slot.container 12 cooked_cod 15
replaceitem block ~5 ~1 ~4 slot.container 13 cooked_salmon 16
replaceitem block ~5 ~1 ~4 slot.container 14 gold_ingot 8
loot insert ~5 ~1 ~4 loot "rsf/warm_ocean"
loot insert ~5 ~1 ~4 loot "chests/underwater_ruin_big"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
