# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2882/4224 | 主题内编号: b066/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·崩塌角楼古堡残垣 (frozen_ocean_ruin_shattered_keep)
# 建筑构造: 主体[fortress_citadel] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 prismarine [] replace water
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 prismarine [] replace air
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 prismarine_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_ice []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 prismarine_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 prismarine []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 sea_lantern []
setblock ~4 ~-5 ~-3 sea_lantern []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 rotten_flesh 13
replaceitem block ~4 ~-3 ~3 slot.container 1 wet_sponge 6
replaceitem block ~4 ~-3 ~3 slot.container 2 copper_ingot 11
replaceitem block ~4 ~-3 ~3 slot.container 3 trident 5
replaceitem block ~4 ~-3 ~3 slot.container 4 prismarine_shard 21
replaceitem block ~4 ~-3 ~3 slot.container 5 prismarine_crystals 18
replaceitem block ~4 ~-3 ~3 slot.container 9 golden_apple 2
replaceitem block ~4 ~-3 ~3 slot.container 10 sea_lantern 7
replaceitem block ~4 ~-3 ~3 slot.container 11 heart_of_the_sea 3
replaceitem block ~4 ~-3 ~3 slot.container 12 blue_ice 15
replaceitem block ~4 ~-3 ~3 slot.container 13 sponge 8
replaceitem block ~4 ~-3 ~3 slot.container 14 cooked_salmon 17
loot insert ~4 ~-3 ~3 loot "rsf/frozen_ocean"
loot insert ~4 ~-3 ~3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~8 ~5 prismarine []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~10 ~-4 dark_prismarine []
setblock ~-6 ~11 ~-5 sea_lantern []
fill ~-6 ~1 ~4 ~-5 ~10 ~5 dark_prismarine []
setblock ~-6 ~11 ~4 sea_lantern []
fill ~5 ~1 ~-5 ~6 ~10 ~-4 dark_prismarine []
setblock ~5 ~11 ~-5 sea_lantern []
fill ~5 ~1 ~4 ~6 ~10 ~5 dark_prismarine []
setblock ~5 ~11 ~4 sea_lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 prismarine_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-6 ~7 ~-1 ~-6 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~7 ~-2 sea_lantern []
fill ~-7 ~0 ~2 ~-7 ~7 ~2 sea_lantern []
fill ~7 ~0 ~-2 ~7 ~7 ~-2 sea_lantern []
fill ~7 ~0 ~2 ~7 ~7 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~0 ~0 ~8 ~0 ~9 ~8 dark_prismarine []
setblock ~0 ~10 ~8 blue_ice []
setblock ~0 ~11 ~8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 nautilus_shell 5
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 13
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 16
replaceitem block ~-5 ~1 ~3 slot.container 3 wet_sponge 9
replaceitem block ~-5 ~1 ~3 slot.container 4 copper_ingot 14
replaceitem block ~-5 ~1 ~3 slot.container 5 trident 8
replaceitem block ~-5 ~1 ~3 slot.container 9 emerald 9
replaceitem block ~-5 ~1 ~3 slot.container 10 diamond 8
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_apple 2
replaceitem block ~-5 ~1 ~3 slot.container 12 sea_lantern 7
replaceitem block ~-5 ~1 ~3 slot.container 13 heart_of_the_sea 3
replaceitem block ~-5 ~1 ~3 slot.container 14 blue_ice 15
loot insert ~-5 ~1 ~3 loot "rsf/frozen_ocean"
summon stray ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon elder_guardian ~1 ~1 ~1
summon squid ~0 ~-3 ~0
