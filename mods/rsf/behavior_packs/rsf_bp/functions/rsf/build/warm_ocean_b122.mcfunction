# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2810/4224 | 主题内编号: b122/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·十字穹顶宏伟圣堂与墓窟 (warm_ocean_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 4格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 dark_prismarine [] replace water
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 dark_prismarine [] replace air
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 dark_prismarine_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cut_sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 prismarine_bricks []
setblock ~0 ~-6 ~0 diamond_block []
fill ~0 ~-5 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 sea_lantern []
setblock ~2 ~-5 ~0 sea_lantern []
setblock ~0 ~-3 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-5 slot.container 0 wet_sponge 5
replaceitem block ~0 ~-3 ~-5 slot.container 1 copper_ingot 10
replaceitem block ~0 ~-3 ~-5 slot.container 2 ink_sac 11
replaceitem block ~0 ~-3 ~-5 slot.container 3 trident 5
replaceitem block ~0 ~-3 ~-5 slot.container 4 prismarine_shard 21
replaceitem block ~0 ~-3 ~-5 slot.container 5 prismarine_crystals 18
replaceitem block ~0 ~-3 ~-5 slot.container 9 iron_ingot 14
replaceitem block ~0 ~-3 ~-5 slot.container 10 emerald 5
replaceitem block ~0 ~-3 ~-5 slot.container 11 golden_apple 3
replaceitem block ~0 ~-3 ~-5 slot.container 12 sea_lantern 8
replaceitem block ~0 ~-3 ~-5 slot.container 13 heart_of_the_sea 4
replaceitem block ~0 ~-3 ~-5 slot.container 14 conduit 5
loot insert ~0 ~-3 ~-5 loot "rsf/warm_ocean"
loot insert ~0 ~-3 ~-5 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~9 ~7 dark_prismarine []
fill ~-6 ~1 ~-2 ~6 ~9 ~2 dark_prismarine []
fill ~-1 ~1 ~-6 ~1 ~8 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~8 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-7 ~-6 ~7 ~7 dark_prismarine_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-7 ~6 ~7 ~7 dark_prismarine_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-6 ~-5 ~8 ~6 dark_prismarine_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-6 ~5 ~8 ~6 dark_prismarine_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~4 ~8 ~6 dark_prismarine_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 prismarine_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~8 ~-2 sea_lantern []
fill ~-7 ~0 ~2 ~-7 ~8 ~2 sea_lantern []
fill ~7 ~0 ~-2 ~7 ~8 ~-2 sea_lantern []
fill ~7 ~0 ~2 ~7 ~8 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~-8 ~0 ~-2 ~-8 ~8 ~-2 prismarine_bricks []
fill ~8 ~0 ~-2 ~8 ~8 ~-2 prismarine_bricks []
setblock ~-8 ~9 ~-2 sea_lantern []
setblock ~8 ~9 ~-2 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~8 ~0 sea_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~6 ~2 ~2 ~6 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 nautilus_shell 5
replaceitem block ~-5 ~1 ~6 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~6 slot.container 2 wet_sponge 8
replaceitem block ~-5 ~1 ~6 slot.container 3 copper_ingot 13
replaceitem block ~-5 ~1 ~6 slot.container 4 ink_sac 14
replaceitem block ~-5 ~1 ~6 slot.container 5 trident 8
replaceitem block ~-5 ~1 ~6 slot.container 9 heart_of_the_sea 4
replaceitem block ~-5 ~1 ~6 slot.container 10 conduit 5
replaceitem block ~-5 ~1 ~6 slot.container 11 sponge 9
replaceitem block ~-5 ~1 ~6 slot.container 12 cooked_cod 16
replaceitem block ~-5 ~1 ~6 slot.container 13 cooked_salmon 10
replaceitem block ~-5 ~1 ~6 slot.container 14 gold_ingot 9
loot insert ~-5 ~1 ~6 loot "rsf/warm_ocean"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 wet_sponge 11
replaceitem block ~5 ~1 ~6 slot.container 1 copper_ingot 8
replaceitem block ~5 ~1 ~6 slot.container 2 ink_sac 9
replaceitem block ~5 ~1 ~6 slot.container 3 trident 3
replaceitem block ~5 ~1 ~6 slot.container 4 prismarine_shard 19
replaceitem block ~5 ~1 ~6 slot.container 5 prismarine_crystals 16
replaceitem block ~5 ~1 ~6 slot.container 9 heart_of_the_sea 2
replaceitem block ~5 ~1 ~6 slot.container 10 conduit 3
replaceitem block ~5 ~1 ~6 slot.container 11 sponge 7
replaceitem block ~5 ~1 ~6 slot.container 12 cooked_cod 14
replaceitem block ~5 ~1 ~6 slot.container 13 cooked_salmon 15
replaceitem block ~5 ~1 ~6 slot.container 14 gold_ingot 14
loot insert ~5 ~1 ~6 loot "rsf/warm_ocean"
loot insert ~5 ~1 ~6 loot "chests/underwater_ruin_big"
summon elder_guardian ~0 ~1 ~-1
summon dolphin ~-1 ~1 ~1
summon pufferfish ~1 ~1 ~1
summon tropicalfish ~0 ~-3 ~0
