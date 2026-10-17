# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2764/4224 | 主题内编号: b076/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·阶梯高台图腾战阵 (warm_ocean_totem_stepped_altar_ring)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[battlement_flat] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_armory]
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

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 prismarine []
fill ~-4 ~-4 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 gold_block []
setblock ~-3 ~-4 ~-4 sea_lantern []
setblock ~3 ~-4 ~4 sea_lantern []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 wet_sponge 5
replaceitem block ~0 ~-2 ~4 slot.container 1 copper_ingot 10
replaceitem block ~0 ~-2 ~4 slot.container 2 ink_sac 11
replaceitem block ~0 ~-2 ~4 slot.container 3 trident 5
replaceitem block ~0 ~-2 ~4 slot.container 4 prismarine_shard 21
replaceitem block ~0 ~-2 ~4 slot.container 5 prismarine_crystals 18
replaceitem block ~0 ~-2 ~4 slot.container 9 cooked_salmon 13
replaceitem block ~0 ~-2 ~4 slot.container 10 gold_ingot 12
replaceitem block ~0 ~-2 ~4 slot.container 11 iron_ingot 13
replaceitem block ~0 ~-2 ~4 slot.container 12 emerald 11
replaceitem block ~0 ~-2 ~4 slot.container 13 golden_apple 2
replaceitem block ~0 ~-2 ~4 slot.container 14 sea_lantern 7
loot insert ~0 ~-2 ~4 loot "rsf/warm_ocean"
loot insert ~0 ~-2 ~4 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 prismarine []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 prismarine_bricks []
fill ~-3 ~5 ~-4 ~3 ~8 ~4 prismarine_bricks []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 prismarine_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-5 ~5 ~7 ~5 prismarine_bricks []
fill ~-5 ~8 ~-5 ~5 ~8 ~5 cobblestone_wall []
fill ~-4 ~8 ~-4 ~4 ~8 ~4 air []
setblock ~-5 ~8 ~-5 sea_lantern []
setblock ~-5 ~9 ~-5 sea_lantern []
setblock ~-5 ~8 ~5 sea_lantern []
setblock ~-5 ~9 ~5 sea_lantern []
setblock ~5 ~8 ~-5 sea_lantern []
setblock ~5 ~9 ~-5 sea_lantern []
setblock ~5 ~8 ~5 sea_lantern []
setblock ~5 ~9 ~5 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 sea_lantern []
setblock ~0 ~4 ~-8 sponge []
setblock ~0 ~5 ~-8 sea_lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 sea_lantern []
setblock ~0 ~4 ~8 sponge []
setblock ~0 ~5 ~8 sea_lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 sea_lantern []
setblock ~-7 ~4 ~0 sponge []
setblock ~-7 ~5 ~0 sea_lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 sea_lantern []
setblock ~7 ~4 ~0 sponge []
setblock ~7 ~5 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x9x5) ---
fill ~-7 ~0 ~-3 ~-7 ~7 ~-3 prismarine_bricks []
fill ~7 ~0 ~-3 ~7 ~7 ~-3 prismarine_bricks []
setblock ~-7 ~8 ~-3 sea_lantern []
setblock ~7 ~8 ~-3 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 sea_lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 wet_sponge 8
replaceitem block ~-4 ~1 ~5 slot.container 1 copper_ingot 13
replaceitem block ~-4 ~1 ~5 slot.container 2 ink_sac 14
replaceitem block ~-4 ~1 ~5 slot.container 3 trident 8
replaceitem block ~-4 ~1 ~5 slot.container 4 prismarine_shard 16
replaceitem block ~-4 ~1 ~5 slot.container 5 prismarine_crystals 13
replaceitem block ~-4 ~1 ~5 slot.container 9 sponge 10
replaceitem block ~-4 ~1 ~5 slot.container 10 cooked_cod 10
replaceitem block ~-4 ~1 ~5 slot.container 11 cooked_salmon 11
replaceitem block ~-4 ~1 ~5 slot.container 12 gold_ingot 10
replaceitem block ~-4 ~1 ~5 slot.container 13 iron_ingot 11
replaceitem block ~-4 ~1 ~5 slot.container 14 emerald 9
loot insert ~-4 ~1 ~5 loot "rsf/warm_ocean"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ink_sac 9
replaceitem block ~4 ~1 ~5 slot.container 1 trident 3
replaceitem block ~4 ~1 ~5 slot.container 2 prismarine_shard 19
replaceitem block ~4 ~1 ~5 slot.container 3 prismarine_crystals 16
replaceitem block ~4 ~1 ~5 slot.container 4 nautilus_shell 8
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 18
replaceitem block ~4 ~1 ~5 slot.container 9 sponge 8
replaceitem block ~4 ~1 ~5 slot.container 10 cooked_cod 15
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_salmon 16
replaceitem block ~4 ~1 ~5 slot.container 12 gold_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 13 iron_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 14 emerald 7
loot insert ~4 ~1 ~5 loot "rsf/warm_ocean"
loot insert ~4 ~1 ~5 loot "chests/underwater_ruin_big"
summon pufferfish ~0 ~1 ~-1
summon tropicalfish ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
