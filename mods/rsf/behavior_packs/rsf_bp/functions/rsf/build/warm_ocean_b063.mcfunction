# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2751/4224 | 主题内编号: b063/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·方尖碑镇压古墓穴 (warm_ocean_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 5格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~1 ~-6 ~5 ~11 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 dark_prismarine []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-6 ~-1 ~3 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 sea_lantern []
setblock ~2 ~-6 ~0 sea_lantern []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 copper_ingot 10
replaceitem block ~0 ~-4 ~3 slot.container 1 ink_sac 11
replaceitem block ~0 ~-4 ~3 slot.container 2 trident 5
replaceitem block ~0 ~-4 ~3 slot.container 3 prismarine_shard 21
replaceitem block ~0 ~-4 ~3 slot.container 4 prismarine_crystals 18
replaceitem block ~0 ~-4 ~3 slot.container 5 nautilus_shell 10
replaceitem block ~0 ~-4 ~3 slot.container 9 gold_ingot 14
replaceitem block ~0 ~-4 ~3 slot.container 10 iron_ingot 8
replaceitem block ~0 ~-4 ~3 slot.container 11 emerald 6
replaceitem block ~0 ~-4 ~3 slot.container 12 golden_apple 4
replaceitem block ~0 ~-4 ~3 slot.container 13 sea_lantern 9
replaceitem block ~0 ~-4 ~3 slot.container 14 heart_of_the_sea 5
loot insert ~0 ~-4 ~3 loot "rsf/warm_ocean"
loot insert ~0 ~-4 ~3 loot "chests/underwater_ruin_big"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 copper_ingot 8
replaceitem block ~0 ~-4 ~-3 slot.container 1 ink_sac 9
replaceitem block ~0 ~-4 ~-3 slot.container 2 trident 3
replaceitem block ~0 ~-4 ~-3 slot.container 3 prismarine_shard 19
replaceitem block ~0 ~-4 ~-3 slot.container 4 prismarine_crystals 16
replaceitem block ~0 ~-4 ~-3 slot.container 5 nautilus_shell 8
replaceitem block ~0 ~-4 ~-3 slot.container 9 gold_ingot 13
replaceitem block ~0 ~-4 ~-3 slot.container 10 iron_ingot 14
replaceitem block ~0 ~-4 ~-3 slot.container 11 emerald 5
replaceitem block ~0 ~-4 ~-3 slot.container 12 golden_apple 3
replaceitem block ~0 ~-4 ~-3 slot.container 13 sea_lantern 8
replaceitem block ~0 ~-4 ~-3 slot.container 14 heart_of_the_sea 4
loot insert ~0 ~-4 ~-3 loot "rsf/warm_ocean"
loot insert ~0 ~-4 ~-3 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~9 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~8 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~10 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~10 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~10 ~5 air []
fill ~4 ~1 ~5 ~4 ~10 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~9 ~-4 sea_lantern []
fill ~3 ~1 ~-4 ~3 ~9 ~-4 sea_lantern []
fill ~-3 ~1 ~4 ~-3 ~9 ~4 sea_lantern []
fill ~3 ~1 ~4 ~3 ~9 ~4 sea_lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-6 ~-7 ~7 ~6 prismarine_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-6 ~7 ~7 ~6 prismarine_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-5 ~-6 ~8 ~5 prismarine_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-5 ~6 ~8 ~5 prismarine_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~5 ~8 ~5 prismarine_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 prismarine_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~8 ~-2 sea_lantern []
fill ~-5 ~0 ~2 ~-5 ~8 ~2 sea_lantern []
fill ~5 ~0 ~-2 ~5 ~8 ~-2 sea_lantern []
fill ~5 ~0 ~2 ~5 ~8 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~-6 ~0 ~1 ~-6 ~4 ~1 prismarine_bricks []
fill ~6 ~0 ~1 ~6 ~4 ~1 prismarine_bricks []
setblock ~-6 ~5 ~1 sea_lantern []
setblock ~6 ~5 ~1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~8 ~0 sea_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-3 ~1 ~0 lectern []
setblock ~3 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 trident 8
replaceitem block ~3 ~1 ~4 slot.container 1 prismarine_shard 16
replaceitem block ~3 ~1 ~4 slot.container 2 prismarine_crystals 13
replaceitem block ~3 ~1 ~4 slot.container 3 nautilus_shell 5
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 5 wet_sponge 8
replaceitem block ~3 ~1 ~4 slot.container 9 cooked_cod 10
replaceitem block ~3 ~1 ~4 slot.container 10 cooked_salmon 11
replaceitem block ~3 ~1 ~4 slot.container 11 gold_ingot 10
replaceitem block ~3 ~1 ~4 slot.container 12 iron_ingot 11
replaceitem block ~3 ~1 ~4 slot.container 13 emerald 9
replaceitem block ~3 ~1 ~4 slot.container 14 golden_apple 7
loot insert ~3 ~1 ~4 loot "rsf/warm_ocean"
summon dolphin ~0 ~1 ~-1
summon pufferfish ~-1 ~1 ~1
