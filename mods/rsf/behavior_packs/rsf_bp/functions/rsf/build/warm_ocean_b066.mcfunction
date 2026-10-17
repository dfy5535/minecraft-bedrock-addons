# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2754/4224 | 主题内编号: b066/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·崩塌角楼古堡残垣 (warm_ocean_ruin_shattered_keep)
# 建筑构造: 主体[fortress_citadel] + 屋顶[ruined_skylight] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 dark_prismarine [] replace water
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 dark_prismarine [] replace air
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 dark_prismarine_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cut_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 prismarine_bricks []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 sea_lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 prismarine_crystals 18
replaceitem block ~3 ~-4 ~5 slot.container 1 nautilus_shell 10
replaceitem block ~3 ~-4 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~3 ~-4 ~5 slot.container 3 wet_sponge 5
replaceitem block ~3 ~-4 ~5 slot.container 4 copper_ingot 10
replaceitem block ~3 ~-4 ~5 slot.container 5 ink_sac 11
replaceitem block ~3 ~-4 ~5 slot.container 9 sea_lantern 11
replaceitem block ~3 ~-4 ~5 slot.container 10 heart_of_the_sea 7
replaceitem block ~3 ~-4 ~5 slot.container 11 conduit 1
replaceitem block ~3 ~-4 ~5 slot.container 12 sponge 5
replaceitem block ~3 ~-4 ~5 slot.container 13 cooked_cod 12
replaceitem block ~3 ~-4 ~5 slot.container 14 cooked_salmon 13
loot insert ~3 ~-4 ~5 loot "rsf/warm_ocean"
loot insert ~3 ~-4 ~5 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 dark_prismarine []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~9 ~-5 prismarine_bricks []
setblock ~-5 ~10 ~-6 sea_lantern []
fill ~-5 ~1 ~5 ~-4 ~9 ~6 prismarine_bricks []
setblock ~-5 ~10 ~5 sea_lantern []
fill ~4 ~1 ~-6 ~5 ~9 ~-5 prismarine_bricks []
setblock ~4 ~10 ~-6 sea_lantern []
fill ~4 ~1 ~5 ~5 ~9 ~6 prismarine_bricks []
setblock ~4 ~10 ~5 sea_lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 dark_prismarine_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-5 ~6 ~-1 ~-5 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~6 ~-2 sea_lantern []
fill ~-6 ~0 ~2 ~-6 ~6 ~2 sea_lantern []
fill ~6 ~0 ~-2 ~6 ~6 ~-2 sea_lantern []
fill ~6 ~0 ~2 ~6 ~6 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~-7 ~0 ~-1 ~-7 ~7 ~-1 prismarine_bricks []
fill ~7 ~0 ~-1 ~7 ~7 ~-1 prismarine_bricks []
setblock ~-7 ~8 ~-1 sea_lantern []
setblock ~7 ~8 ~-1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 nautilus_shell 5
replaceitem block ~-4 ~1 ~5 slot.container 1 rotten_flesh 15
replaceitem block ~-4 ~1 ~5 slot.container 2 wet_sponge 8
replaceitem block ~-4 ~1 ~5 slot.container 3 copper_ingot 13
replaceitem block ~-4 ~1 ~5 slot.container 4 ink_sac 14
replaceitem block ~-4 ~1 ~5 slot.container 5 trident 8
replaceitem block ~-4 ~1 ~5 slot.container 9 sponge 7
replaceitem block ~-4 ~1 ~5 slot.container 10 cooked_cod 14
replaceitem block ~-4 ~1 ~5 slot.container 11 cooked_salmon 15
replaceitem block ~-4 ~1 ~5 slot.container 12 gold_ingot 14
replaceitem block ~-4 ~1 ~5 slot.container 13 iron_ingot 8
replaceitem block ~-4 ~1 ~5 slot.container 14 emerald 6
loot insert ~-4 ~1 ~5 loot "rsf/warm_ocean"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 wet_sponge 11
replaceitem block ~4 ~1 ~5 slot.container 1 copper_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 2 ink_sac 9
replaceitem block ~4 ~1 ~5 slot.container 3 trident 3
replaceitem block ~4 ~1 ~5 slot.container 4 prismarine_shard 19
replaceitem block ~4 ~1 ~5 slot.container 5 prismarine_crystals 16
replaceitem block ~4 ~1 ~5 slot.container 9 sponge 5
replaceitem block ~4 ~1 ~5 slot.container 10 cooked_cod 12
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_salmon 13
replaceitem block ~4 ~1 ~5 slot.container 12 gold_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 13 iron_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 14 emerald 11
loot insert ~4 ~1 ~5 loot "rsf/warm_ocean"
loot insert ~4 ~1 ~5 loot "chests/underwater_ruin_big"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
