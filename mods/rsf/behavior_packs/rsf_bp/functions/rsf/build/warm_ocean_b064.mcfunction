# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2752/4224 | 主题内编号: b064/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·U型冥庭守墓人陵园 (warm_ocean_crypt_courtyard_graveyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[trial_pit] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 prismarine [] replace water
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 prismarine [] replace air
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 prismarine_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 dark_prismarine []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 prismarine []
setblock ~0 ~0 ~0 gold_block []

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

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 prismarine []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 prismarine []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-7 ~-6 ~7 ~7 prismarine_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-7 ~6 ~7 ~7 prismarine_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-6 ~-5 ~8 ~6 prismarine_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-6 ~5 ~8 ~6 prismarine_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~4 ~8 ~6 prismarine_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 prismarine_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 cobblestone_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x9x3) ---
fill ~-7 ~0 ~-3 ~-7 ~5 ~-3 prismarine_bricks []
fill ~7 ~0 ~-3 ~7 ~5 ~-3 prismarine_bricks []
setblock ~-7 ~6 ~-3 sea_lantern []
setblock ~7 ~6 ~-3 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 sea_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~5 composter []
setblock ~2 ~1 ~5 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 prismarine_shard 16
replaceitem block ~-4 ~1 ~5 slot.container 1 prismarine_crystals 13
replaceitem block ~-4 ~1 ~5 slot.container 2 nautilus_shell 5
replaceitem block ~-4 ~1 ~5 slot.container 3 rotten_flesh 15
replaceitem block ~-4 ~1 ~5 slot.container 4 wet_sponge 8
replaceitem block ~-4 ~1 ~5 slot.container 5 copper_ingot 13
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_ingot 9
replaceitem block ~-4 ~1 ~5 slot.container 10 emerald 7
replaceitem block ~-4 ~1 ~5 slot.container 11 golden_apple 5
replaceitem block ~-4 ~1 ~5 slot.container 12 sea_lantern 10
replaceitem block ~-4 ~1 ~5 slot.container 13 heart_of_the_sea 6
replaceitem block ~-4 ~1 ~5 slot.container 14 conduit 7
loot insert ~-4 ~1 ~5 loot "rsf/warm_ocean"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 nautilus_shell 8
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 18
replaceitem block ~4 ~1 ~5 slot.container 2 wet_sponge 11
replaceitem block ~4 ~1 ~5 slot.container 3 copper_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 4 ink_sac 9
replaceitem block ~4 ~1 ~5 slot.container 5 trident 3
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 10 emerald 5
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 3
replaceitem block ~4 ~1 ~5 slot.container 12 sea_lantern 8
replaceitem block ~4 ~1 ~5 slot.container 13 heart_of_the_sea 4
replaceitem block ~4 ~1 ~5 slot.container 14 conduit 5
loot insert ~4 ~1 ~5 loot "rsf/warm_ocean"
loot insert ~4 ~1 ~5 loot "chests/underwater_ruin_big"
summon pufferfish ~0 ~1 ~-1
summon tropicalfish ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
