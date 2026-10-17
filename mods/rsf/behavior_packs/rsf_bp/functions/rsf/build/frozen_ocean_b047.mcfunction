# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2863/4224 | 主题内编号: b047/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·深渊跨桥决斗长台 (frozen_ocean_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 dark_prismarine [] replace water
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 dark_prismarine [] replace air
fill ~-8 ~1 ~-5 ~8 ~9 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 dark_prismarine_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 prismarine_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 dark_prismarine []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 packed_ice []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 packed_ice []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 sea_lantern []
setblock ~-5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-5 ~-3 ~2 slot.container 0 prismarine_crystals 18
replaceitem block ~-5 ~-3 ~2 slot.container 1 nautilus_shell 10
replaceitem block ~-5 ~-3 ~2 slot.container 2 bone 10
replaceitem block ~-5 ~-3 ~2 slot.container 3 rotten_flesh 13
replaceitem block ~-5 ~-3 ~2 slot.container 4 wet_sponge 6
replaceitem block ~-5 ~-3 ~2 slot.container 5 copper_ingot 11
replaceitem block ~-5 ~-3 ~2 slot.container 9 iron_ingot 9
replaceitem block ~-5 ~-3 ~2 slot.container 10 emerald 6
replaceitem block ~-5 ~-3 ~2 slot.container 11 diamond 5
replaceitem block ~-5 ~-3 ~2 slot.container 12 golden_apple 6
replaceitem block ~-5 ~-3 ~2 slot.container 13 sea_lantern 11
replaceitem block ~-5 ~-3 ~2 slot.container 14 heart_of_the_sea 7
loot insert ~-5 ~-3 ~2 loot "rsf/frozen_ocean"
loot insert ~-5 ~-3 ~2 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-7 ~1 ~-4 ~7 ~7 ~4 dark_prismarine []
fill ~-6 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-4 ~-7 ~9 ~-4 sea_lantern []
setblock ~-7 ~10 ~-4 sea_lantern []
fill ~-7 ~7 ~4 ~-7 ~9 ~4 sea_lantern []
setblock ~-7 ~10 ~4 sea_lantern []
fill ~7 ~7 ~-4 ~7 ~9 ~-4 sea_lantern []
setblock ~7 ~10 ~-4 sea_lantern []
fill ~7 ~7 ~4 ~7 ~9 ~4 sea_lantern []
setblock ~7 ~10 ~4 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 sea_lantern []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 sea_lantern []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 sea_lantern []
fill ~8 ~0 ~2 ~8 ~6 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 10x6x2) ---
fill ~1 ~0 ~6 ~1 ~5 ~6 dark_prismarine []
setblock ~1 ~6 ~6 blue_ice []
setblock ~1 ~7 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-6 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~6 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 trident 8
replaceitem block ~6 ~1 ~2 slot.container 1 prismarine_shard 16
replaceitem block ~6 ~1 ~2 slot.container 2 prismarine_crystals 13
replaceitem block ~6 ~1 ~2 slot.container 3 nautilus_shell 5
replaceitem block ~6 ~1 ~2 slot.container 4 bone 13
replaceitem block ~6 ~1 ~2 slot.container 5 rotten_flesh 16
replaceitem block ~6 ~1 ~2 slot.container 9 sea_lantern 6
replaceitem block ~6 ~1 ~2 slot.container 10 heart_of_the_sea 2
replaceitem block ~6 ~1 ~2 slot.container 11 blue_ice 14
replaceitem block ~6 ~1 ~2 slot.container 12 sponge 7
replaceitem block ~6 ~1 ~2 slot.container 13 cooked_salmon 16
replaceitem block ~6 ~1 ~2 slot.container 14 gold_ingot 13
loot insert ~6 ~1 ~2 loot "rsf/frozen_ocean"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 prismarine_crystals 16
replaceitem block ~-6 ~1 ~3 slot.container 1 nautilus_shell 8
replaceitem block ~-6 ~1 ~3 slot.container 2 bone 16
replaceitem block ~-6 ~1 ~3 slot.container 3 rotten_flesh 19
replaceitem block ~-6 ~1 ~3 slot.container 4 wet_sponge 4
replaceitem block ~-6 ~1 ~3 slot.container 5 copper_ingot 9
replaceitem block ~-6 ~1 ~3 slot.container 9 sea_lantern 11
replaceitem block ~-6 ~1 ~3 slot.container 10 heart_of_the_sea 7
replaceitem block ~-6 ~1 ~3 slot.container 11 blue_ice 12
replaceitem block ~-6 ~1 ~3 slot.container 12 sponge 5
replaceitem block ~-6 ~1 ~3 slot.container 13 cooked_salmon 14
replaceitem block ~-6 ~1 ~3 slot.container 14 gold_ingot 11
loot insert ~-6 ~1 ~3 loot "rsf/frozen_ocean"
loot insert ~-6 ~1 ~3 loot "chests/shipwrecktreasure"
summon guardian ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
