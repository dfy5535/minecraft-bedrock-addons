# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2852/4224 | 主题内编号: b036/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·下沉碑林地宫方尖碑 (frozen_ocean_obelisk_sunken_stele)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 5格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 prismarine_bricks [] replace water
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 prismarine_bricks [] replace air
fill ~-6 ~1 ~-5 ~6 ~12 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 dark_prismarine []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 prismarine_bricks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~2 sea_lantern []
setblock ~3 ~-6 ~-2 sea_lantern []
setblock ~3 ~-4 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~2 slot.container 0 copper_ingot 11
replaceitem block ~3 ~-4 ~2 slot.container 1 trident 5
replaceitem block ~3 ~-4 ~2 slot.container 2 prismarine_shard 21
replaceitem block ~3 ~-4 ~2 slot.container 3 prismarine_crystals 18
replaceitem block ~3 ~-4 ~2 slot.container 4 nautilus_shell 10
replaceitem block ~3 ~-4 ~2 slot.container 5 bone 10
replaceitem block ~3 ~-4 ~2 slot.container 9 golden_apple 7
replaceitem block ~3 ~-4 ~2 slot.container 10 sea_lantern 12
replaceitem block ~3 ~-4 ~2 slot.container 11 heart_of_the_sea 1
replaceitem block ~3 ~-4 ~2 slot.container 12 blue_ice 13
replaceitem block ~3 ~-4 ~2 slot.container 13 sponge 6
replaceitem block ~3 ~-4 ~2 slot.container 14 cooked_salmon 15
loot insert ~3 ~-4 ~2 loot "rsf/frozen_ocean"
loot insert ~3 ~-4 ~2 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 prismarine_bricks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 blue_ice []
fill ~0 ~1 ~-4 ~0 ~2 ~4 blue_ice []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 blue_ice []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 prismarine_bricks []
fill ~0 ~16 ~0 ~0 ~19 ~0 gold_block []
setblock ~0 ~20 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 cobblestone_wall []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~-2 ~0 ~7 ~-2 ~9 ~7 dark_prismarine []
setblock ~-2 ~10 ~7 blue_ice []
setblock ~-2 ~11 ~7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~4 bookshelf []
setblock ~5 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 rotten_flesh 16
replaceitem block ~-4 ~1 ~2 slot.container 1 wet_sponge 9
replaceitem block ~-4 ~1 ~2 slot.container 2 copper_ingot 14
replaceitem block ~-4 ~1 ~2 slot.container 3 trident 8
replaceitem block ~-4 ~1 ~2 slot.container 4 prismarine_shard 16
replaceitem block ~-4 ~1 ~2 slot.container 5 prismarine_crystals 13
replaceitem block ~-4 ~1 ~2 slot.container 9 emerald 7
replaceitem block ~-4 ~1 ~2 slot.container 10 diamond 6
replaceitem block ~-4 ~1 ~2 slot.container 11 golden_apple 7
replaceitem block ~-4 ~1 ~2 slot.container 12 sea_lantern 12
replaceitem block ~-4 ~1 ~2 slot.container 13 heart_of_the_sea 1
replaceitem block ~-4 ~1 ~2 slot.container 14 blue_ice 13
loot insert ~-4 ~1 ~2 loot "rsf/frozen_ocean"
summon stray ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon elder_guardian ~1 ~1 ~1
summon squid ~0 ~-4 ~0
