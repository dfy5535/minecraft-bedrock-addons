# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2849/4224 | 主题内编号: b033/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·太阳金顶高耸方尖碑 (frozen_ocean_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 11x9 | 地上高度 12格 | 地下深度 3格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 stone_bricks [] replace water
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 stone_bricks [] replace air
fill ~-5 ~1 ~-4 ~5 ~14 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 prismarine []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 packed_ice []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 prismarine []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 packed_ice []
setblock ~0 ~-5 ~0 diamond_block []
fill ~0 ~-4 ~2 ~0 ~0 ~2 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 sea_lantern []
setblock ~2 ~-4 ~0 sea_lantern []
setblock ~0 ~-2 ~-1 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-1 slot.container 0 bone 10
replaceitem block ~0 ~-2 ~-1 slot.container 1 rotten_flesh 13
replaceitem block ~0 ~-2 ~-1 slot.container 2 wet_sponge 6
replaceitem block ~0 ~-2 ~-1 slot.container 3 copper_ingot 11
replaceitem block ~0 ~-2 ~-1 slot.container 4 trident 5
replaceitem block ~0 ~-2 ~-1 slot.container 5 prismarine_shard 21
replaceitem block ~0 ~-2 ~-1 slot.container 9 cooked_salmon 15
replaceitem block ~0 ~-2 ~-1 slot.container 10 gold_ingot 12
replaceitem block ~0 ~-2 ~-1 slot.container 11 iron_ingot 13
replaceitem block ~0 ~-2 ~-1 slot.container 12 emerald 10
replaceitem block ~0 ~-2 ~-1 slot.container 13 diamond 2
replaceitem block ~0 ~-2 ~-1 slot.container 14 golden_apple 3
loot insert ~0 ~-2 ~-1 loot "rsf/frozen_ocean"
loot insert ~0 ~-2 ~-1 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-3 ~4 ~2 ~3 stone_bricks []
fill ~-3 ~3 ~-2 ~3 ~4 ~2 packed_ice []
fill ~-2 ~5 ~-1 ~2 ~12 ~1 prismarine []
fill ~-2 ~1 ~-1 ~2 ~11 ~1 air []
fill ~0 ~1 ~-3 ~0 ~4 ~-3 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-2 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~13 ~-2 ~2 ~14 ~2 packed_ice []
fill ~-1 ~15 ~-1 ~1 ~17 ~1 stone_bricks []
fill ~0 ~18 ~0 ~0 ~21 ~0 sponge []
setblock ~0 ~22 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-5 ~-6 ~5 ~-5 sea_lantern []
setblock ~-6 ~6 ~-5 sea_lantern []
fill ~-6 ~0 ~5 ~-6 ~5 ~5 sea_lantern []
setblock ~-6 ~6 ~5 sea_lantern []
fill ~6 ~0 ~-5 ~6 ~5 ~-5 sea_lantern []
setblock ~6 ~6 ~-5 sea_lantern []
fill ~6 ~0 ~5 ~6 ~5 ~5 sea_lantern []
setblock ~6 ~6 ~5 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~0 ~0 ~6 ~0 ~6 ~6 dark_prismarine []
setblock ~0 ~7 ~6 blue_ice []
setblock ~0 ~8 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 sea_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 prismarine_crystals 13
replaceitem block ~3 ~1 ~1 slot.container 1 nautilus_shell 5
replaceitem block ~3 ~1 ~1 slot.container 2 bone 13
replaceitem block ~3 ~1 ~1 slot.container 3 rotten_flesh 16
replaceitem block ~3 ~1 ~1 slot.container 4 wet_sponge 9
replaceitem block ~3 ~1 ~1 slot.container 5 copper_ingot 14
replaceitem block ~3 ~1 ~1 slot.container 9 diamond 2
replaceitem block ~3 ~1 ~1 slot.container 10 golden_apple 3
replaceitem block ~3 ~1 ~1 slot.container 11 sea_lantern 8
replaceitem block ~3 ~1 ~1 slot.container 12 heart_of_the_sea 4
replaceitem block ~3 ~1 ~1 slot.container 13 blue_ice 16
replaceitem block ~3 ~1 ~1 slot.container 14 sponge 9
loot insert ~3 ~1 ~1 loot "rsf/frozen_ocean"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 bone 16
replaceitem block ~-3 ~1 ~2 slot.container 1 rotten_flesh 19
replaceitem block ~-3 ~1 ~2 slot.container 2 wet_sponge 4
replaceitem block ~-3 ~1 ~2 slot.container 3 copper_ingot 9
replaceitem block ~-3 ~1 ~2 slot.container 4 trident 3
replaceitem block ~-3 ~1 ~2 slot.container 5 prismarine_shard 19
replaceitem block ~-3 ~1 ~2 slot.container 9 diamond 7
replaceitem block ~-3 ~1 ~2 slot.container 10 golden_apple 8
replaceitem block ~-3 ~1 ~2 slot.container 11 sea_lantern 6
replaceitem block ~-3 ~1 ~2 slot.container 12 heart_of_the_sea 2
replaceitem block ~-3 ~1 ~2 slot.container 13 blue_ice 14
replaceitem block ~-3 ~1 ~2 slot.container 14 sponge 7
loot insert ~-3 ~1 ~2 loot "rsf/frozen_ocean"
loot insert ~-3 ~1 ~2 loot "chests/shipwrecktreasure"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon stray ~0 ~-2 ~0
