# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2702/4224 | 主题内编号: b014/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·暗渠蓄水池秘境地牢 (warm_ocean_dungeon_flooded_cistern)
# 建筑构造: 主体[u_courtyard] + 屋顶[ruined_skylight] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 dark_prismarine [] replace water
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 dark_prismarine [] replace air
fill ~-6 ~1 ~-7 ~6 ~7 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 dark_prismarine_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cut_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 prismarine_bricks []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 sea_lantern []
setblock ~-3 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-4 ~4 slot.container 0 prismarine_shard 21
replaceitem block ~-3 ~-4 ~4 slot.container 1 prismarine_crystals 18
replaceitem block ~-3 ~-4 ~4 slot.container 2 nautilus_shell 10
replaceitem block ~-3 ~-4 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~-3 ~-4 ~4 slot.container 4 wet_sponge 5
replaceitem block ~-3 ~-4 ~4 slot.container 5 copper_ingot 10
replaceitem block ~-3 ~-4 ~4 slot.container 9 sponge 5
replaceitem block ~-3 ~-4 ~4 slot.container 10 cooked_cod 12
replaceitem block ~-3 ~-4 ~4 slot.container 11 cooked_salmon 13
replaceitem block ~-3 ~-4 ~4 slot.container 12 gold_ingot 12
replaceitem block ~-3 ~-4 ~4 slot.container 13 iron_ingot 13
replaceitem block ~-3 ~-4 ~4 slot.container 14 emerald 11
loot insert ~-3 ~-4 ~4 loot "rsf/warm_ocean"
loot insert ~-3 ~-4 ~4 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~5 ~6 dark_prismarine []
fill ~-4 ~1 ~-5 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 mossy_stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~5 ~-6 ~5 ~5 ~6 dark_prismarine_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-5 ~4 ~-1 ~-5 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 sea_lantern []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 sea_lantern []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 sea_lantern []
fill ~7 ~0 ~2 ~7 ~5 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~-7 ~0 ~1 ~-7 ~5 ~1 prismarine_bricks []
fill ~7 ~0 ~1 ~7 ~5 ~1 prismarine_bricks []
setblock ~-7 ~6 ~1 sea_lantern []
setblock ~7 ~6 ~1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ink_sac 14
replaceitem block ~-4 ~1 ~5 slot.container 1 trident 8
replaceitem block ~-4 ~1 ~5 slot.container 2 prismarine_shard 16
replaceitem block ~-4 ~1 ~5 slot.container 3 prismarine_crystals 13
replaceitem block ~-4 ~1 ~5 slot.container 4 nautilus_shell 5
replaceitem block ~-4 ~1 ~5 slot.container 5 rotten_flesh 15
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_ingot 8
replaceitem block ~-4 ~1 ~5 slot.container 10 emerald 6
replaceitem block ~-4 ~1 ~5 slot.container 11 golden_apple 4
replaceitem block ~-4 ~1 ~5 slot.container 12 sea_lantern 9
replaceitem block ~-4 ~1 ~5 slot.container 13 heart_of_the_sea 5
replaceitem block ~-4 ~1 ~5 slot.container 14 conduit 6
loot insert ~-4 ~1 ~5 loot "rsf/warm_ocean"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 prismarine_shard 19
replaceitem block ~4 ~1 ~5 slot.container 1 prismarine_crystals 16
replaceitem block ~4 ~1 ~5 slot.container 2 nautilus_shell 8
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 18
replaceitem block ~4 ~1 ~5 slot.container 4 wet_sponge 11
replaceitem block ~4 ~1 ~5 slot.container 5 copper_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 10 emerald 11
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 2
replaceitem block ~4 ~1 ~5 slot.container 12 sea_lantern 7
replaceitem block ~4 ~1 ~5 slot.container 13 heart_of_the_sea 3
replaceitem block ~4 ~1 ~5 slot.container 14 conduit 4
loot insert ~4 ~1 ~5 loot "rsf/warm_ocean"
loot insert ~4 ~1 ~5 loot "chests/underwater_ruin_big"
summon elder_guardian ~0 ~1 ~-1
summon dolphin ~-1 ~1 ~1
summon pufferfish ~1 ~1 ~1
summon tropicalfish ~0 ~-4 ~0
