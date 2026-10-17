# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2759/4224 | 主题内编号: b071/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·残破双子哨所遗迹 (warm_ocean_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[trial_pit] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 stone_bricks [] replace water
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 stone_bricks [] replace air
fill ~-6 ~1 ~-6 ~6 ~9 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 dark_prismarine []
setblock ~0 ~0 ~0 diamond_block []

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
fill ~-5 ~1 ~-5 ~-2 ~8 ~5 stone_bricks []
fill ~2 ~1 ~-5 ~5 ~8 ~5 stone_bricks []
fill ~-4 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 prismarine_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~7 ~-5 ~5 ~7 ~5 stone_brick_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-5 ~6 ~-1 ~-5 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 dark_prismarine []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~-7 ~0 ~-1 ~-7 ~7 ~-1 prismarine_bricks []
fill ~7 ~0 ~-1 ~7 ~7 ~-1 prismarine_bricks []
setblock ~-7 ~8 ~-1 sea_lantern []
setblock ~7 ~8 ~-1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-4 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 trident 8
replaceitem block ~4 ~1 ~4 slot.container 1 prismarine_shard 16
replaceitem block ~4 ~1 ~4 slot.container 2 prismarine_crystals 13
replaceitem block ~4 ~1 ~4 slot.container 3 nautilus_shell 5
replaceitem block ~4 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~4 slot.container 5 wet_sponge 8
replaceitem block ~4 ~1 ~4 slot.container 9 emerald 6
replaceitem block ~4 ~1 ~4 slot.container 10 golden_apple 4
replaceitem block ~4 ~1 ~4 slot.container 11 sea_lantern 9
replaceitem block ~4 ~1 ~4 slot.container 12 heart_of_the_sea 5
replaceitem block ~4 ~1 ~4 slot.container 13 conduit 6
replaceitem block ~4 ~1 ~4 slot.container 14 sponge 10
loot insert ~4 ~1 ~4 loot "rsf/warm_ocean"
summon tropicalfish ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon elder_guardian ~0 ~2 ~0
