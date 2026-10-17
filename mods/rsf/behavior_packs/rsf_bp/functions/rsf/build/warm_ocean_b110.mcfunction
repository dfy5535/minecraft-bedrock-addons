# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2798/4224 | 主题内编号: b110/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·双子附魔与酿造实验楼 (warm_ocean_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 dark_prismarine [] replace water
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 dark_prismarine [] replace air
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 dark_prismarine_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cut_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 sea_lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 nautilus_shell 10
replaceitem block ~4 ~-2 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~-2 ~3 slot.container 2 wet_sponge 5
replaceitem block ~4 ~-2 ~3 slot.container 3 copper_ingot 10
replaceitem block ~4 ~-2 ~3 slot.container 4 ink_sac 11
replaceitem block ~4 ~-2 ~3 slot.container 5 trident 5
replaceitem block ~4 ~-2 ~3 slot.container 9 golden_apple 3
replaceitem block ~4 ~-2 ~3 slot.container 10 sea_lantern 8
replaceitem block ~4 ~-2 ~3 slot.container 11 heart_of_the_sea 4
replaceitem block ~4 ~-2 ~3 slot.container 12 conduit 5
replaceitem block ~4 ~-2 ~3 slot.container 13 sponge 9
replaceitem block ~4 ~-2 ~3 slot.container 14 cooked_cod 16
loot insert ~4 ~-2 ~3 loot "rsf/warm_ocean"
loot insert ~4 ~-2 ~3 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 dark_prismarine []
fill ~2 ~1 ~-5 ~6 ~8 ~5 dark_prismarine []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 prismarine_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 dark_prismarine_slab []
fill ~-5 ~8 ~-4 ~5 ~9 ~4 stone_bricks []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 stone_brick_slab []
setblock ~0 ~11 ~0 emerald_block []
setblock ~0 ~12 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 dark_prismarine []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 prismarine_bricks []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 prismarine_bricks []
setblock ~-8 ~7 ~-2 sea_lantern []
setblock ~8 ~7 ~-2 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 sea_lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ink_sac 14
replaceitem block ~-5 ~1 ~4 slot.container 1 trident 8
replaceitem block ~-5 ~1 ~4 slot.container 2 prismarine_shard 16
replaceitem block ~-5 ~1 ~4 slot.container 3 prismarine_crystals 13
replaceitem block ~-5 ~1 ~4 slot.container 4 nautilus_shell 5
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 9 cooked_salmon 15
replaceitem block ~-5 ~1 ~4 slot.container 10 gold_ingot 14
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_ingot 8
replaceitem block ~-5 ~1 ~4 slot.container 12 emerald 6
replaceitem block ~-5 ~1 ~4 slot.container 13 golden_apple 4
replaceitem block ~-5 ~1 ~4 slot.container 14 sea_lantern 9
loot insert ~-5 ~1 ~4 loot "rsf/warm_ocean"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 prismarine_shard 19
replaceitem block ~5 ~1 ~4 slot.container 1 prismarine_crystals 16
replaceitem block ~5 ~1 ~4 slot.container 2 nautilus_shell 8
replaceitem block ~5 ~1 ~4 slot.container 3 rotten_flesh 18
replaceitem block ~5 ~1 ~4 slot.container 4 wet_sponge 11
replaceitem block ~5 ~1 ~4 slot.container 5 copper_ingot 8
replaceitem block ~5 ~1 ~4 slot.container 9 cooked_salmon 13
replaceitem block ~5 ~1 ~4 slot.container 10 gold_ingot 12
replaceitem block ~5 ~1 ~4 slot.container 11 iron_ingot 13
replaceitem block ~5 ~1 ~4 slot.container 12 emerald 11
replaceitem block ~5 ~1 ~4 slot.container 13 golden_apple 2
replaceitem block ~5 ~1 ~4 slot.container 14 sea_lantern 7
loot insert ~5 ~1 ~4 loot "rsf/warm_ocean"
loot insert ~5 ~1 ~4 loot "chests/underwater_ruin_big"
summon elder_guardian ~0 ~1 ~-1
summon dolphin ~-1 ~1 ~1
summon pufferfish ~1 ~1 ~1
summon tropicalfish ~0 ~-2 ~0
