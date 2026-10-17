# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2796/4224 | 主题内编号: b108/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·十字四相元素秘法殿 (warm_ocean_arcane_cross_sanctum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 prismarine [] replace water
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 prismarine [] replace air
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 prismarine_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 dark_prismarine []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 prismarine_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 gold_block []
setblock ~0 ~-5 ~0 sea_lantern []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 wet_sponge 5
replaceitem block ~3 ~-2 ~0 slot.container 1 copper_ingot 10
replaceitem block ~3 ~-2 ~0 slot.container 2 ink_sac 11
replaceitem block ~3 ~-2 ~0 slot.container 3 trident 5
replaceitem block ~3 ~-2 ~0 slot.container 4 prismarine_shard 21
replaceitem block ~3 ~-2 ~0 slot.container 5 prismarine_crystals 18
replaceitem block ~3 ~-2 ~0 slot.container 9 cooked_salmon 11
replaceitem block ~3 ~-2 ~0 slot.container 10 gold_ingot 10
replaceitem block ~3 ~-2 ~0 slot.container 11 iron_ingot 11
replaceitem block ~3 ~-2 ~0 slot.container 12 emerald 9
replaceitem block ~3 ~-2 ~0 slot.container 13 golden_apple 7
replaceitem block ~3 ~-2 ~0 slot.container 14 sea_lantern 12
loot insert ~3 ~-2 ~0 loot "rsf/warm_ocean"
loot insert ~3 ~-2 ~0 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~7 ~6 prismarine []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 prismarine []
fill ~-1 ~1 ~-5 ~1 ~6 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~6 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 prismarine_bricks []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 prismarine_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 gold_block []
setblock ~0 ~11 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 prismarine_bricks []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 sea_lantern []
setblock ~2 ~4 ~-10 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~-7 ~0 ~-1 ~-7 ~4 ~-1 prismarine_bricks []
fill ~7 ~0 ~-1 ~7 ~4 ~-1 prismarine_bricks []
setblock ~-7 ~5 ~-1 sea_lantern []
setblock ~7 ~5 ~-1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 sea_lantern []
setblock ~-4 ~1 ~5 crafting_table []
setblock ~-3 ~1 ~5 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 wet_sponge 8
replaceitem block ~-4 ~1 ~5 slot.container 1 copper_ingot 13
replaceitem block ~-4 ~1 ~5 slot.container 2 ink_sac 14
replaceitem block ~-4 ~1 ~5 slot.container 3 trident 8
replaceitem block ~-4 ~1 ~5 slot.container 4 prismarine_shard 16
replaceitem block ~-4 ~1 ~5 slot.container 5 prismarine_crystals 13
replaceitem block ~-4 ~1 ~5 slot.container 9 golden_apple 5
replaceitem block ~-4 ~1 ~5 slot.container 10 sea_lantern 10
replaceitem block ~-4 ~1 ~5 slot.container 11 heart_of_the_sea 6
replaceitem block ~-4 ~1 ~5 slot.container 12 conduit 7
replaceitem block ~-4 ~1 ~5 slot.container 13 sponge 4
replaceitem block ~-4 ~1 ~5 slot.container 14 cooked_cod 11
loot insert ~-4 ~1 ~5 loot "rsf/warm_ocean"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ink_sac 9
replaceitem block ~4 ~1 ~5 slot.container 1 trident 3
replaceitem block ~4 ~1 ~5 slot.container 2 prismarine_shard 19
replaceitem block ~4 ~1 ~5 slot.container 3 prismarine_crystals 16
replaceitem block ~4 ~1 ~5 slot.container 4 nautilus_shell 8
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 18
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 3
replaceitem block ~4 ~1 ~5 slot.container 10 sea_lantern 8
replaceitem block ~4 ~1 ~5 slot.container 11 heart_of_the_sea 4
replaceitem block ~4 ~1 ~5 slot.container 12 conduit 5
replaceitem block ~4 ~1 ~5 slot.container 13 sponge 9
replaceitem block ~4 ~1 ~5 slot.container 14 cooked_cod 16
loot insert ~4 ~1 ~5 loot "rsf/warm_ocean"
loot insert ~4 ~1 ~5 loot "chests/underwater_ruin_big"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
