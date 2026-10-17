# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2887/4224 | 主题内编号: b071/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·残破双子哨所遗迹 (frozen_ocean_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x11 | 地上高度 8格 | 地下深度 2格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 dark_prismarine [] replace water
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 dark_prismarine [] replace air
fill ~-7 ~1 ~-5 ~7 ~10 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 dark_prismarine_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 prismarine_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 dark_prismarine []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-4 ~6 ~-1 ~4 packed_ice []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~9 ~4 dark_prismarine []
fill ~2 ~1 ~-4 ~6 ~9 ~4 dark_prismarine []
fill ~-5 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~5 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 packed_ice []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~8 ~-4 ~6 ~8 ~4 dark_prismarine_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-6 ~7 ~-1 ~-6 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 dark_prismarine []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x6x6) ---
fill ~-1 ~0 ~6 ~-1 ~9 ~6 dark_prismarine []
setblock ~-1 ~10 ~6 blue_ice []
setblock ~-1 ~11 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 trident 8
replaceitem block ~5 ~1 ~2 slot.container 1 prismarine_shard 16
replaceitem block ~5 ~1 ~2 slot.container 2 prismarine_crystals 13
replaceitem block ~5 ~1 ~2 slot.container 3 nautilus_shell 5
replaceitem block ~5 ~1 ~2 slot.container 4 bone 13
replaceitem block ~5 ~1 ~2 slot.container 5 rotten_flesh 16
replaceitem block ~5 ~1 ~2 slot.container 9 blue_ice 15
replaceitem block ~5 ~1 ~2 slot.container 10 sponge 8
replaceitem block ~5 ~1 ~2 slot.container 11 cooked_salmon 17
replaceitem block ~5 ~1 ~2 slot.container 12 gold_ingot 14
replaceitem block ~5 ~1 ~2 slot.container 13 iron_ingot 8
replaceitem block ~5 ~1 ~2 slot.container 14 emerald 5
loot insert ~5 ~1 ~2 loot "rsf/frozen_ocean"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 prismarine_crystals 16
replaceitem block ~-5 ~1 ~3 slot.container 1 nautilus_shell 8
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 3 rotten_flesh 19
replaceitem block ~-5 ~1 ~3 slot.container 4 wet_sponge 4
replaceitem block ~-5 ~1 ~3 slot.container 5 copper_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 9 blue_ice 13
replaceitem block ~-5 ~1 ~3 slot.container 10 sponge 6
replaceitem block ~-5 ~1 ~3 slot.container 11 cooked_salmon 15
replaceitem block ~-5 ~1 ~3 slot.container 12 gold_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_ingot 13
replaceitem block ~-5 ~1 ~3 slot.container 14 emerald 10
loot insert ~-5 ~1 ~3 loot "rsf/frozen_ocean"
loot insert ~-5 ~1 ~3 loot "chests/shipwrecktreasure"
summon guardian ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
