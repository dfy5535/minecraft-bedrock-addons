# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2723/4224 | 主题内编号: b035/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·巨石垒砌古战石冢 (warm_ocean_obelisk_cairn_mound)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~1 ~-6 ~5 ~9 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 dark_prismarine []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 prismarine_bricks []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 sea_lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 prismarine_crystals 18
replaceitem block ~3 ~-4 ~5 slot.container 1 nautilus_shell 10
replaceitem block ~3 ~-4 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~3 ~-4 ~5 slot.container 3 wet_sponge 5
replaceitem block ~3 ~-4 ~5 slot.container 4 copper_ingot 10
replaceitem block ~3 ~-4 ~5 slot.container 5 ink_sac 11
replaceitem block ~3 ~-4 ~5 slot.container 9 sea_lantern 11
replaceitem block ~3 ~-4 ~5 slot.container 10 heart_of_the_sea 7
replaceitem block ~3 ~-4 ~5 slot.container 11 conduit 1
replaceitem block ~3 ~-4 ~5 slot.container 12 sponge 5
replaceitem block ~3 ~-4 ~5 slot.container 13 cooked_cod 12
replaceitem block ~3 ~-4 ~5 slot.container 14 cooked_salmon 13
loot insert ~3 ~-4 ~5 loot "rsf/warm_ocean"
loot insert ~3 ~-4 ~5 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~7 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 air []
fill ~4 ~1 ~5 ~4 ~8 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 sea_lantern []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 sea_lantern []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 sea_lantern []
fill ~3 ~1 ~4 ~3 ~7 ~4 sea_lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 prismarine_bricks []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 prismarine []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 diamond_block []
setblock ~0 ~11 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 sea_lantern []
setblock ~0 ~4 ~-7 gold_block []
setblock ~0 ~5 ~-7 sea_lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 sea_lantern []
setblock ~0 ~4 ~7 gold_block []
setblock ~0 ~5 ~7 sea_lantern []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 sea_lantern []
setblock ~-6 ~4 ~0 gold_block []
setblock ~-6 ~5 ~0 sea_lantern []
fill ~6 ~0 ~0 ~6 ~3 ~0 sea_lantern []
setblock ~6 ~4 ~0 gold_block []
setblock ~6 ~5 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 6x6x4) ---
fill ~-6 ~0 ~-2 ~-6 ~6 ~-2 prismarine_bricks []
fill ~6 ~0 ~-2 ~6 ~6 ~-2 prismarine_bricks []
setblock ~-6 ~7 ~-2 sea_lantern []
setblock ~6 ~7 ~-2 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-3 ~1 ~4 smithing_table []
setblock ~-2 ~1 ~4 anvil []
setblock ~2 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 1 wet_sponge 8
replaceitem block ~3 ~1 ~4 slot.container 2 copper_ingot 13
replaceitem block ~3 ~1 ~4 slot.container 3 ink_sac 14
replaceitem block ~3 ~1 ~4 slot.container 4 trident 8
replaceitem block ~3 ~1 ~4 slot.container 5 prismarine_shard 16
replaceitem block ~3 ~1 ~4 slot.container 9 sea_lantern 6
replaceitem block ~3 ~1 ~4 slot.container 10 heart_of_the_sea 2
replaceitem block ~3 ~1 ~4 slot.container 11 conduit 3
replaceitem block ~3 ~1 ~4 slot.container 12 sponge 7
replaceitem block ~3 ~1 ~4 slot.container 13 cooked_cod 14
replaceitem block ~3 ~1 ~4 slot.container 14 cooked_salmon 15
loot insert ~3 ~1 ~4 loot "rsf/warm_ocean"
summon tropicalfish ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon elder_guardian ~0 ~-4 ~0
