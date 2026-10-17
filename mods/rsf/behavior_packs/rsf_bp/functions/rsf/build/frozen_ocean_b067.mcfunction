# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2883/4224 | 主题内编号: b067/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·半掩埋下沉庭院遗迹 (frozen_ocean_ruin_sunken_courtyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[ruined_skylight] + 地宫[aquifer_cistern] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 dark_prismarine [] replace water
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 dark_prismarine [] replace air
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 dark_prismarine_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 dark_prismarine []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 packed_ice []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 packed_ice []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 sea_lantern []
setblock ~-4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-3 ~3 slot.container 0 wet_sponge 6
replaceitem block ~-4 ~-3 ~3 slot.container 1 copper_ingot 11
replaceitem block ~-4 ~-3 ~3 slot.container 2 trident 5
replaceitem block ~-4 ~-3 ~3 slot.container 3 prismarine_shard 21
replaceitem block ~-4 ~-3 ~3 slot.container 4 prismarine_crystals 18
replaceitem block ~-4 ~-3 ~3 slot.container 5 nautilus_shell 10
replaceitem block ~-4 ~-3 ~3 slot.container 9 iron_ingot 8
replaceitem block ~-4 ~-3 ~3 slot.container 10 emerald 5
replaceitem block ~-4 ~-3 ~3 slot.container 11 diamond 4
replaceitem block ~-4 ~-3 ~3 slot.container 12 golden_apple 5
replaceitem block ~-4 ~-3 ~3 slot.container 13 sea_lantern 10
replaceitem block ~-4 ~-3 ~3 slot.container 14 heart_of_the_sea 6
loot insert ~-4 ~-3 ~3 loot "rsf/frozen_ocean"
loot insert ~-4 ~-3 ~3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 dark_prismarine []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 dark_prismarine []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 dark_prismarine_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 prismarine_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x6x2) ---
fill ~1 ~0 ~6 ~1 ~5 ~6 dark_prismarine []
setblock ~1 ~6 ~6 blue_ice []
setblock ~1 ~7 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~5 ~0 sea_lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 bone 13
replaceitem block ~5 ~1 ~3 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~3 slot.container 2 wet_sponge 9
replaceitem block ~5 ~1 ~3 slot.container 3 copper_ingot 14
replaceitem block ~5 ~1 ~3 slot.container 4 trident 8
replaceitem block ~5 ~1 ~3 slot.container 5 prismarine_shard 16
replaceitem block ~5 ~1 ~3 slot.container 9 sea_lantern 12
replaceitem block ~5 ~1 ~3 slot.container 10 heart_of_the_sea 1
replaceitem block ~5 ~1 ~3 slot.container 11 blue_ice 13
replaceitem block ~5 ~1 ~3 slot.container 12 sponge 6
replaceitem block ~5 ~1 ~3 slot.container 13 cooked_salmon 15
replaceitem block ~5 ~1 ~3 slot.container 14 gold_ingot 12
loot insert ~5 ~1 ~3 loot "rsf/frozen_ocean"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 wet_sponge 4
replaceitem block ~-5 ~1 ~4 slot.container 1 copper_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 2 trident 3
replaceitem block ~-5 ~1 ~4 slot.container 3 prismarine_shard 19
replaceitem block ~-5 ~1 ~4 slot.container 4 prismarine_crystals 16
replaceitem block ~-5 ~1 ~4 slot.container 5 nautilus_shell 8
replaceitem block ~-5 ~1 ~4 slot.container 9 sea_lantern 10
replaceitem block ~-5 ~1 ~4 slot.container 10 heart_of_the_sea 6
replaceitem block ~-5 ~1 ~4 slot.container 11 blue_ice 18
replaceitem block ~-5 ~1 ~4 slot.container 12 sponge 4
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_salmon 13
replaceitem block ~-5 ~1 ~4 slot.container 14 gold_ingot 10
loot insert ~-5 ~1 ~4 loot "rsf/frozen_ocean"
loot insert ~-5 ~1 ~4 loot "chests/shipwrecktreasure"
summon polar_bear ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
