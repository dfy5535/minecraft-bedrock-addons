# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2745/4224 | 主题内编号: b057/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·中央石棺帝王地下陵寝 (warm_ocean_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x17 | 地上高度 5格 | 地下深度 5格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 prismarine_bricks [] replace water
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 prismarine_bricks [] replace air
fill ~-6 ~1 ~-8 ~6 ~7 ~8 air []
fill ~-6 ~0 ~-8 ~6 ~0 ~8 prismarine_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 prismarine []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 cut_sandstone []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 dark_prismarine []
fill ~-4 ~-6 ~-6 ~4 ~-1 ~6 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 dark_prismarine []
setblock ~0 ~-7 ~0 emerald_block []
fill ~0 ~-6 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 sea_lantern []
setblock ~2 ~-6 ~0 sea_lantern []
setblock ~0 ~-4 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-5 slot.container 0 rotten_flesh 12
replaceitem block ~0 ~-4 ~-5 slot.container 1 wet_sponge 5
replaceitem block ~0 ~-4 ~-5 slot.container 2 copper_ingot 10
replaceitem block ~0 ~-4 ~-5 slot.container 3 ink_sac 11
replaceitem block ~0 ~-4 ~-5 slot.container 4 trident 5
replaceitem block ~0 ~-4 ~-5 slot.container 5 prismarine_shard 21
replaceitem block ~0 ~-4 ~-5 slot.container 9 conduit 5
replaceitem block ~0 ~-4 ~-5 slot.container 10 sponge 9
replaceitem block ~0 ~-4 ~-5 slot.container 11 cooked_cod 16
replaceitem block ~0 ~-4 ~-5 slot.container 12 cooked_salmon 10
replaceitem block ~0 ~-4 ~-5 slot.container 13 gold_ingot 9
replaceitem block ~0 ~-4 ~-5 slot.container 14 iron_ingot 10
loot insert ~0 ~-4 ~-5 loot "rsf/warm_ocean"
loot insert ~0 ~-4 ~-5 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-7 ~5 ~2 ~7 prismarine_bricks []
fill ~-4 ~1 ~-6 ~4 ~3 ~6 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 dark_prismarine []
fill ~0 ~1 ~-7 ~0 ~2 ~7 dark_prismarine []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~6 ~-7 ~5 ~6 ~7 dark_prismarine []
fill ~-4 ~7 ~-6 ~4 ~7 ~6 dark_prismarine []
fill ~-1 ~8 ~-1 ~1 ~8 ~1 sponge []
setblock ~0 ~9 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 sea_lantern []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 sea_lantern []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 sea_lantern []
fill ~7 ~0 ~2 ~7 ~5 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x9x6) ---
fill ~-7 ~0 ~3 ~-7 ~8 ~3 prismarine_bricks []
fill ~7 ~0 ~3 ~7 ~8 ~3 prismarine_bricks []
setblock ~-7 ~9 ~3 sea_lantern []
setblock ~7 ~9 ~3 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 sea_lantern []
setblock ~-3 ~1 ~4 crafting_table []
setblock ~-2 ~1 ~4 furnace []
setblock ~3 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 prismarine_crystals 13
replaceitem block ~4 ~1 ~6 slot.container 1 nautilus_shell 5
replaceitem block ~4 ~1 ~6 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~6 slot.container 3 wet_sponge 8
replaceitem block ~4 ~1 ~6 slot.container 4 copper_ingot 13
replaceitem block ~4 ~1 ~6 slot.container 5 ink_sac 14
replaceitem block ~4 ~1 ~6 slot.container 9 gold_ingot 9
replaceitem block ~4 ~1 ~6 slot.container 10 iron_ingot 10
replaceitem block ~4 ~1 ~6 slot.container 11 emerald 8
replaceitem block ~4 ~1 ~6 slot.container 12 golden_apple 6
replaceitem block ~4 ~1 ~6 slot.container 13 sea_lantern 11
replaceitem block ~4 ~1 ~6 slot.container 14 heart_of_the_sea 7
loot insert ~4 ~1 ~6 loot "rsf/warm_ocean"
summon dolphin ~0 ~1 ~-1
summon pufferfish ~-1 ~1 ~1
