# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2801/4224 | 主题内编号: b113/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·八角全采光生态温室 (warm_ocean_conservatory_glass_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[gabled_stairs] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 prismarine_bricks [] replace water
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 prismarine_bricks [] replace air
fill ~-5 ~1 ~-6 ~5 ~9 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 prismarine_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 prismarine []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 cut_sandstone []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 dark_prismarine []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 sea_lantern []
setblock ~-2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-3 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~-2 ~-3 ~3 slot.container 1 wet_sponge 5
replaceitem block ~-2 ~-3 ~3 slot.container 2 copper_ingot 10
replaceitem block ~-2 ~-3 ~3 slot.container 3 ink_sac 11
replaceitem block ~-2 ~-3 ~3 slot.container 4 trident 5
replaceitem block ~-2 ~-3 ~3 slot.container 5 prismarine_shard 21
replaceitem block ~-2 ~-3 ~3 slot.container 9 sea_lantern 8
replaceitem block ~-2 ~-3 ~3 slot.container 10 heart_of_the_sea 4
replaceitem block ~-2 ~-3 ~3 slot.container 11 conduit 5
replaceitem block ~-2 ~-3 ~3 slot.container 12 sponge 9
replaceitem block ~-2 ~-3 ~3 slot.container 13 cooked_cod 16
replaceitem block ~-2 ~-3 ~3 slot.container 14 cooked_salmon 10
loot insert ~-2 ~-3 ~3 loot "rsf/warm_ocean"
loot insert ~-2 ~-3 ~3 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~7 ~5 prismarine_bricks []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 air []
fill ~4 ~1 ~5 ~4 ~8 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 sea_lantern []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 sea_lantern []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 sea_lantern []
fill ~3 ~1 ~4 ~3 ~7 ~4 sea_lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-6 ~-7 ~7 ~6 prismarine_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-6 ~7 ~7 ~6 prismarine_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-5 ~-6 ~8 ~5 prismarine_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-5 ~6 ~8 ~5 prismarine_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~5 ~8 ~5 prismarine_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 prismarine_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 dark_prismarine []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 sea_lantern []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 sea_lantern []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 prismarine_brick_slab []
setblock ~0 ~3 ~-7 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 6x6x2) ---
fill ~-6 ~0 ~1 ~-6 ~4 ~1 prismarine_bricks []
fill ~6 ~0 ~1 ~6 ~4 ~1 prismarine_bricks []
setblock ~-6 ~5 ~1 sea_lantern []
setblock ~6 ~5 ~1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 prismarine_crystals 13
replaceitem block ~3 ~1 ~4 slot.container 1 nautilus_shell 5
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 3 wet_sponge 8
replaceitem block ~3 ~1 ~4 slot.container 4 copper_ingot 13
replaceitem block ~3 ~1 ~4 slot.container 5 ink_sac 14
replaceitem block ~3 ~1 ~4 slot.container 9 cooked_cod 11
replaceitem block ~3 ~1 ~4 slot.container 10 cooked_salmon 12
replaceitem block ~3 ~1 ~4 slot.container 11 gold_ingot 11
replaceitem block ~3 ~1 ~4 slot.container 12 iron_ingot 12
replaceitem block ~3 ~1 ~4 slot.container 13 emerald 10
replaceitem block ~3 ~1 ~4 slot.container 14 golden_apple 8
loot insert ~3 ~1 ~4 loot "rsf/warm_ocean"
summon tropicalfish ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon elder_guardian ~0 ~-3 ~0
