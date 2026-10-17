# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2809/4224 | 主题内编号: b121/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·卫城廊柱王座大殿与地宫 (warm_ocean_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 5格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 prismarine_bricks [] replace water
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 prismarine_bricks [] replace air
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 prismarine_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 prismarine []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cut_sandstone []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 prismarine_bricks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 sea_lantern []
setblock ~4 ~-6 ~0 sea_lantern []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 trident 5
replaceitem block ~0 ~-4 ~5 slot.container 1 prismarine_shard 21
replaceitem block ~0 ~-4 ~5 slot.container 2 prismarine_crystals 18
replaceitem block ~0 ~-4 ~5 slot.container 3 nautilus_shell 10
replaceitem block ~0 ~-4 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~0 ~-4 ~5 slot.container 5 wet_sponge 5
replaceitem block ~0 ~-4 ~5 slot.container 9 sea_lantern 7
replaceitem block ~0 ~-4 ~5 slot.container 10 heart_of_the_sea 3
replaceitem block ~0 ~-4 ~5 slot.container 11 conduit 4
replaceitem block ~0 ~-4 ~5 slot.container 12 sponge 8
replaceitem block ~0 ~-4 ~5 slot.container 13 cooked_cod 15
replaceitem block ~0 ~-4 ~5 slot.container 14 cooked_salmon 16
loot insert ~0 ~-4 ~5 loot "rsf/warm_ocean"
loot insert ~0 ~-4 ~5 loot "chests/underwater_ruin_big"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 trident 3
replaceitem block ~0 ~-4 ~-5 slot.container 1 prismarine_shard 19
replaceitem block ~0 ~-4 ~-5 slot.container 2 prismarine_crystals 16
replaceitem block ~0 ~-4 ~-5 slot.container 3 nautilus_shell 8
replaceitem block ~0 ~-4 ~-5 slot.container 4 rotten_flesh 18
replaceitem block ~0 ~-4 ~-5 slot.container 5 wet_sponge 11
replaceitem block ~0 ~-4 ~-5 slot.container 9 sea_lantern 6
replaceitem block ~0 ~-4 ~-5 slot.container 10 heart_of_the_sea 2
replaceitem block ~0 ~-4 ~-5 slot.container 11 conduit 3
replaceitem block ~0 ~-4 ~-5 slot.container 12 sponge 7
replaceitem block ~0 ~-4 ~-5 slot.container 13 cooked_cod 14
replaceitem block ~0 ~-4 ~-5 slot.container 14 cooked_salmon 15
loot insert ~0 ~-4 ~-5 loot "rsf/warm_ocean"
loot insert ~0 ~-4 ~-5 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-6 ~1 ~-1 ~6 ~8 ~7 prismarine_bricks []
fill ~-5 ~1 ~0 ~5 ~7 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~8 ~-7 sea_lantern []
fill ~-4 ~1 ~-7 ~-4 ~8 ~-7 sea_lantern []
fill ~-2 ~1 ~-7 ~-2 ~8 ~-7 sea_lantern []
fill ~0 ~1 ~-7 ~0 ~8 ~-7 sea_lantern []
fill ~2 ~1 ~-7 ~2 ~8 ~-7 sea_lantern []
fill ~4 ~1 ~-7 ~4 ~8 ~-7 sea_lantern []
fill ~6 ~1 ~-7 ~6 ~8 ~-7 sea_lantern []
fill ~-6 ~8 ~-7 ~6 ~8 ~-1 dark_prismarine []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~9 ~-8 ~-7 ~9 ~8 prismarine_bricks_stairs ["weirdo_direction"=0]
fill ~7 ~9 ~-8 ~7 ~9 ~8 prismarine_bricks_stairs ["weirdo_direction"=1]
fill ~-6 ~10 ~-7 ~-6 ~10 ~7 prismarine_bricks_stairs ["weirdo_direction"=0]
fill ~6 ~10 ~-7 ~6 ~10 ~7 prismarine_bricks_stairs ["weirdo_direction"=1]
fill ~-5 ~10 ~-7 ~5 ~10 ~7 prismarine_brick_slab []
fill ~0 ~11 ~-8 ~0 ~11 ~8 dark_prismarine []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 prismarine_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 sea_lantern []
setblock ~2 ~4 ~-8 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 8x10x5) ---
fill ~-8 ~0 ~-3 ~-8 ~7 ~-3 prismarine_bricks []
fill ~8 ~0 ~-3 ~8 ~7 ~-3 prismarine_bricks []
setblock ~-8 ~8 ~-3 sea_lantern []
setblock ~8 ~8 ~-3 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 prismarine_crystals 13
replaceitem block ~5 ~1 ~6 slot.container 1 nautilus_shell 5
replaceitem block ~5 ~1 ~6 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 3 wet_sponge 8
replaceitem block ~5 ~1 ~6 slot.container 4 copper_ingot 13
replaceitem block ~5 ~1 ~6 slot.container 5 ink_sac 14
replaceitem block ~5 ~1 ~6 slot.container 9 emerald 7
replaceitem block ~5 ~1 ~6 slot.container 10 golden_apple 5
replaceitem block ~5 ~1 ~6 slot.container 11 sea_lantern 10
replaceitem block ~5 ~1 ~6 slot.container 12 heart_of_the_sea 6
replaceitem block ~5 ~1 ~6 slot.container 13 conduit 7
replaceitem block ~5 ~1 ~6 slot.container 14 sponge 4
loot insert ~5 ~1 ~6 loot "rsf/warm_ocean"
summon guardian ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
summon dolphin ~1 ~1 ~1
