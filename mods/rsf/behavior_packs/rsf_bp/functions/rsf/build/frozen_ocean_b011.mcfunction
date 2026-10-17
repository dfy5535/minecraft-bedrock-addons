# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2827/4224 | 主题内编号: b011/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·深渊困兽角斗地牢 (frozen_ocean_dungeon_pit_gladiator)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 dark_prismarine [] replace water
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 dark_prismarine [] replace air
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 dark_prismarine_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 dark_prismarine []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 dark_prismarine []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 blue_ice []
setblock ~-4 ~-5 ~-3 sea_lantern []
setblock ~4 ~-5 ~3 sea_lantern []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 bone 10
replaceitem block ~0 ~-3 ~3 slot.container 1 rotten_flesh 13
replaceitem block ~0 ~-3 ~3 slot.container 2 wet_sponge 6
replaceitem block ~0 ~-3 ~3 slot.container 3 copper_ingot 11
replaceitem block ~0 ~-3 ~3 slot.container 4 trident 5
replaceitem block ~0 ~-3 ~3 slot.container 5 prismarine_shard 21
replaceitem block ~0 ~-3 ~3 slot.container 9 cooked_salmon 15
replaceitem block ~0 ~-3 ~3 slot.container 10 gold_ingot 12
replaceitem block ~0 ~-3 ~3 slot.container 11 iron_ingot 13
replaceitem block ~0 ~-3 ~3 slot.container 12 emerald 10
replaceitem block ~0 ~-3 ~3 slot.container 13 diamond 2
replaceitem block ~0 ~-3 ~3 slot.container 14 golden_apple 3
loot insert ~0 ~-3 ~3 loot "rsf/frozen_ocean"
loot insert ~0 ~-3 ~3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 dark_prismarine []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-6 ~1 ~-5 ~-6 ~8 ~-5 air []
fill ~6 ~1 ~-5 ~6 ~8 ~-5 air []
fill ~-6 ~1 ~5 ~-6 ~8 ~5 air []
fill ~6 ~1 ~5 ~6 ~8 ~5 air []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 sea_lantern []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 sea_lantern []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 sea_lantern []
fill ~5 ~1 ~4 ~5 ~7 ~4 sea_lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 sea_lantern []
setblock ~-6 ~10 ~-5 sea_lantern []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 sea_lantern []
setblock ~-6 ~10 ~5 sea_lantern []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 sea_lantern []
setblock ~6 ~10 ~-5 sea_lantern []
fill ~6 ~7 ~5 ~6 ~9 ~5 sea_lantern []
setblock ~6 ~10 ~5 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x7x6) ---
fill ~-1 ~0 ~7 ~-1 ~9 ~7 dark_prismarine []
setblock ~-1 ~10 ~7 blue_ice []
setblock ~-1 ~11 ~7 sea_lantern []

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
replaceitem block ~5 ~1 ~3 slot.container 9 blue_ice 18
replaceitem block ~5 ~1 ~3 slot.container 10 sponge 4
replaceitem block ~5 ~1 ~3 slot.container 11 cooked_salmon 13
replaceitem block ~5 ~1 ~3 slot.container 12 gold_ingot 10
replaceitem block ~5 ~1 ~3 slot.container 13 iron_ingot 11
replaceitem block ~5 ~1 ~3 slot.container 14 emerald 8
loot insert ~5 ~1 ~3 loot "rsf/frozen_ocean"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 wet_sponge 4
replaceitem block ~-5 ~1 ~4 slot.container 1 copper_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 2 trident 3
replaceitem block ~-5 ~1 ~4 slot.container 3 prismarine_shard 19
replaceitem block ~-5 ~1 ~4 slot.container 4 prismarine_crystals 16
replaceitem block ~-5 ~1 ~4 slot.container 5 nautilus_shell 8
replaceitem block ~-5 ~1 ~4 slot.container 9 blue_ice 16
replaceitem block ~-5 ~1 ~4 slot.container 10 sponge 9
replaceitem block ~-5 ~1 ~4 slot.container 11 cooked_salmon 18
replaceitem block ~-5 ~1 ~4 slot.container 12 gold_ingot 8
replaceitem block ~-5 ~1 ~4 slot.container 13 iron_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 14 emerald 6
loot insert ~-5 ~1 ~4 loot "rsf/frozen_ocean"
loot insert ~-5 ~1 ~4 loot "chests/shipwrecktreasure"
summon guardian ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
