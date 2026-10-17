# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2843/4224 | 主题内编号: b027/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·双子连廊警戒塔楼 (frozen_ocean_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[trial_pit] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x9 | 地上高度 10格 | 地下深度 2格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 dark_prismarine [] replace water
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 dark_prismarine [] replace air
fill ~-7 ~1 ~-4 ~7 ~12 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 dark_prismarine_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 prismarine_bricks []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 dark_prismarine []
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

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~11 ~3 dark_prismarine []
fill ~2 ~1 ~-3 ~6 ~11 ~3 dark_prismarine []
fill ~-5 ~1 ~-2 ~-3 ~10 ~2 air []
fill ~3 ~1 ~-2 ~5 ~10 ~2 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 packed_ice []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~10 ~-3 ~6 ~10 ~3 packed_ice []
fill ~-6 ~11 ~-3 ~6 ~11 ~3 cobblestone_wall []
fill ~-5 ~11 ~-2 ~5 ~11 ~2 air []
setblock ~-6 ~11 ~-3 sea_lantern []
setblock ~-6 ~12 ~-3 sea_lantern []
setblock ~-6 ~11 ~3 sea_lantern []
setblock ~-6 ~12 ~3 sea_lantern []
setblock ~6 ~11 ~-3 sea_lantern []
setblock ~6 ~12 ~-3 sea_lantern []
setblock ~6 ~11 ~3 sea_lantern []
setblock ~6 ~12 ~3 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 packed_ice []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 sea_lantern []
setblock ~2 ~4 ~-6 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x6x2) ---
fill ~-3 ~0 ~6 ~-3 ~5 ~6 dark_prismarine []
setblock ~-3 ~6 ~6 blue_ice []
setblock ~-3 ~7 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~9 ~0 sea_lantern []
setblock ~-5 ~1 ~2 smithing_table []
setblock ~-4 ~1 ~2 anvil []
setblock ~4 ~1 ~2 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 bone 13
replaceitem block ~5 ~1 ~1 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~1 slot.container 2 wet_sponge 9
replaceitem block ~5 ~1 ~1 slot.container 3 copper_ingot 14
replaceitem block ~5 ~1 ~1 slot.container 4 trident 8
replaceitem block ~5 ~1 ~1 slot.container 5 prismarine_shard 16
replaceitem block ~5 ~1 ~1 slot.container 9 sea_lantern 7
replaceitem block ~5 ~1 ~1 slot.container 10 heart_of_the_sea 3
replaceitem block ~5 ~1 ~1 slot.container 11 blue_ice 15
replaceitem block ~5 ~1 ~1 slot.container 12 sponge 8
replaceitem block ~5 ~1 ~1 slot.container 13 cooked_salmon 17
replaceitem block ~5 ~1 ~1 slot.container 14 gold_ingot 14
loot insert ~5 ~1 ~1 loot "rsf/frozen_ocean"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 wet_sponge 4
replaceitem block ~-5 ~1 ~2 slot.container 1 copper_ingot 9
replaceitem block ~-5 ~1 ~2 slot.container 2 trident 3
replaceitem block ~-5 ~1 ~2 slot.container 3 prismarine_shard 19
replaceitem block ~-5 ~1 ~2 slot.container 4 prismarine_crystals 16
replaceitem block ~-5 ~1 ~2 slot.container 5 nautilus_shell 8
replaceitem block ~-5 ~1 ~2 slot.container 9 sea_lantern 12
replaceitem block ~-5 ~1 ~2 slot.container 10 heart_of_the_sea 1
replaceitem block ~-5 ~1 ~2 slot.container 11 blue_ice 13
replaceitem block ~-5 ~1 ~2 slot.container 12 sponge 6
replaceitem block ~-5 ~1 ~2 slot.container 13 cooked_salmon 15
replaceitem block ~-5 ~1 ~2 slot.container 14 gold_ingot 12
loot insert ~-5 ~1 ~2 loot "rsf/frozen_ocean"
loot insert ~-5 ~1 ~2 loot "chests/shipwrecktreasure"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon stray ~0 ~2 ~0
