# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2718/4224 | 主题内编号: b030/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·双坡顶驻军卫戍塔 (warm_ocean_tower_gabled_keep)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[trial_pit] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 dark_prismarine [] replace water
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 dark_prismarine [] replace air
fill ~-5 ~1 ~-6 ~5 ~11 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 dark_prismarine_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cut_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-6 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 diamond_block []
setblock ~-3 ~-6 ~-4 sea_lantern []
setblock ~3 ~-6 ~4 sea_lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~0 ~-4 ~4 slot.container 1 wet_sponge 5
replaceitem block ~0 ~-4 ~4 slot.container 2 copper_ingot 10
replaceitem block ~0 ~-4 ~4 slot.container 3 ink_sac 11
replaceitem block ~0 ~-4 ~4 slot.container 4 trident 5
replaceitem block ~0 ~-4 ~4 slot.container 5 prismarine_shard 21
replaceitem block ~0 ~-4 ~4 slot.container 9 sea_lantern 7
replaceitem block ~0 ~-4 ~4 slot.container 10 heart_of_the_sea 3
replaceitem block ~0 ~-4 ~4 slot.container 11 conduit 4
replaceitem block ~0 ~-4 ~4 slot.container 12 sponge 8
replaceitem block ~0 ~-4 ~4 slot.container 13 cooked_cod 15
replaceitem block ~0 ~-4 ~4 slot.container 14 cooked_salmon 16
loot insert ~0 ~-4 ~4 loot "rsf/warm_ocean"
loot insert ~0 ~-4 ~4 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-4 ~1 ~-5 ~0 ~9 ~5 dark_prismarine []
fill ~-4 ~1 ~0 ~4 ~8 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~-1 ~8 ~4 air []
fill ~-1 ~1 ~1 ~3 ~7 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~10 ~-6 ~-5 ~10 ~6 dark_prismarine_stairs ["weirdo_direction"=0]
fill ~5 ~10 ~-6 ~5 ~10 ~6 dark_prismarine_stairs ["weirdo_direction"=1]
fill ~-4 ~11 ~-5 ~-4 ~11 ~5 dark_prismarine_stairs ["weirdo_direction"=0]
fill ~4 ~11 ~-5 ~4 ~11 ~5 dark_prismarine_stairs ["weirdo_direction"=1]
fill ~-3 ~11 ~-5 ~3 ~11 ~5 dark_prismarine_slab []
fill ~0 ~12 ~-6 ~0 ~12 ~6 prismarine_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~11 ~2 stone_bricks []
fill ~5 ~1 ~-1 ~6 ~10 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~12 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~-6 ~0 ~-2 ~-6 ~6 ~-2 prismarine_bricks []
fill ~6 ~0 ~-2 ~6 ~6 ~-2 prismarine_bricks []
setblock ~-6 ~7 ~-2 sea_lantern []
setblock ~6 ~7 ~-2 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~8 ~0 sea_lantern []
setblock ~-3 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 ink_sac 14
replaceitem block ~-3 ~1 ~4 slot.container 1 trident 8
replaceitem block ~-3 ~1 ~4 slot.container 2 prismarine_shard 16
replaceitem block ~-3 ~1 ~4 slot.container 3 prismarine_crystals 13
replaceitem block ~-3 ~1 ~4 slot.container 4 nautilus_shell 5
replaceitem block ~-3 ~1 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~-3 ~1 ~4 slot.container 9 cooked_salmon 12
replaceitem block ~-3 ~1 ~4 slot.container 10 gold_ingot 11
replaceitem block ~-3 ~1 ~4 slot.container 11 iron_ingot 12
replaceitem block ~-3 ~1 ~4 slot.container 12 emerald 10
replaceitem block ~-3 ~1 ~4 slot.container 13 golden_apple 8
replaceitem block ~-3 ~1 ~4 slot.container 14 sea_lantern 6
loot insert ~-3 ~1 ~4 loot "rsf/warm_ocean"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 prismarine_shard 19
replaceitem block ~3 ~1 ~4 slot.container 1 prismarine_crystals 16
replaceitem block ~3 ~1 ~4 slot.container 2 nautilus_shell 8
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 18
replaceitem block ~3 ~1 ~4 slot.container 4 wet_sponge 11
replaceitem block ~3 ~1 ~4 slot.container 5 copper_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 9 cooked_salmon 10
replaceitem block ~3 ~1 ~4 slot.container 10 gold_ingot 9
replaceitem block ~3 ~1 ~4 slot.container 11 iron_ingot 10
replaceitem block ~3 ~1 ~4 slot.container 12 emerald 8
replaceitem block ~3 ~1 ~4 slot.container 13 golden_apple 6
replaceitem block ~3 ~1 ~4 slot.container 14 sea_lantern 11
loot insert ~3 ~1 ~4 loot "rsf/warm_ocean"
loot insert ~3 ~1 ~4 loot "chests/underwater_ruin_big"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
