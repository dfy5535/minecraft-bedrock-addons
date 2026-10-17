# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2762/4224 | 主题内编号: b074/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·十字四象图腾柱阵 (warm_ocean_totem_cross_monoliths)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 dark_prismarine [] replace water
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 dark_prismarine [] replace air
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 dark_prismarine_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cut_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 emerald_block []
setblock ~0 ~-5 ~0 sea_lantern []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 nautilus_shell 10
replaceitem block ~3 ~-2 ~0 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~-2 ~0 slot.container 2 wet_sponge 5
replaceitem block ~3 ~-2 ~0 slot.container 3 copper_ingot 10
replaceitem block ~3 ~-2 ~0 slot.container 4 ink_sac 11
replaceitem block ~3 ~-2 ~0 slot.container 5 trident 5
replaceitem block ~3 ~-2 ~0 slot.container 9 sponge 6
replaceitem block ~3 ~-2 ~0 slot.container 10 cooked_cod 13
replaceitem block ~3 ~-2 ~0 slot.container 11 cooked_salmon 14
replaceitem block ~3 ~-2 ~0 slot.container 12 gold_ingot 13
replaceitem block ~3 ~-2 ~0 slot.container 13 iron_ingot 14
replaceitem block ~3 ~-2 ~0 slot.container 14 emerald 5
loot insert ~3 ~-2 ~0 loot "rsf/warm_ocean"
loot insert ~3 ~-2 ~0 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~7 ~6 dark_prismarine []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 dark_prismarine []
fill ~-1 ~1 ~-5 ~1 ~6 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~6 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~7 ~-6 ~-5 ~9 ~-6 sea_lantern []
setblock ~-5 ~10 ~-6 sea_lantern []
fill ~-5 ~7 ~6 ~-5 ~9 ~6 sea_lantern []
setblock ~-5 ~10 ~6 sea_lantern []
fill ~5 ~7 ~-6 ~5 ~9 ~-6 sea_lantern []
setblock ~5 ~10 ~-6 sea_lantern []
fill ~5 ~7 ~6 ~5 ~9 ~6 sea_lantern []
setblock ~5 ~10 ~6 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~8 ~-2 sea_lantern []
fill ~-7 ~0 ~2 ~-7 ~8 ~2 sea_lantern []
fill ~7 ~0 ~-2 ~7 ~8 ~-2 sea_lantern []
fill ~7 ~0 ~2 ~7 ~8 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~-7 ~0 ~1 ~-7 ~5 ~1 prismarine_bricks []
fill ~7 ~0 ~1 ~7 ~5 ~1 prismarine_bricks []
setblock ~-7 ~6 ~1 sea_lantern []
setblock ~7 ~6 ~1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 sea_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 nautilus_shell 5
replaceitem block ~-4 ~1 ~5 slot.container 1 rotten_flesh 15
replaceitem block ~-4 ~1 ~5 slot.container 2 wet_sponge 8
replaceitem block ~-4 ~1 ~5 slot.container 3 copper_ingot 13
replaceitem block ~-4 ~1 ~5 slot.container 4 ink_sac 14
replaceitem block ~-4 ~1 ~5 slot.container 5 trident 8
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_ingot 12
replaceitem block ~-4 ~1 ~5 slot.container 10 emerald 10
replaceitem block ~-4 ~1 ~5 slot.container 11 golden_apple 8
replaceitem block ~-4 ~1 ~5 slot.container 12 sea_lantern 6
replaceitem block ~-4 ~1 ~5 slot.container 13 heart_of_the_sea 2
replaceitem block ~-4 ~1 ~5 slot.container 14 conduit 3
loot insert ~-4 ~1 ~5 loot "rsf/warm_ocean"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 wet_sponge 11
replaceitem block ~4 ~1 ~5 slot.container 1 copper_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 2 ink_sac 9
replaceitem block ~4 ~1 ~5 slot.container 3 trident 3
replaceitem block ~4 ~1 ~5 slot.container 4 prismarine_shard 19
replaceitem block ~4 ~1 ~5 slot.container 5 prismarine_crystals 16
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 10 emerald 8
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 6
replaceitem block ~4 ~1 ~5 slot.container 12 sea_lantern 11
replaceitem block ~4 ~1 ~5 slot.container 13 heart_of_the_sea 7
replaceitem block ~4 ~1 ~5 slot.container 14 conduit 1
loot insert ~4 ~1 ~5 loot "rsf/warm_ocean"
loot insert ~4 ~1 ~5 loot "chests/underwater_ruin_big"
summon elder_guardian ~0 ~1 ~-1
summon dolphin ~-1 ~1 ~1
summon pufferfish ~1 ~1 ~1
summon tropicalfish ~0 ~-2 ~0
