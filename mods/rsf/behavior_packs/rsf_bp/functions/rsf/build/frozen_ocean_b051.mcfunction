# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2867/4224 | 主题内编号: b051/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·带哨塔围栏探险营地 (frozen_ocean_outpost_watch_camp)
# 建筑构造: 主体[u_courtyard] + 屋顶[battlement_flat] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 2格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 dark_prismarine [] replace water
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 dark_prismarine [] replace air
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 dark_prismarine_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 dark_prismarine []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 packed_ice []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~8 ~5 dark_prismarine []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~8 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 dark_prismarine []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 packed_ice []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 cobblestone_wall []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 air []
setblock ~-6 ~9 ~-5 sea_lantern []
setblock ~-6 ~10 ~-5 sea_lantern []
setblock ~-6 ~9 ~5 sea_lantern []
setblock ~-6 ~10 ~5 sea_lantern []
setblock ~6 ~9 ~-5 sea_lantern []
setblock ~6 ~10 ~-5 sea_lantern []
setblock ~6 ~9 ~5 sea_lantern []
setblock ~6 ~10 ~5 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~10 ~2 prismarine_bricks []
fill ~7 ~1 ~-1 ~8 ~9 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~11 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~-3 ~0 ~8 ~-3 ~9 ~8 dark_prismarine []
setblock ~-3 ~10 ~8 blue_ice []
setblock ~-3 ~11 ~8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 bone 13
replaceitem block ~5 ~1 ~3 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~3 slot.container 2 wet_sponge 9
replaceitem block ~5 ~1 ~3 slot.container 3 copper_ingot 14
replaceitem block ~5 ~1 ~3 slot.container 4 trident 8
replaceitem block ~5 ~1 ~3 slot.container 5 prismarine_shard 16
replaceitem block ~5 ~1 ~3 slot.container 9 blue_ice 16
replaceitem block ~5 ~1 ~3 slot.container 10 sponge 9
replaceitem block ~5 ~1 ~3 slot.container 11 cooked_salmon 18
replaceitem block ~5 ~1 ~3 slot.container 12 gold_ingot 8
replaceitem block ~5 ~1 ~3 slot.container 13 iron_ingot 9
replaceitem block ~5 ~1 ~3 slot.container 14 emerald 6
loot insert ~5 ~1 ~3 loot "rsf/frozen_ocean"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 wet_sponge 4
replaceitem block ~-5 ~1 ~4 slot.container 1 copper_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 2 trident 3
replaceitem block ~-5 ~1 ~4 slot.container 3 prismarine_shard 19
replaceitem block ~-5 ~1 ~4 slot.container 4 prismarine_crystals 16
replaceitem block ~-5 ~1 ~4 slot.container 5 nautilus_shell 8
replaceitem block ~-5 ~1 ~4 slot.container 9 blue_ice 14
replaceitem block ~-5 ~1 ~4 slot.container 10 sponge 7
replaceitem block ~-5 ~1 ~4 slot.container 11 cooked_salmon 16
replaceitem block ~-5 ~1 ~4 slot.container 12 gold_ingot 13
replaceitem block ~-5 ~1 ~4 slot.container 13 iron_ingot 14
replaceitem block ~-5 ~1 ~4 slot.container 14 emerald 4
loot insert ~-5 ~1 ~4 loot "rsf/frozen_ocean"
loot insert ~-5 ~1 ~4 loot "chests/shipwrecktreasure"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon stray ~0 ~2 ~0
