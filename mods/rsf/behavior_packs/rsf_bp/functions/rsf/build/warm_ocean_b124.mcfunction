# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2812/4224 | 主题内编号: b124/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·三层重檐帝王阁楼与秘库 (warm_ocean_grand_pagoda_imperial)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x17 | 地上高度 10格 | 地下深度 4格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 prismarine [] replace water
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 prismarine [] replace air
fill ~-6 ~1 ~-8 ~6 ~12 ~8 air []
fill ~-6 ~0 ~-8 ~6 ~0 ~8 prismarine_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 dark_prismarine []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 prismarine_bricks []
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 sea_lantern []
setblock ~3 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~5 slot.container 0 prismarine_shard 21
replaceitem block ~3 ~-3 ~5 slot.container 1 prismarine_crystals 18
replaceitem block ~3 ~-3 ~5 slot.container 2 nautilus_shell 10
replaceitem block ~3 ~-3 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~-3 ~5 slot.container 4 wet_sponge 5
replaceitem block ~3 ~-3 ~5 slot.container 5 copper_ingot 10
replaceitem block ~3 ~-3 ~5 slot.container 9 heart_of_the_sea 2
replaceitem block ~3 ~-3 ~5 slot.container 10 conduit 3
replaceitem block ~3 ~-3 ~5 slot.container 11 sponge 7
replaceitem block ~3 ~-3 ~5 slot.container 12 cooked_cod 14
replaceitem block ~3 ~-3 ~5 slot.container 13 cooked_salmon 15
replaceitem block ~3 ~-3 ~5 slot.container 14 gold_ingot 14
loot insert ~3 ~-3 ~5 loot "rsf/warm_ocean"
loot insert ~3 ~-3 ~5 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-7 ~5 ~5 ~7 prismarine []
fill ~-4 ~1 ~-6 ~4 ~4 ~6 air []
fill ~-6 ~5 ~-8 ~6 ~5 ~8 prismarine_slab []
fill ~-4 ~6 ~-6 ~4 ~10 ~6 prismarine_bricks []
fill ~-3 ~6 ~-5 ~3 ~9 ~5 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~5 ~0 ~6 ~5 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~10 ~-8 ~6 ~10 ~8 prismarine_slab []
fill ~-4 ~11 ~-6 ~4 ~12 ~6 prismarine_bricks []
fill ~-5 ~13 ~-7 ~5 ~13 ~7 prismarine_brick_slab []
setblock ~0 ~14 ~0 gold_block []
setblock ~0 ~15 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~10 ~2 prismarine []
fill ~5 ~1 ~-1 ~6 ~9 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~11 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x10x3) ---
fill ~-7 ~0 ~0 ~-7 ~5 ~0 prismarine_bricks []
fill ~7 ~0 ~0 ~7 ~5 ~0 prismarine_bricks []
setblock ~-7 ~6 ~0 sea_lantern []
setblock ~7 ~6 ~0 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~5 ~0 sea_lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~6 slot.container 0 wet_sponge 8
replaceitem block ~-4 ~1 ~6 slot.container 1 copper_ingot 13
replaceitem block ~-4 ~1 ~6 slot.container 2 ink_sac 14
replaceitem block ~-4 ~1 ~6 slot.container 3 trident 8
replaceitem block ~-4 ~1 ~6 slot.container 4 prismarine_shard 16
replaceitem block ~-4 ~1 ~6 slot.container 5 prismarine_crystals 13
replaceitem block ~-4 ~1 ~6 slot.container 9 iron_ingot 13
replaceitem block ~-4 ~1 ~6 slot.container 10 emerald 11
replaceitem block ~-4 ~1 ~6 slot.container 11 golden_apple 2
replaceitem block ~-4 ~1 ~6 slot.container 12 sea_lantern 7
replaceitem block ~-4 ~1 ~6 slot.container 13 heart_of_the_sea 3
replaceitem block ~-4 ~1 ~6 slot.container 14 conduit 4
loot insert ~-4 ~1 ~6 loot "rsf/warm_ocean"
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 ink_sac 9
replaceitem block ~4 ~1 ~6 slot.container 1 trident 3
replaceitem block ~4 ~1 ~6 slot.container 2 prismarine_shard 19
replaceitem block ~4 ~1 ~6 slot.container 3 prismarine_crystals 16
replaceitem block ~4 ~1 ~6 slot.container 4 nautilus_shell 8
replaceitem block ~4 ~1 ~6 slot.container 5 rotten_flesh 18
replaceitem block ~4 ~1 ~6 slot.container 9 iron_ingot 11
replaceitem block ~4 ~1 ~6 slot.container 10 emerald 9
replaceitem block ~4 ~1 ~6 slot.container 11 golden_apple 7
replaceitem block ~4 ~1 ~6 slot.container 12 sea_lantern 12
replaceitem block ~4 ~1 ~6 slot.container 13 heart_of_the_sea 1
replaceitem block ~4 ~1 ~6 slot.container 14 conduit 2
loot insert ~4 ~1 ~6 loot "rsf/warm_ocean"
loot insert ~4 ~1 ~6 loot "chests/underwater_ruin_big"
summon pufferfish ~0 ~1 ~-1
summon tropicalfish ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
