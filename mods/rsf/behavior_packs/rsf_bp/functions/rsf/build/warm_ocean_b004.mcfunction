# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2692/4224 | 主题内编号: b004/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·双子火盆高台神坛 (warm_ocean_altar_twin_brazier)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 prismarine [] replace water
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 prismarine [] replace air
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 prismarine_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 dark_prismarine []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 prismarine []
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

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 prismarine []
fill ~2 ~1 ~-5 ~6 ~8 ~5 prismarine []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 prismarine_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 sea_lantern []
setblock ~-6 ~10 ~-5 sea_lantern []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 sea_lantern []
setblock ~-6 ~10 ~5 sea_lantern []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 sea_lantern []
setblock ~6 ~10 ~-5 sea_lantern []
fill ~6 ~7 ~5 ~6 ~9 ~5 sea_lantern []
setblock ~6 ~10 ~5 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 prismarine_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 sea_lantern []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 sea_lantern []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 prismarine_slab []
setblock ~0 ~3 ~-7 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-8 ~0 ~2 ~-8 ~5 ~2 prismarine_bricks []
fill ~8 ~0 ~2 ~8 ~5 ~2 prismarine_bricks []
setblock ~-8 ~6 ~2 sea_lantern []
setblock ~8 ~6 ~2 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 wet_sponge 8
replaceitem block ~-5 ~1 ~4 slot.container 1 copper_ingot 13
replaceitem block ~-5 ~1 ~4 slot.container 2 ink_sac 14
replaceitem block ~-5 ~1 ~4 slot.container 3 trident 8
replaceitem block ~-5 ~1 ~4 slot.container 4 prismarine_shard 16
replaceitem block ~-5 ~1 ~4 slot.container 5 prismarine_crystals 13
replaceitem block ~-5 ~1 ~4 slot.container 9 iron_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 10 emerald 10
replaceitem block ~-5 ~1 ~4 slot.container 11 golden_apple 8
replaceitem block ~-5 ~1 ~4 slot.container 12 sea_lantern 6
replaceitem block ~-5 ~1 ~4 slot.container 13 heart_of_the_sea 2
replaceitem block ~-5 ~1 ~4 slot.container 14 conduit 3
loot insert ~-5 ~1 ~4 loot "rsf/warm_ocean"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ink_sac 9
replaceitem block ~5 ~1 ~4 slot.container 1 trident 3
replaceitem block ~5 ~1 ~4 slot.container 2 prismarine_shard 19
replaceitem block ~5 ~1 ~4 slot.container 3 prismarine_crystals 16
replaceitem block ~5 ~1 ~4 slot.container 4 nautilus_shell 8
replaceitem block ~5 ~1 ~4 slot.container 5 rotten_flesh 18
replaceitem block ~5 ~1 ~4 slot.container 9 iron_ingot 10
replaceitem block ~5 ~1 ~4 slot.container 10 emerald 8
replaceitem block ~5 ~1 ~4 slot.container 11 golden_apple 6
replaceitem block ~5 ~1 ~4 slot.container 12 sea_lantern 11
replaceitem block ~5 ~1 ~4 slot.container 13 heart_of_the_sea 7
replaceitem block ~5 ~1 ~4 slot.container 14 conduit 1
loot insert ~5 ~1 ~4 loot "rsf/warm_ocean"
loot insert ~5 ~1 ~4 loot "chests/underwater_ruin_big"
summon pufferfish ~0 ~1 ~-1
summon tropicalfish ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
