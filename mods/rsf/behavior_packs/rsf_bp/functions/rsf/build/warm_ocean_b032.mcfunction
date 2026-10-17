# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2720/4224 | 主题内编号: b032/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·断顶残垣古哨塔 (warm_ocean_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[dome_glass] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 9x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 prismarine [] replace water
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 prismarine [] replace air
fill ~-4 ~1 ~-6 ~4 ~11 ~6 air []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 prismarine_slab [] replace air
fill ~-3 ~0 ~-5 ~3 ~0 ~5 dark_prismarine []
fill ~-2 ~0 ~-4 ~2 ~0 ~4 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-3 ~-5 ~3 ~-1 ~5 prismarine_bricks []
fill ~-2 ~-4 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 prismarine_bricks []
setblock ~0 ~-5 ~0 sponge []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 sea_lantern []
setblock ~2 ~-4 ~0 sea_lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 nautilus_shell 10
replaceitem block ~0 ~-2 ~-3 slot.container 1 rotten_flesh 12
replaceitem block ~0 ~-2 ~-3 slot.container 2 wet_sponge 5
replaceitem block ~0 ~-2 ~-3 slot.container 3 copper_ingot 10
replaceitem block ~0 ~-2 ~-3 slot.container 4 ink_sac 11
replaceitem block ~0 ~-2 ~-3 slot.container 5 trident 5
replaceitem block ~0 ~-2 ~-3 slot.container 9 iron_ingot 8
replaceitem block ~0 ~-2 ~-3 slot.container 10 emerald 6
replaceitem block ~0 ~-2 ~-3 slot.container 11 golden_apple 4
replaceitem block ~0 ~-2 ~-3 slot.container 12 sea_lantern 9
replaceitem block ~0 ~-2 ~-3 slot.container 13 heart_of_the_sea 5
replaceitem block ~0 ~-2 ~-3 slot.container 14 conduit 6
loot insert ~0 ~-2 ~-3 loot "rsf/warm_ocean"
loot insert ~0 ~-2 ~-3 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-5 ~3 ~9 ~5 prismarine []
fill ~-2 ~1 ~-4 ~2 ~8 ~4 air []
fill ~-3 ~1 ~-5 ~-3 ~9 ~-5 sea_lantern []
fill ~-3 ~1 ~5 ~-3 ~9 ~5 sea_lantern []
fill ~3 ~1 ~-5 ~3 ~9 ~-5 sea_lantern []
fill ~3 ~1 ~5 ~3 ~9 ~5 sea_lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 prismarine_bricks []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 glass []
fill ~-2 ~8 ~-3 ~2 ~8 ~3 air []
setblock ~0 ~9 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~8 ~-2 sea_lantern []
fill ~-4 ~0 ~2 ~-4 ~8 ~2 sea_lantern []
fill ~4 ~0 ~-2 ~4 ~8 ~-2 sea_lantern []
fill ~4 ~0 ~2 ~4 ~8 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 5x6x6) ---
fill ~-5 ~0 ~0 ~-5 ~8 ~0 prismarine_bricks []
fill ~5 ~0 ~0 ~5 ~8 ~0 prismarine_bricks []
setblock ~-5 ~9 ~0 sea_lantern []
setblock ~5 ~9 ~0 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~8 ~0 sea_lantern []
setblock ~-2 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~4 slot.container 0 prismarine_shard 16
replaceitem block ~-2 ~1 ~4 slot.container 1 prismarine_crystals 13
replaceitem block ~-2 ~1 ~4 slot.container 2 nautilus_shell 5
replaceitem block ~-2 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-2 ~1 ~4 slot.container 4 wet_sponge 8
replaceitem block ~-2 ~1 ~4 slot.container 5 copper_ingot 13
replaceitem block ~-2 ~1 ~4 slot.container 9 heart_of_the_sea 5
replaceitem block ~-2 ~1 ~4 slot.container 10 conduit 6
replaceitem block ~-2 ~1 ~4 slot.container 11 sponge 10
replaceitem block ~-2 ~1 ~4 slot.container 12 cooked_cod 10
replaceitem block ~-2 ~1 ~4 slot.container 13 cooked_salmon 11
replaceitem block ~-2 ~1 ~4 slot.container 14 gold_ingot 10
loot insert ~-2 ~1 ~4 loot "rsf/warm_ocean"
setblock ~2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~4 slot.container 0 nautilus_shell 8
replaceitem block ~2 ~1 ~4 slot.container 1 rotten_flesh 18
replaceitem block ~2 ~1 ~4 slot.container 2 wet_sponge 11
replaceitem block ~2 ~1 ~4 slot.container 3 copper_ingot 8
replaceitem block ~2 ~1 ~4 slot.container 4 ink_sac 9
replaceitem block ~2 ~1 ~4 slot.container 5 trident 3
replaceitem block ~2 ~1 ~4 slot.container 9 heart_of_the_sea 3
replaceitem block ~2 ~1 ~4 slot.container 10 conduit 4
replaceitem block ~2 ~1 ~4 slot.container 11 sponge 8
replaceitem block ~2 ~1 ~4 slot.container 12 cooked_cod 15
replaceitem block ~2 ~1 ~4 slot.container 13 cooked_salmon 16
replaceitem block ~2 ~1 ~4 slot.container 14 gold_ingot 8
loot insert ~2 ~1 ~4 loot "rsf/warm_ocean"
loot insert ~2 ~1 ~4 loot "chests/underwater_ruin_big"
summon elder_guardian ~0 ~1 ~-1
summon dolphin ~-1 ~1 ~1
summon pufferfish ~1 ~1 ~1
summon tropicalfish ~0 ~-2 ~0
