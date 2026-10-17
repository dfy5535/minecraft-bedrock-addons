# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2792/4224 | 主题内编号: b104/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·双层指挥台卫戍堡 (warm_ocean_bunker_terrace_command)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 prismarine [] replace water
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 prismarine [] replace air
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 prismarine_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 dark_prismarine []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 dark_prismarine []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 sea_lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 trident 5
replaceitem block ~-2 ~-4 ~3 slot.container 1 prismarine_shard 21
replaceitem block ~-2 ~-4 ~3 slot.container 2 prismarine_crystals 18
replaceitem block ~-2 ~-4 ~3 slot.container 3 nautilus_shell 10
replaceitem block ~-2 ~-4 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~-2 ~-4 ~3 slot.container 5 wet_sponge 5
replaceitem block ~-2 ~-4 ~3 slot.container 9 gold_ingot 14
replaceitem block ~-2 ~-4 ~3 slot.container 10 iron_ingot 8
replaceitem block ~-2 ~-4 ~3 slot.container 11 emerald 6
replaceitem block ~-2 ~-4 ~3 slot.container 12 golden_apple 4
replaceitem block ~-2 ~-4 ~3 slot.container 13 sea_lantern 9
replaceitem block ~-2 ~-4 ~3 slot.container 14 heart_of_the_sea 5
loot insert ~-2 ~-4 ~3 loot "rsf/warm_ocean"
loot insert ~-2 ~-4 ~3 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-6 ~5 ~4 ~6 prismarine []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-6 ~4 ~-7 ~6 ~4 ~7 prismarine_slab []
fill ~-4 ~5 ~-5 ~4 ~8 ~5 prismarine_bricks []
fill ~-3 ~5 ~-4 ~3 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~5 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 prismarine_bricks []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 cobblestone_wall []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 air []
setblock ~-5 ~9 ~-6 sea_lantern []
setblock ~-5 ~10 ~-6 sea_lantern []
setblock ~-5 ~9 ~6 sea_lantern []
setblock ~-5 ~10 ~6 sea_lantern []
setblock ~5 ~9 ~-6 sea_lantern []
setblock ~5 ~10 ~-6 sea_lantern []
setblock ~5 ~9 ~6 sea_lantern []
setblock ~5 ~10 ~6 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 prismarine_bricks []
fill ~-2 ~1 ~-9 ~-2 ~3 ~-9 sea_lantern []
fill ~2 ~1 ~-9 ~2 ~3 ~-9 sea_lantern []
fill ~-2 ~4 ~-9 ~2 ~4 ~-8 prismarine_slab []
setblock ~0 ~3 ~-9 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~-7 ~0 ~1 ~-7 ~5 ~1 prismarine_bricks []
fill ~7 ~0 ~1 ~7 ~5 ~1 prismarine_bricks []
setblock ~-7 ~6 ~1 sea_lantern []
setblock ~7 ~6 ~1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~7 ~0 sea_lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 prismarine_shard 16
replaceitem block ~-4 ~1 ~5 slot.container 1 prismarine_crystals 13
replaceitem block ~-4 ~1 ~5 slot.container 2 nautilus_shell 5
replaceitem block ~-4 ~1 ~5 slot.container 3 rotten_flesh 15
replaceitem block ~-4 ~1 ~5 slot.container 4 wet_sponge 8
replaceitem block ~-4 ~1 ~5 slot.container 5 copper_ingot 13
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_ingot 14
replaceitem block ~-4 ~1 ~5 slot.container 10 emerald 5
replaceitem block ~-4 ~1 ~5 slot.container 11 golden_apple 3
replaceitem block ~-4 ~1 ~5 slot.container 12 sea_lantern 8
replaceitem block ~-4 ~1 ~5 slot.container 13 heart_of_the_sea 4
replaceitem block ~-4 ~1 ~5 slot.container 14 conduit 5
loot insert ~-4 ~1 ~5 loot "rsf/warm_ocean"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 nautilus_shell 8
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 18
replaceitem block ~4 ~1 ~5 slot.container 2 wet_sponge 11
replaceitem block ~4 ~1 ~5 slot.container 3 copper_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 4 ink_sac 9
replaceitem block ~4 ~1 ~5 slot.container 5 trident 3
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 10 emerald 10
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 8
replaceitem block ~4 ~1 ~5 slot.container 12 sea_lantern 6
replaceitem block ~4 ~1 ~5 slot.container 13 heart_of_the_sea 2
replaceitem block ~4 ~1 ~5 slot.container 14 conduit 3
loot insert ~4 ~1 ~5 loot "rsf/warm_ocean"
loot insert ~4 ~1 ~5 loot "chests/underwater_ruin_big"
summon elder_guardian ~0 ~1 ~-1
summon dolphin ~-1 ~1 ~1
summon pufferfish ~1 ~1 ~1
summon tropicalfish ~0 ~-2 ~0
