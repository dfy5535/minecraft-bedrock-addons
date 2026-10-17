# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2851/4224 | 主题内编号: b035/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·巨石垒砌古战石冢 (frozen_ocean_obelisk_cairn_mound)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 dark_prismarine [] replace water
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 dark_prismarine [] replace air
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 dark_prismarine_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 prismarine_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 dark_prismarine []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 dark_prismarine []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-3 ~1 ~-2 ~3 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 sea_lantern []
setblock ~3 ~-5 ~0 sea_lantern []
setblock ~0 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~2 slot.container 0 prismarine_crystals 18
replaceitem block ~0 ~-3 ~2 slot.container 1 nautilus_shell 10
replaceitem block ~0 ~-3 ~2 slot.container 2 bone 10
replaceitem block ~0 ~-3 ~2 slot.container 3 rotten_flesh 13
replaceitem block ~0 ~-3 ~2 slot.container 4 wet_sponge 6
replaceitem block ~0 ~-3 ~2 slot.container 5 copper_ingot 11
replaceitem block ~0 ~-3 ~2 slot.container 9 iron_ingot 9
replaceitem block ~0 ~-3 ~2 slot.container 10 emerald 6
replaceitem block ~0 ~-3 ~2 slot.container 11 diamond 5
replaceitem block ~0 ~-3 ~2 slot.container 12 golden_apple 6
replaceitem block ~0 ~-3 ~2 slot.container 13 sea_lantern 11
replaceitem block ~0 ~-3 ~2 slot.container 14 heart_of_the_sea 7
loot insert ~0 ~-3 ~2 loot "rsf/frozen_ocean"
loot insert ~0 ~-3 ~2 loot "chests/shipwrecktreasure"
setblock ~0 ~-3 ~-2 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-2 slot.container 0 prismarine_crystals 16
replaceitem block ~0 ~-3 ~-2 slot.container 1 nautilus_shell 8
replaceitem block ~0 ~-3 ~-2 slot.container 2 bone 16
replaceitem block ~0 ~-3 ~-2 slot.container 3 rotten_flesh 19
replaceitem block ~0 ~-3 ~-2 slot.container 4 wet_sponge 4
replaceitem block ~0 ~-3 ~-2 slot.container 5 copper_ingot 9
replaceitem block ~0 ~-3 ~-2 slot.container 9 iron_ingot 8
replaceitem block ~0 ~-3 ~-2 slot.container 10 emerald 5
replaceitem block ~0 ~-3 ~-2 slot.container 11 diamond 4
replaceitem block ~0 ~-3 ~-2 slot.container 12 golden_apple 5
replaceitem block ~0 ~-3 ~-2 slot.container 13 sea_lantern 10
replaceitem block ~0 ~-3 ~-2 slot.container 14 heart_of_the_sea 6
loot insert ~0 ~-3 ~-2 loot "rsf/frozen_ocean"
loot insert ~0 ~-3 ~-2 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 dark_prismarine []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 air []
fill ~5 ~1 ~4 ~5 ~9 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~8 ~-3 sea_lantern []
fill ~4 ~1 ~-3 ~4 ~8 ~-3 sea_lantern []
fill ~-4 ~1 ~3 ~-4 ~8 ~3 sea_lantern []
fill ~4 ~1 ~3 ~4 ~8 ~3 sea_lantern []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 packed_ice []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 prismarine_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 blue_ice []
setblock ~0 ~12 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 sea_lantern []
setblock ~0 ~4 ~-6 gold_block []
setblock ~0 ~5 ~-6 sea_lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 sea_lantern []
setblock ~0 ~4 ~6 gold_block []
setblock ~0 ~5 ~6 sea_lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 sea_lantern []
setblock ~-7 ~4 ~0 gold_block []
setblock ~-7 ~5 ~0 sea_lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 sea_lantern []
setblock ~7 ~4 ~0 gold_block []
setblock ~7 ~5 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 8x6x5) ---
fill ~2 ~0 ~6 ~2 ~8 ~6 dark_prismarine []
setblock ~2 ~9 ~6 blue_ice []
setblock ~2 ~10 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 bone 13
replaceitem block ~4 ~1 ~2 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~1 ~2 slot.container 2 wet_sponge 9
replaceitem block ~4 ~1 ~2 slot.container 3 copper_ingot 14
replaceitem block ~4 ~1 ~2 slot.container 4 trident 8
replaceitem block ~4 ~1 ~2 slot.container 5 prismarine_shard 16
replaceitem block ~4 ~1 ~2 slot.container 9 cooked_salmon 14
replaceitem block ~4 ~1 ~2 slot.container 10 gold_ingot 11
replaceitem block ~4 ~1 ~2 slot.container 11 iron_ingot 12
replaceitem block ~4 ~1 ~2 slot.container 12 emerald 9
replaceitem block ~4 ~1 ~2 slot.container 13 diamond 8
replaceitem block ~4 ~1 ~2 slot.container 14 golden_apple 2
loot insert ~4 ~1 ~2 loot "rsf/frozen_ocean"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 wet_sponge 4
replaceitem block ~-4 ~1 ~3 slot.container 1 copper_ingot 9
replaceitem block ~-4 ~1 ~3 slot.container 2 trident 3
replaceitem block ~-4 ~1 ~3 slot.container 3 prismarine_shard 19
replaceitem block ~-4 ~1 ~3 slot.container 4 prismarine_crystals 16
replaceitem block ~-4 ~1 ~3 slot.container 5 nautilus_shell 8
replaceitem block ~-4 ~1 ~3 slot.container 9 cooked_salmon 12
replaceitem block ~-4 ~1 ~3 slot.container 10 gold_ingot 9
replaceitem block ~-4 ~1 ~3 slot.container 11 iron_ingot 10
replaceitem block ~-4 ~1 ~3 slot.container 12 emerald 7
replaceitem block ~-4 ~1 ~3 slot.container 13 diamond 6
replaceitem block ~-4 ~1 ~3 slot.container 14 golden_apple 7
loot insert ~-4 ~1 ~3 loot "rsf/frozen_ocean"
loot insert ~-4 ~1 ~3 loot "chests/shipwrecktreasure"
summon guardian ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
