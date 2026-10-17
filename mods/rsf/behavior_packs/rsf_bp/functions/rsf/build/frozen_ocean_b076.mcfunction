# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2892/4224 | 主题内编号: b076/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·阶梯高台图腾战阵 (frozen_ocean_totem_stepped_altar_ring)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 9格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 prismarine_bricks [] replace water
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 prismarine_bricks [] replace air
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 prismarine_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 dark_prismarine []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 prismarine_bricks []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 gold_block []
setblock ~-4 ~-5 ~-3 sea_lantern []
setblock ~4 ~-5 ~3 sea_lantern []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 rotten_flesh 13
replaceitem block ~0 ~-3 ~3 slot.container 1 wet_sponge 6
replaceitem block ~0 ~-3 ~3 slot.container 2 copper_ingot 11
replaceitem block ~0 ~-3 ~3 slot.container 3 trident 5
replaceitem block ~0 ~-3 ~3 slot.container 4 prismarine_shard 21
replaceitem block ~0 ~-3 ~3 slot.container 5 prismarine_crystals 18
replaceitem block ~0 ~-3 ~3 slot.container 9 golden_apple 7
replaceitem block ~0 ~-3 ~3 slot.container 10 sea_lantern 12
replaceitem block ~0 ~-3 ~3 slot.container 11 heart_of_the_sea 1
replaceitem block ~0 ~-3 ~3 slot.container 12 blue_ice 13
replaceitem block ~0 ~-3 ~3 slot.container 13 sponge 6
replaceitem block ~0 ~-3 ~3 slot.container 14 cooked_salmon 15
loot insert ~0 ~-3 ~3 loot "rsf/frozen_ocean"
loot insert ~0 ~-3 ~3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 prismarine_bricks []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 blue_ice []
fill ~-4 ~5 ~-3 ~4 ~9 ~3 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~8 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 prismarine_bricks_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 blue_ice []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 prismarine_bricks []
fill ~0 ~15 ~0 ~0 ~18 ~0 gold_block []
setblock ~0 ~19 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 sea_lantern []
setblock ~0 ~4 ~-7 sponge []
setblock ~0 ~5 ~-7 sea_lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 sea_lantern []
setblock ~0 ~4 ~7 sponge []
setblock ~0 ~5 ~7 sea_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 sea_lantern []
setblock ~-8 ~4 ~0 sponge []
setblock ~-8 ~5 ~0 sea_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 sea_lantern []
setblock ~8 ~4 ~0 sponge []
setblock ~8 ~5 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x6x6) ---
fill ~-2 ~0 ~6 ~-2 ~9 ~6 dark_prismarine []
setblock ~-2 ~10 ~6 blue_ice []
setblock ~-2 ~11 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 16
replaceitem block ~-5 ~1 ~3 slot.container 1 wet_sponge 9
replaceitem block ~-5 ~1 ~3 slot.container 2 copper_ingot 14
replaceitem block ~-5 ~1 ~3 slot.container 3 trident 8
replaceitem block ~-5 ~1 ~3 slot.container 4 prismarine_shard 16
replaceitem block ~-5 ~1 ~3 slot.container 5 prismarine_crystals 13
replaceitem block ~-5 ~1 ~3 slot.container 9 emerald 5
replaceitem block ~-5 ~1 ~3 slot.container 10 diamond 4
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_apple 5
replaceitem block ~-5 ~1 ~3 slot.container 12 sea_lantern 10
replaceitem block ~-5 ~1 ~3 slot.container 13 heart_of_the_sea 6
replaceitem block ~-5 ~1 ~3 slot.container 14 blue_ice 18
loot insert ~-5 ~1 ~3 loot "rsf/frozen_ocean"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
