# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2726/4224 | 主题内编号: b038/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·四方凯旋衣冠冢 (warm_ocean_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 dark_prismarine [] replace water
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 dark_prismarine [] replace air
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 dark_prismarine_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cut_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 prismarine_bricks []
setblock ~0 ~-5 ~0 diamond_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 sea_lantern []
setblock ~2 ~-4 ~0 sea_lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 prismarine_shard 21
replaceitem block ~0 ~-2 ~-3 slot.container 1 prismarine_crystals 18
replaceitem block ~0 ~-2 ~-3 slot.container 2 nautilus_shell 10
replaceitem block ~0 ~-2 ~-3 slot.container 3 rotten_flesh 12
replaceitem block ~0 ~-2 ~-3 slot.container 4 wet_sponge 5
replaceitem block ~0 ~-2 ~-3 slot.container 5 copper_ingot 10
replaceitem block ~0 ~-2 ~-3 slot.container 9 cooked_salmon 16
replaceitem block ~0 ~-2 ~-3 slot.container 10 gold_ingot 8
replaceitem block ~0 ~-2 ~-3 slot.container 11 iron_ingot 9
replaceitem block ~0 ~-2 ~-3 slot.container 12 emerald 7
replaceitem block ~0 ~-2 ~-3 slot.container 13 golden_apple 5
replaceitem block ~0 ~-2 ~-3 slot.container 14 sea_lantern 10
loot insert ~0 ~-2 ~-3 loot "rsf/warm_ocean"
loot insert ~0 ~-2 ~-3 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~8 ~5 dark_prismarine []
fill ~-4 ~1 ~-2 ~4 ~8 ~2 dark_prismarine []
fill ~-1 ~1 ~-4 ~1 ~7 ~4 air []
fill ~-3 ~1 ~-1 ~3 ~7 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~9 ~-5 ~4 ~9 ~5 prismarine_bricks []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 emerald_block []
setblock ~0 ~12 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~8 ~-2 sea_lantern []
fill ~-7 ~0 ~2 ~-7 ~8 ~2 sea_lantern []
fill ~7 ~0 ~-2 ~7 ~8 ~-2 sea_lantern []
fill ~7 ~0 ~2 ~7 ~8 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 6x6x2) ---
fill ~-6 ~0 ~1 ~-6 ~4 ~1 prismarine_bricks []
fill ~6 ~0 ~1 ~6 ~4 ~1 prismarine_bricks []
setblock ~-6 ~5 ~1 sea_lantern []
setblock ~6 ~5 ~1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~5 ~0 sea_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~5 bookshelf []
setblock ~4 ~1 ~5 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 ink_sac 14
replaceitem block ~-3 ~1 ~4 slot.container 1 trident 8
replaceitem block ~-3 ~1 ~4 slot.container 2 prismarine_shard 16
replaceitem block ~-3 ~1 ~4 slot.container 3 prismarine_crystals 13
replaceitem block ~-3 ~1 ~4 slot.container 4 nautilus_shell 5
replaceitem block ~-3 ~1 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~-3 ~1 ~4 slot.container 9 golden_apple 5
replaceitem block ~-3 ~1 ~4 slot.container 10 sea_lantern 10
replaceitem block ~-3 ~1 ~4 slot.container 11 heart_of_the_sea 6
replaceitem block ~-3 ~1 ~4 slot.container 12 conduit 7
replaceitem block ~-3 ~1 ~4 slot.container 13 sponge 4
replaceitem block ~-3 ~1 ~4 slot.container 14 cooked_cod 11
loot insert ~-3 ~1 ~4 loot "rsf/warm_ocean"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 prismarine_shard 19
replaceitem block ~3 ~1 ~4 slot.container 1 prismarine_crystals 16
replaceitem block ~3 ~1 ~4 slot.container 2 nautilus_shell 8
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 18
replaceitem block ~3 ~1 ~4 slot.container 4 wet_sponge 11
replaceitem block ~3 ~1 ~4 slot.container 5 copper_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 9 golden_apple 3
replaceitem block ~3 ~1 ~4 slot.container 10 sea_lantern 8
replaceitem block ~3 ~1 ~4 slot.container 11 heart_of_the_sea 4
replaceitem block ~3 ~1 ~4 slot.container 12 conduit 5
replaceitem block ~3 ~1 ~4 slot.container 13 sponge 9
replaceitem block ~3 ~1 ~4 slot.container 14 cooked_cod 16
loot insert ~3 ~1 ~4 loot "rsf/warm_ocean"
loot insert ~3 ~1 ~4 loot "chests/underwater_ruin_big"
summon elder_guardian ~0 ~1 ~-1
summon dolphin ~-1 ~1 ~1
summon pufferfish ~1 ~1 ~1
summon tropicalfish ~0 ~-2 ~0
