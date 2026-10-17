# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2831/4224 | 主题内编号: b015/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·竖井阶梯深渊地牢 (frozen_ocean_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 5格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 dark_prismarine [] replace water
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 dark_prismarine [] replace air
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 dark_prismarine_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 prismarine_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 dark_prismarine []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 dark_prismarine []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~2 sea_lantern []
setblock ~3 ~-6 ~-2 sea_lantern []
setblock ~3 ~-4 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~2 slot.container 0 prismarine_crystals 18
replaceitem block ~3 ~-4 ~2 slot.container 1 nautilus_shell 10
replaceitem block ~3 ~-4 ~2 slot.container 2 bone 10
replaceitem block ~3 ~-4 ~2 slot.container 3 rotten_flesh 13
replaceitem block ~3 ~-4 ~2 slot.container 4 wet_sponge 6
replaceitem block ~3 ~-4 ~2 slot.container 5 copper_ingot 11
replaceitem block ~3 ~-4 ~2 slot.container 9 iron_ingot 13
replaceitem block ~3 ~-4 ~2 slot.container 10 emerald 10
replaceitem block ~3 ~-4 ~2 slot.container 11 diamond 2
replaceitem block ~3 ~-4 ~2 slot.container 12 golden_apple 3
replaceitem block ~3 ~-4 ~2 slot.container 13 sea_lantern 8
replaceitem block ~3 ~-4 ~2 slot.container 14 heart_of_the_sea 4
loot insert ~3 ~-4 ~2 loot "rsf/frozen_ocean"
loot insert ~3 ~-4 ~2 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 dark_prismarine []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 packed_ice []
fill ~-3 ~5 ~-2 ~3 ~8 ~2 prismarine_bricks []
fill ~-3 ~1 ~-2 ~3 ~7 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 dark_prismarine_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 packed_ice []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 dark_prismarine []
fill ~0 ~14 ~0 ~0 ~17 ~0 blue_ice []
setblock ~0 ~18 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 sea_lantern []
setblock ~-7 ~6 ~-6 sea_lantern []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 sea_lantern []
setblock ~-7 ~6 ~6 sea_lantern []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 sea_lantern []
setblock ~7 ~6 ~-6 sea_lantern []
fill ~7 ~0 ~6 ~7 ~5 ~6 sea_lantern []
setblock ~7 ~6 ~6 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~2 ~0 ~7 ~2 ~8 ~7 dark_prismarine []
setblock ~2 ~9 ~7 blue_ice []
setblock ~2 ~10 ~7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 sea_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 trident 8
replaceitem block ~4 ~1 ~2 slot.container 1 prismarine_shard 16
replaceitem block ~4 ~1 ~2 slot.container 2 prismarine_crystals 13
replaceitem block ~4 ~1 ~2 slot.container 3 nautilus_shell 5
replaceitem block ~4 ~1 ~2 slot.container 4 bone 13
replaceitem block ~4 ~1 ~2 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~2 slot.container 9 cooked_salmon 15
replaceitem block ~4 ~1 ~2 slot.container 10 gold_ingot 12
replaceitem block ~4 ~1 ~2 slot.container 11 iron_ingot 13
replaceitem block ~4 ~1 ~2 slot.container 12 emerald 10
replaceitem block ~4 ~1 ~2 slot.container 13 diamond 2
replaceitem block ~4 ~1 ~2 slot.container 14 golden_apple 3
loot insert ~4 ~1 ~2 loot "rsf/frozen_ocean"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 prismarine_crystals 16
replaceitem block ~-4 ~1 ~3 slot.container 1 nautilus_shell 8
replaceitem block ~-4 ~1 ~3 slot.container 2 bone 16
replaceitem block ~-4 ~1 ~3 slot.container 3 rotten_flesh 19
replaceitem block ~-4 ~1 ~3 slot.container 4 wet_sponge 4
replaceitem block ~-4 ~1 ~3 slot.container 5 copper_ingot 9
replaceitem block ~-4 ~1 ~3 slot.container 9 cooked_salmon 13
replaceitem block ~-4 ~1 ~3 slot.container 10 gold_ingot 10
replaceitem block ~-4 ~1 ~3 slot.container 11 iron_ingot 11
replaceitem block ~-4 ~1 ~3 slot.container 12 emerald 8
replaceitem block ~-4 ~1 ~3 slot.container 13 diamond 7
replaceitem block ~-4 ~1 ~3 slot.container 14 golden_apple 8
loot insert ~-4 ~1 ~3 loot "rsf/frozen_ocean"
loot insert ~-4 ~1 ~3 loot "chests/shipwrecktreasure"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon stray ~0 ~-4 ~0
