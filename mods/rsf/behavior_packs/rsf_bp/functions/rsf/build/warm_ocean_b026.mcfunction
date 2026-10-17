# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2714/4224 | 主题内编号: b026/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·尖顶信标引航高塔 (warm_ocean_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 9x11 | 地上高度 11格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 dark_prismarine [] replace water
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 dark_prismarine [] replace air
fill ~-4 ~1 ~-5 ~4 ~13 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 dark_prismarine_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 cut_sandstone []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-2 ~-3 ~-3 ~2 ~-1 ~3 stone_bricks []
fill ~-1 ~-4 ~-2 ~1 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 sea_lantern []
setblock ~1 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-2 ~2 slot.container 0 ink_sac 11
replaceitem block ~1 ~-2 ~2 slot.container 1 trident 5
replaceitem block ~1 ~-2 ~2 slot.container 2 prismarine_shard 21
replaceitem block ~1 ~-2 ~2 slot.container 3 prismarine_crystals 18
replaceitem block ~1 ~-2 ~2 slot.container 4 nautilus_shell 10
replaceitem block ~1 ~-2 ~2 slot.container 5 rotten_flesh 12
replaceitem block ~1 ~-2 ~2 slot.container 9 iron_ingot 9
replaceitem block ~1 ~-2 ~2 slot.container 10 emerald 7
replaceitem block ~1 ~-2 ~2 slot.container 11 golden_apple 5
replaceitem block ~1 ~-2 ~2 slot.container 12 sea_lantern 10
replaceitem block ~1 ~-2 ~2 slot.container 13 heart_of_the_sea 6
replaceitem block ~1 ~-2 ~2 slot.container 14 conduit 7
loot insert ~1 ~-2 ~2 loot "rsf/warm_ocean"
loot insert ~1 ~-2 ~2 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-3 ~1 ~-4 ~3 ~11 ~4 dark_prismarine []
fill ~-2 ~1 ~-3 ~2 ~10 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~12 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~12 ~-4 air []
fill ~-3 ~1 ~4 ~-3 ~12 ~4 air []
fill ~3 ~1 ~4 ~3 ~12 ~4 air []
fill ~-2 ~1 ~-3 ~-2 ~11 ~-3 sea_lantern []
fill ~2 ~1 ~-3 ~2 ~11 ~-3 sea_lantern []
fill ~-2 ~1 ~3 ~-2 ~11 ~3 sea_lantern []
fill ~2 ~1 ~3 ~2 ~11 ~3 sea_lantern []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 prismarine_bricks []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 dark_prismarine []
fill ~0 ~17 ~0 ~0 ~19 ~0 emerald_block []
setblock ~0 ~20 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 mossy_stone_bricks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 5x5x5) ---
fill ~-5 ~0 ~-2 ~-5 ~7 ~-2 prismarine_bricks []
fill ~5 ~0 ~-2 ~5 ~7 ~-2 prismarine_bricks []
setblock ~-5 ~8 ~-2 sea_lantern []
setblock ~5 ~8 ~-2 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 sea_lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~3 slot.container 0 nautilus_shell 5
replaceitem block ~-2 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-2 ~1 ~3 slot.container 2 wet_sponge 8
replaceitem block ~-2 ~1 ~3 slot.container 3 copper_ingot 13
replaceitem block ~-2 ~1 ~3 slot.container 4 ink_sac 14
replaceitem block ~-2 ~1 ~3 slot.container 5 trident 8
replaceitem block ~-2 ~1 ~3 slot.container 9 sponge 9
replaceitem block ~-2 ~1 ~3 slot.container 10 cooked_cod 16
replaceitem block ~-2 ~1 ~3 slot.container 11 cooked_salmon 10
replaceitem block ~-2 ~1 ~3 slot.container 12 gold_ingot 9
replaceitem block ~-2 ~1 ~3 slot.container 13 iron_ingot 10
replaceitem block ~-2 ~1 ~3 slot.container 14 emerald 8
loot insert ~-2 ~1 ~3 loot "rsf/warm_ocean"
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 wet_sponge 11
replaceitem block ~2 ~1 ~3 slot.container 1 copper_ingot 8
replaceitem block ~2 ~1 ~3 slot.container 2 ink_sac 9
replaceitem block ~2 ~1 ~3 slot.container 3 trident 3
replaceitem block ~2 ~1 ~3 slot.container 4 prismarine_shard 19
replaceitem block ~2 ~1 ~3 slot.container 5 prismarine_crystals 16
replaceitem block ~2 ~1 ~3 slot.container 9 sponge 7
replaceitem block ~2 ~1 ~3 slot.container 10 cooked_cod 14
replaceitem block ~2 ~1 ~3 slot.container 11 cooked_salmon 15
replaceitem block ~2 ~1 ~3 slot.container 12 gold_ingot 14
replaceitem block ~2 ~1 ~3 slot.container 13 iron_ingot 8
replaceitem block ~2 ~1 ~3 slot.container 14 emerald 6
loot insert ~2 ~1 ~3 loot "rsf/warm_ocean"
loot insert ~2 ~1 ~3 loot "chests/underwater_ruin_big"
summon elder_guardian ~0 ~1 ~-1
summon dolphin ~-1 ~1 ~1
summon pufferfish ~1 ~1 ~1
summon tropicalfish ~0 ~-2 ~0
