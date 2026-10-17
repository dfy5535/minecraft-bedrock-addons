# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2839/4224 | 主题内编号: b023/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·双层露台阁楼宝室 (frozen_ocean_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x13 | 地上高度 9格 | 地下深度 2格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 dark_prismarine [] replace water
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 dark_prismarine [] replace air
fill ~-6 ~1 ~-6 ~6 ~11 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 dark_prismarine_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 prismarine_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 dark_prismarine []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 packed_ice []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-5 ~5 ~4 ~5 dark_prismarine []
fill ~-4 ~1 ~-4 ~4 ~3 ~4 air []
fill ~-6 ~4 ~-6 ~6 ~4 ~6 dark_prismarine_slab []
fill ~-4 ~5 ~-4 ~4 ~9 ~4 prismarine_bricks []
fill ~-3 ~5 ~-3 ~3 ~8 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~9 ~-6 ~6 ~9 ~6 dark_prismarine_slab []
fill ~-4 ~10 ~-4 ~4 ~11 ~4 prismarine_bricks []
fill ~-5 ~12 ~-5 ~5 ~12 ~5 prismarine_brick_slab []
setblock ~0 ~13 ~0 blue_ice []
setblock ~0 ~14 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~11 ~2 prismarine_bricks []
fill ~6 ~1 ~-1 ~7 ~10 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~12 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~0 ~0 ~7 ~0 ~6 ~7 dark_prismarine []
setblock ~0 ~7 ~7 blue_ice []
setblock ~0 ~8 ~7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~9 ~0 sea_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 trident 8
replaceitem block ~4 ~1 ~3 slot.container 1 prismarine_shard 16
replaceitem block ~4 ~1 ~3 slot.container 2 prismarine_crystals 13
replaceitem block ~4 ~1 ~3 slot.container 3 nautilus_shell 5
replaceitem block ~4 ~1 ~3 slot.container 4 bone 13
replaceitem block ~4 ~1 ~3 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~3 slot.container 9 diamond 6
replaceitem block ~4 ~1 ~3 slot.container 10 golden_apple 7
replaceitem block ~4 ~1 ~3 slot.container 11 sea_lantern 12
replaceitem block ~4 ~1 ~3 slot.container 12 heart_of_the_sea 1
replaceitem block ~4 ~1 ~3 slot.container 13 blue_ice 13
replaceitem block ~4 ~1 ~3 slot.container 14 sponge 6
loot insert ~4 ~1 ~3 loot "rsf/frozen_ocean"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 prismarine_crystals 16
replaceitem block ~-4 ~1 ~4 slot.container 1 nautilus_shell 8
replaceitem block ~-4 ~1 ~4 slot.container 2 bone 16
replaceitem block ~-4 ~1 ~4 slot.container 3 rotten_flesh 19
replaceitem block ~-4 ~1 ~4 slot.container 4 wet_sponge 4
replaceitem block ~-4 ~1 ~4 slot.container 5 copper_ingot 9
replaceitem block ~-4 ~1 ~4 slot.container 9 diamond 4
replaceitem block ~-4 ~1 ~4 slot.container 10 golden_apple 5
replaceitem block ~-4 ~1 ~4 slot.container 11 sea_lantern 10
replaceitem block ~-4 ~1 ~4 slot.container 12 heart_of_the_sea 6
replaceitem block ~-4 ~1 ~4 slot.container 13 blue_ice 18
replaceitem block ~-4 ~1 ~4 slot.container 14 sponge 4
loot insert ~-4 ~1 ~4 loot "rsf/frozen_ocean"
loot insert ~-4 ~1 ~4 loot "chests/shipwrecktreasure"
summon guardian ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
