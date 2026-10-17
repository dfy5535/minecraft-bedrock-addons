# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2730/4224 | 主题内编号: b042/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·地底铁栏死斗深坑 (warm_ocean_arena_sunken_pit)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 dark_prismarine [] replace water
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 dark_prismarine [] replace air
fill ~-6 ~1 ~-7 ~6 ~7 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 dark_prismarine_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cut_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 prismarine []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
setblock ~-2 ~-5 ~0 blast_furnace []
setblock ~2 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 sea_lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 wet_sponge 5
replaceitem block ~2 ~-3 ~3 slot.container 1 copper_ingot 10
replaceitem block ~2 ~-3 ~3 slot.container 2 ink_sac 11
replaceitem block ~2 ~-3 ~3 slot.container 3 trident 5
replaceitem block ~2 ~-3 ~3 slot.container 4 prismarine_shard 21
replaceitem block ~2 ~-3 ~3 slot.container 5 prismarine_crystals 18
replaceitem block ~2 ~-3 ~3 slot.container 9 sponge 6
replaceitem block ~2 ~-3 ~3 slot.container 10 cooked_cod 13
replaceitem block ~2 ~-3 ~3 slot.container 11 cooked_salmon 14
replaceitem block ~2 ~-3 ~3 slot.container 12 gold_ingot 13
replaceitem block ~2 ~-3 ~3 slot.container 13 iron_ingot 14
replaceitem block ~2 ~-3 ~3 slot.container 14 emerald 5
loot insert ~2 ~-3 ~3 loot "rsf/warm_ocean"
loot insert ~2 ~-3 ~3 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 dark_prismarine []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 prismarine_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 prismarine_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~5 ~-6 ~-5 ~7 ~-6 sea_lantern []
setblock ~-5 ~8 ~-6 sea_lantern []
fill ~-5 ~5 ~6 ~-5 ~7 ~6 sea_lantern []
setblock ~-5 ~8 ~6 sea_lantern []
fill ~5 ~5 ~-6 ~5 ~7 ~-6 sea_lantern []
setblock ~5 ~8 ~-6 sea_lantern []
fill ~5 ~5 ~6 ~5 ~7 ~6 sea_lantern []
setblock ~5 ~8 ~6 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 cobblestone_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~-7 ~0 ~-1 ~-7 ~8 ~-1 prismarine_bricks []
fill ~7 ~0 ~-1 ~7 ~8 ~-1 prismarine_bricks []
setblock ~-7 ~9 ~-1 sea_lantern []
setblock ~7 ~9 ~-1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 sea_lantern []
setblock ~0 ~1 ~0 emerald_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 nautilus_shell 5
replaceitem block ~-4 ~1 ~5 slot.container 1 rotten_flesh 15
replaceitem block ~-4 ~1 ~5 slot.container 2 wet_sponge 8
replaceitem block ~-4 ~1 ~5 slot.container 3 copper_ingot 13
replaceitem block ~-4 ~1 ~5 slot.container 4 ink_sac 14
replaceitem block ~-4 ~1 ~5 slot.container 5 trident 8
replaceitem block ~-4 ~1 ~5 slot.container 9 heart_of_the_sea 1
replaceitem block ~-4 ~1 ~5 slot.container 10 conduit 2
replaceitem block ~-4 ~1 ~5 slot.container 11 sponge 6
replaceitem block ~-4 ~1 ~5 slot.container 12 cooked_cod 13
replaceitem block ~-4 ~1 ~5 slot.container 13 cooked_salmon 14
replaceitem block ~-4 ~1 ~5 slot.container 14 gold_ingot 13
loot insert ~-4 ~1 ~5 loot "rsf/warm_ocean"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 wet_sponge 11
replaceitem block ~4 ~1 ~5 slot.container 1 copper_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 2 ink_sac 9
replaceitem block ~4 ~1 ~5 slot.container 3 trident 3
replaceitem block ~4 ~1 ~5 slot.container 4 prismarine_shard 19
replaceitem block ~4 ~1 ~5 slot.container 5 prismarine_crystals 16
replaceitem block ~4 ~1 ~5 slot.container 9 heart_of_the_sea 6
replaceitem block ~4 ~1 ~5 slot.container 10 conduit 7
replaceitem block ~4 ~1 ~5 slot.container 11 sponge 4
replaceitem block ~4 ~1 ~5 slot.container 12 cooked_cod 11
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_salmon 12
replaceitem block ~4 ~1 ~5 slot.container 14 gold_ingot 11
loot insert ~4 ~1 ~5 loot "rsf/warm_ocean"
loot insert ~4 ~1 ~5 loot "chests/underwater_ruin_big"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
