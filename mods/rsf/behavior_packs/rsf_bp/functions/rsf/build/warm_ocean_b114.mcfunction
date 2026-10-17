# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2802/4224 | 主题内编号: b114/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·双联拱顶植物培育馆 (warm_ocean_conservatory_twin_house)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[underground_forge] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 dark_prismarine [] replace water
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 dark_prismarine [] replace air
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 dark_prismarine_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cut_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 prismarine_bricks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 sea_lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 prismarine_crystals 18
replaceitem block ~3 ~-3 ~3 slot.container 1 nautilus_shell 10
replaceitem block ~3 ~-3 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~3 ~-3 ~3 slot.container 3 wet_sponge 5
replaceitem block ~3 ~-3 ~3 slot.container 4 copper_ingot 10
replaceitem block ~3 ~-3 ~3 slot.container 5 ink_sac 11
replaceitem block ~3 ~-3 ~3 slot.container 9 gold_ingot 8
replaceitem block ~3 ~-3 ~3 slot.container 10 iron_ingot 9
replaceitem block ~3 ~-3 ~3 slot.container 11 emerald 7
replaceitem block ~3 ~-3 ~3 slot.container 12 golden_apple 5
replaceitem block ~3 ~-3 ~3 slot.container 13 sea_lantern 10
replaceitem block ~3 ~-3 ~3 slot.container 14 heart_of_the_sea 6
loot insert ~3 ~-3 ~3 loot "rsf/warm_ocean"
loot insert ~3 ~-3 ~3 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~7 ~5 dark_prismarine []
fill ~2 ~1 ~-5 ~6 ~7 ~5 dark_prismarine []
fill ~-5 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 prismarine_bricks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 prismarine_bricks []
fill ~-5 ~7 ~-4 ~5 ~8 ~4 glass []
fill ~-4 ~7 ~-3 ~4 ~7 ~3 air []
setblock ~0 ~8 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 mossy_stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~0 ~2 ~-8 ~5 ~2 prismarine_bricks []
fill ~8 ~0 ~2 ~8 ~5 ~2 prismarine_bricks []
setblock ~-8 ~6 ~2 sea_lantern []
setblock ~8 ~6 ~2 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 sea_lantern []
setblock ~-5 ~1 ~4 smoker []
setblock ~-4 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~5 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 nautilus_shell 5
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 2 wet_sponge 8
replaceitem block ~-5 ~1 ~4 slot.container 3 copper_ingot 13
replaceitem block ~-5 ~1 ~4 slot.container 4 ink_sac 14
replaceitem block ~-5 ~1 ~4 slot.container 5 trident 8
replaceitem block ~-5 ~1 ~4 slot.container 9 iron_ingot 10
replaceitem block ~-5 ~1 ~4 slot.container 10 emerald 8
replaceitem block ~-5 ~1 ~4 slot.container 11 golden_apple 6
replaceitem block ~-5 ~1 ~4 slot.container 12 sea_lantern 11
replaceitem block ~-5 ~1 ~4 slot.container 13 heart_of_the_sea 7
replaceitem block ~-5 ~1 ~4 slot.container 14 conduit 1
loot insert ~-5 ~1 ~4 loot "rsf/warm_ocean"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 wet_sponge 11
replaceitem block ~5 ~1 ~4 slot.container 1 copper_ingot 8
replaceitem block ~5 ~1 ~4 slot.container 2 ink_sac 9
replaceitem block ~5 ~1 ~4 slot.container 3 trident 3
replaceitem block ~5 ~1 ~4 slot.container 4 prismarine_shard 19
replaceitem block ~5 ~1 ~4 slot.container 5 prismarine_crystals 16
replaceitem block ~5 ~1 ~4 slot.container 9 iron_ingot 8
replaceitem block ~5 ~1 ~4 slot.container 10 emerald 6
replaceitem block ~5 ~1 ~4 slot.container 11 golden_apple 4
replaceitem block ~5 ~1 ~4 slot.container 12 sea_lantern 9
replaceitem block ~5 ~1 ~4 slot.container 13 heart_of_the_sea 5
replaceitem block ~5 ~1 ~4 slot.container 14 conduit 6
loot insert ~5 ~1 ~4 loot "rsf/warm_ocean"
loot insert ~5 ~1 ~4 loot "chests/underwater_ruin_big"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
