# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2918/4224 | 主题内编号: b102/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·双子箭塔联防碉楼 (frozen_ocean_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 17x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 prismarine [] replace water
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 prismarine [] replace air
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 prismarine_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 packed_ice []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 prismarine_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 prismarine []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~2 sea_lantern []
setblock ~5 ~-5 ~-2 sea_lantern []
setblock ~5 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~2 slot.container 0 prismarine_shard 21
replaceitem block ~5 ~-3 ~2 slot.container 1 prismarine_crystals 18
replaceitem block ~5 ~-3 ~2 slot.container 2 nautilus_shell 10
replaceitem block ~5 ~-3 ~2 slot.container 3 bone 10
replaceitem block ~5 ~-3 ~2 slot.container 4 rotten_flesh 13
replaceitem block ~5 ~-3 ~2 slot.container 5 wet_sponge 6
replaceitem block ~5 ~-3 ~2 slot.container 9 emerald 5
replaceitem block ~5 ~-3 ~2 slot.container 10 diamond 4
replaceitem block ~5 ~-3 ~2 slot.container 11 golden_apple 5
replaceitem block ~5 ~-3 ~2 slot.container 12 sea_lantern 10
replaceitem block ~5 ~-3 ~2 slot.container 13 heart_of_the_sea 6
replaceitem block ~5 ~-3 ~2 slot.container 14 blue_ice 18
loot insert ~5 ~-3 ~2 loot "rsf/frozen_ocean"
loot insert ~5 ~-3 ~2 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~10 ~4 prismarine []
fill ~2 ~1 ~-4 ~7 ~10 ~4 prismarine []
fill ~-6 ~1 ~-3 ~-3 ~9 ~3 air []
fill ~3 ~1 ~-3 ~6 ~9 ~3 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 dark_prismarine []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~9 ~-4 ~7 ~9 ~4 dark_prismarine []
fill ~-7 ~10 ~-4 ~7 ~10 ~4 cobblestone_wall []
fill ~-6 ~10 ~-3 ~6 ~10 ~3 air []
setblock ~-7 ~10 ~-4 sea_lantern []
setblock ~-7 ~11 ~-4 sea_lantern []
setblock ~-7 ~10 ~4 sea_lantern []
setblock ~-7 ~11 ~4 sea_lantern []
setblock ~7 ~10 ~-4 sea_lantern []
setblock ~7 ~11 ~-4 sea_lantern []
setblock ~7 ~10 ~4 sea_lantern []
setblock ~7 ~11 ~4 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~8 ~-2 sea_lantern []
fill ~-8 ~0 ~2 ~-8 ~8 ~2 sea_lantern []
fill ~8 ~0 ~-2 ~8 ~8 ~-2 sea_lantern []
fill ~8 ~0 ~2 ~8 ~8 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 10x7x2) ---
fill ~0 ~0 ~7 ~0 ~5 ~7 dark_prismarine []
setblock ~0 ~6 ~7 blue_ice []
setblock ~0 ~7 ~7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 copper_ingot 14
replaceitem block ~-6 ~1 ~2 slot.container 1 trident 8
replaceitem block ~-6 ~1 ~2 slot.container 2 prismarine_shard 16
replaceitem block ~-6 ~1 ~2 slot.container 3 prismarine_crystals 13
replaceitem block ~-6 ~1 ~2 slot.container 4 nautilus_shell 5
replaceitem block ~-6 ~1 ~2 slot.container 5 bone 13
replaceitem block ~-6 ~1 ~2 slot.container 9 gold_ingot 14
replaceitem block ~-6 ~1 ~2 slot.container 10 iron_ingot 8
replaceitem block ~-6 ~1 ~2 slot.container 11 emerald 5
replaceitem block ~-6 ~1 ~2 slot.container 12 diamond 4
replaceitem block ~-6 ~1 ~2 slot.container 13 golden_apple 5
replaceitem block ~-6 ~1 ~2 slot.container 14 sea_lantern 10
loot insert ~-6 ~1 ~2 loot "rsf/frozen_ocean"
summon stray ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon elder_guardian ~1 ~1 ~1
summon squid ~0 ~-3 ~0
