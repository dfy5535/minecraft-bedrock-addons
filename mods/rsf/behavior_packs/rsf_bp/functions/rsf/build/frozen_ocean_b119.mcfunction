# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2935/4224 | 主题内编号: b119/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·半地下恒温洞穴苗圃 (frozen_ocean_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 dark_prismarine [] replace water
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 dark_prismarine [] replace air
fill ~-6 ~1 ~-6 ~6 ~8 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 dark_prismarine_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 prismarine_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 dark_prismarine []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 packed_ice []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 packed_ice []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 sea_lantern []
setblock ~-3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~3 slot.container 0 prismarine_crystals 18
replaceitem block ~-3 ~-3 ~3 slot.container 1 nautilus_shell 10
replaceitem block ~-3 ~-3 ~3 slot.container 2 bone 10
replaceitem block ~-3 ~-3 ~3 slot.container 3 rotten_flesh 13
replaceitem block ~-3 ~-3 ~3 slot.container 4 wet_sponge 6
replaceitem block ~-3 ~-3 ~3 slot.container 5 copper_ingot 11
replaceitem block ~-3 ~-3 ~3 slot.container 9 blue_ice 15
replaceitem block ~-3 ~-3 ~3 slot.container 10 sponge 8
replaceitem block ~-3 ~-3 ~3 slot.container 11 cooked_salmon 17
replaceitem block ~-3 ~-3 ~3 slot.container 12 gold_ingot 14
replaceitem block ~-3 ~-3 ~3 slot.container 13 iron_ingot 8
replaceitem block ~-3 ~-3 ~3 slot.container 14 emerald 5
loot insert ~-3 ~-3 ~3 loot "rsf/frozen_ocean"
loot insert ~-3 ~-3 ~3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-5 ~5 ~2 ~5 dark_prismarine []
fill ~-4 ~1 ~-4 ~4 ~3 ~4 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 packed_ice []
fill ~0 ~1 ~-5 ~0 ~2 ~5 packed_ice []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-5 ~5 ~6 ~5 packed_ice []
fill ~-4 ~7 ~-4 ~4 ~8 ~4 glass []
fill ~-3 ~7 ~-3 ~3 ~7 ~3 air []
setblock ~0 ~8 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-7 ~7 ~2 ~7 cobblestone_wall []
fill ~-6 ~1 ~-6 ~6 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~1 ~0 ~7 ~1 ~7 ~7 dark_prismarine []
setblock ~1 ~8 ~7 blue_ice []
setblock ~1 ~9 ~7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-4 ~1 ~3 crafting_table []
setblock ~-3 ~1 ~3 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 trident 8
replaceitem block ~4 ~1 ~3 slot.container 1 prismarine_shard 16
replaceitem block ~4 ~1 ~3 slot.container 2 prismarine_crystals 13
replaceitem block ~4 ~1 ~3 slot.container 3 nautilus_shell 5
replaceitem block ~4 ~1 ~3 slot.container 4 bone 13
replaceitem block ~4 ~1 ~3 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~3 slot.container 9 iron_ingot 10
replaceitem block ~4 ~1 ~3 slot.container 10 emerald 7
replaceitem block ~4 ~1 ~3 slot.container 11 diamond 6
replaceitem block ~4 ~1 ~3 slot.container 12 golden_apple 7
replaceitem block ~4 ~1 ~3 slot.container 13 sea_lantern 12
replaceitem block ~4 ~1 ~3 slot.container 14 heart_of_the_sea 1
loot insert ~4 ~1 ~3 loot "rsf/frozen_ocean"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 prismarine_crystals 16
replaceitem block ~-4 ~1 ~4 slot.container 1 nautilus_shell 8
replaceitem block ~-4 ~1 ~4 slot.container 2 bone 16
replaceitem block ~-4 ~1 ~4 slot.container 3 rotten_flesh 19
replaceitem block ~-4 ~1 ~4 slot.container 4 wet_sponge 4
replaceitem block ~-4 ~1 ~4 slot.container 5 copper_ingot 9
replaceitem block ~-4 ~1 ~4 slot.container 9 iron_ingot 8
replaceitem block ~-4 ~1 ~4 slot.container 10 emerald 5
replaceitem block ~-4 ~1 ~4 slot.container 11 diamond 4
replaceitem block ~-4 ~1 ~4 slot.container 12 golden_apple 5
replaceitem block ~-4 ~1 ~4 slot.container 13 sea_lantern 10
replaceitem block ~-4 ~1 ~4 slot.container 14 heart_of_the_sea 6
loot insert ~-4 ~1 ~4 loot "rsf/frozen_ocean"
loot insert ~-4 ~1 ~4 loot "chests/shipwrecktreasure"
summon guardian ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
