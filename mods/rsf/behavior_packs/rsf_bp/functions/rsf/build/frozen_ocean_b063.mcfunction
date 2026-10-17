# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2879/4224 | 主题内编号: b063/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·方尖碑镇压古墓穴 (frozen_ocean_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 dark_prismarine [] replace water
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 dark_prismarine [] replace air
fill ~-6 ~1 ~-5 ~6 ~12 ~5 air []
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
replaceitem block ~0 ~-3 ~2 slot.container 0 wet_sponge 6
replaceitem block ~0 ~-3 ~2 slot.container 1 copper_ingot 11
replaceitem block ~0 ~-3 ~2 slot.container 2 trident 5
replaceitem block ~0 ~-3 ~2 slot.container 3 prismarine_shard 21
replaceitem block ~0 ~-3 ~2 slot.container 4 prismarine_crystals 18
replaceitem block ~0 ~-3 ~2 slot.container 5 nautilus_shell 10
replaceitem block ~0 ~-3 ~2 slot.container 9 sea_lantern 7
replaceitem block ~0 ~-3 ~2 slot.container 10 heart_of_the_sea 3
replaceitem block ~0 ~-3 ~2 slot.container 11 blue_ice 15
replaceitem block ~0 ~-3 ~2 slot.container 12 sponge 8
replaceitem block ~0 ~-3 ~2 slot.container 13 cooked_salmon 17
replaceitem block ~0 ~-3 ~2 slot.container 14 gold_ingot 14
loot insert ~0 ~-3 ~2 loot "rsf/frozen_ocean"
loot insert ~0 ~-3 ~2 loot "chests/shipwrecktreasure"
setblock ~0 ~-3 ~-2 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-2 slot.container 0 wet_sponge 4
replaceitem block ~0 ~-3 ~-2 slot.container 1 copper_ingot 9
replaceitem block ~0 ~-3 ~-2 slot.container 2 trident 3
replaceitem block ~0 ~-3 ~-2 slot.container 3 prismarine_shard 19
replaceitem block ~0 ~-3 ~-2 slot.container 4 prismarine_crystals 16
replaceitem block ~0 ~-3 ~-2 slot.container 5 nautilus_shell 8
replaceitem block ~0 ~-3 ~-2 slot.container 9 sea_lantern 6
replaceitem block ~0 ~-3 ~-2 slot.container 10 heart_of_the_sea 2
replaceitem block ~0 ~-3 ~-2 slot.container 11 blue_ice 14
replaceitem block ~0 ~-3 ~-2 slot.container 12 sponge 7
replaceitem block ~0 ~-3 ~-2 slot.container 13 cooked_salmon 16
replaceitem block ~0 ~-3 ~-2 slot.container 14 gold_ingot 13
loot insert ~0 ~-3 ~-2 loot "rsf/frozen_ocean"
loot insert ~0 ~-3 ~-2 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~10 ~4 dark_prismarine []
fill ~-4 ~1 ~-3 ~4 ~9 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~11 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~11 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~11 ~4 air []
fill ~5 ~1 ~4 ~5 ~11 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~10 ~-3 sea_lantern []
fill ~4 ~1 ~-3 ~4 ~10 ~-3 sea_lantern []
fill ~-4 ~1 ~3 ~-4 ~10 ~3 sea_lantern []
fill ~4 ~1 ~3 ~4 ~10 ~3 sea_lantern []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 packed_ice []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 dark_prismarine []
fill ~0 ~16 ~0 ~0 ~19 ~0 blue_ice []
setblock ~0 ~20 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~9 ~-2 sea_lantern []
fill ~-6 ~0 ~2 ~-6 ~9 ~2 sea_lantern []
fill ~6 ~0 ~-2 ~6 ~9 ~-2 sea_lantern []
fill ~6 ~0 ~2 ~6 ~9 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~0 ~0 ~7 ~0 ~6 ~7 dark_prismarine []
setblock ~0 ~7 ~7 blue_ice []
setblock ~0 ~8 ~7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 trident 8
replaceitem block ~4 ~1 ~2 slot.container 1 prismarine_shard 16
replaceitem block ~4 ~1 ~2 slot.container 2 prismarine_crystals 13
replaceitem block ~4 ~1 ~2 slot.container 3 nautilus_shell 5
replaceitem block ~4 ~1 ~2 slot.container 4 bone 13
replaceitem block ~4 ~1 ~2 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~2 slot.container 9 diamond 4
replaceitem block ~4 ~1 ~2 slot.container 10 golden_apple 5
replaceitem block ~4 ~1 ~2 slot.container 11 sea_lantern 10
replaceitem block ~4 ~1 ~2 slot.container 12 heart_of_the_sea 6
replaceitem block ~4 ~1 ~2 slot.container 13 blue_ice 18
replaceitem block ~4 ~1 ~2 slot.container 14 sponge 4
loot insert ~4 ~1 ~2 loot "rsf/frozen_ocean"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 prismarine_crystals 16
replaceitem block ~-4 ~1 ~3 slot.container 1 nautilus_shell 8
replaceitem block ~-4 ~1 ~3 slot.container 2 bone 16
replaceitem block ~-4 ~1 ~3 slot.container 3 rotten_flesh 19
replaceitem block ~-4 ~1 ~3 slot.container 4 wet_sponge 4
replaceitem block ~-4 ~1 ~3 slot.container 5 copper_ingot 9
replaceitem block ~-4 ~1 ~3 slot.container 9 diamond 2
replaceitem block ~-4 ~1 ~3 slot.container 10 golden_apple 3
replaceitem block ~-4 ~1 ~3 slot.container 11 sea_lantern 8
replaceitem block ~-4 ~1 ~3 slot.container 12 heart_of_the_sea 4
replaceitem block ~-4 ~1 ~3 slot.container 13 blue_ice 16
replaceitem block ~-4 ~1 ~3 slot.container 14 sponge 9
loot insert ~-4 ~1 ~3 loot "rsf/frozen_ocean"
loot insert ~-4 ~1 ~3 loot "chests/shipwrecktreasure"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon stray ~0 ~-3 ~0
