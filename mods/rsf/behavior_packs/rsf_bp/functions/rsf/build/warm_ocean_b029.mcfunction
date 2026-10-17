# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2717/4224 | 主题内编号: b029/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·奥术星象琉璃塔 (warm_ocean_tower_mage_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 4格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 prismarine_bricks [] replace water
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 prismarine_bricks [] replace air
fill ~-5 ~1 ~-6 ~5 ~12 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 prismarine_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 prismarine []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 cut_sandstone []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 dark_prismarine []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 sponge []
setblock ~0 ~-6 ~0 sea_lantern []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-3 ~0 slot.container 0 copper_ingot 10
replaceitem block ~2 ~-3 ~0 slot.container 1 ink_sac 11
replaceitem block ~2 ~-3 ~0 slot.container 2 trident 5
replaceitem block ~2 ~-3 ~0 slot.container 3 prismarine_shard 21
replaceitem block ~2 ~-3 ~0 slot.container 4 prismarine_crystals 18
replaceitem block ~2 ~-3 ~0 slot.container 5 nautilus_shell 10
replaceitem block ~2 ~-3 ~0 slot.container 9 emerald 11
replaceitem block ~2 ~-3 ~0 slot.container 10 golden_apple 2
replaceitem block ~2 ~-3 ~0 slot.container 11 sea_lantern 7
replaceitem block ~2 ~-3 ~0 slot.container 12 heart_of_the_sea 3
replaceitem block ~2 ~-3 ~0 slot.container 13 conduit 4
replaceitem block ~2 ~-3 ~0 slot.container 14 sponge 8
loot insert ~2 ~-3 ~0 loot "rsf/warm_ocean"
loot insert ~2 ~-3 ~0 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-4 ~1 ~-5 ~4 ~10 ~5 prismarine_bricks []
fill ~-3 ~1 ~-4 ~3 ~9 ~4 air []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 dark_prismarine_slab []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~4 ~0 ~10 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~10 ~-5 ~4 ~10 ~5 dark_prismarine []
fill ~-3 ~11 ~-4 ~3 ~12 ~4 glass []
fill ~-2 ~11 ~-3 ~2 ~11 ~3 air []
setblock ~0 ~12 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 prismarine_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 sea_lantern []
setblock ~2 ~4 ~-8 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 6x6x3) ---
fill ~-6 ~0 ~2 ~-6 ~5 ~2 prismarine_bricks []
fill ~6 ~0 ~2 ~6 ~5 ~2 prismarine_bricks []
setblock ~-6 ~6 ~2 sea_lantern []
setblock ~6 ~6 ~2 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 sea_lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 copper_ingot 13
replaceitem block ~3 ~1 ~4 slot.container 1 ink_sac 14
replaceitem block ~3 ~1 ~4 slot.container 2 trident 8
replaceitem block ~3 ~1 ~4 slot.container 3 prismarine_shard 16
replaceitem block ~3 ~1 ~4 slot.container 4 prismarine_crystals 13
replaceitem block ~3 ~1 ~4 slot.container 5 nautilus_shell 5
replaceitem block ~3 ~1 ~4 slot.container 9 conduit 2
replaceitem block ~3 ~1 ~4 slot.container 10 sponge 6
replaceitem block ~3 ~1 ~4 slot.container 11 cooked_cod 13
replaceitem block ~3 ~1 ~4 slot.container 12 cooked_salmon 14
replaceitem block ~3 ~1 ~4 slot.container 13 gold_ingot 13
replaceitem block ~3 ~1 ~4 slot.container 14 iron_ingot 14
loot insert ~3 ~1 ~4 loot "rsf/warm_ocean"
summon tropicalfish ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon elder_guardian ~0 ~-3 ~0
