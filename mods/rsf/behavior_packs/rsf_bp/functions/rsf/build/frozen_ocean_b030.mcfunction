# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2846/4224 | 主题内编号: b030/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·双坡顶驻军卫戍塔 (frozen_ocean_tower_gabled_keep)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 prismarine [] replace water
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 prismarine [] replace air
fill ~-6 ~1 ~-5 ~6 ~12 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_ice []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 prismarine_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 prismarine []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-5 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-5 ~2 sea_lantern []
setblock ~3 ~-5 ~-2 sea_lantern []
setblock ~3 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-3 ~2 slot.container 0 prismarine_shard 21
replaceitem block ~3 ~-3 ~2 slot.container 1 prismarine_crystals 18
replaceitem block ~3 ~-3 ~2 slot.container 2 nautilus_shell 10
replaceitem block ~3 ~-3 ~2 slot.container 3 bone 10
replaceitem block ~3 ~-3 ~2 slot.container 4 rotten_flesh 13
replaceitem block ~3 ~-3 ~2 slot.container 5 wet_sponge 6
replaceitem block ~3 ~-3 ~2 slot.container 9 heart_of_the_sea 7
replaceitem block ~3 ~-3 ~2 slot.container 10 blue_ice 12
replaceitem block ~3 ~-3 ~2 slot.container 11 sponge 5
replaceitem block ~3 ~-3 ~2 slot.container 12 cooked_salmon 14
replaceitem block ~3 ~-3 ~2 slot.container 13 gold_ingot 11
replaceitem block ~3 ~-3 ~2 slot.container 14 iron_ingot 12
loot insert ~3 ~-3 ~2 loot "rsf/frozen_ocean"
loot insert ~3 ~-3 ~2 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-4 ~0 ~10 ~4 prismarine []
fill ~-5 ~1 ~0 ~5 ~9 ~4 dark_prismarine []
fill ~-4 ~1 ~-3 ~-1 ~9 ~3 air []
fill ~-1 ~1 ~1 ~4 ~8 ~3 air []
fill ~-2 ~1 ~-4 ~-2 ~2 ~-4 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~11 ~-5 ~-6 ~11 ~5 prismarine_stairs ["weirdo_direction"=0]
fill ~6 ~11 ~-5 ~6 ~11 ~5 prismarine_stairs ["weirdo_direction"=1]
fill ~-5 ~12 ~-4 ~-5 ~12 ~4 prismarine_stairs ["weirdo_direction"=0]
fill ~5 ~12 ~-4 ~5 ~12 ~4 prismarine_stairs ["weirdo_direction"=1]
fill ~-4 ~12 ~-4 ~4 ~12 ~4 prismarine_slab []
fill ~0 ~13 ~-5 ~0 ~13 ~5 dark_prismarine []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~12 ~2 dark_prismarine []
fill ~6 ~1 ~-1 ~7 ~11 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~13 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~2 ~0 ~7 ~2 ~8 ~7 dark_prismarine []
setblock ~2 ~9 ~7 blue_ice []
setblock ~2 ~10 ~7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 sea_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 copper_ingot 14
replaceitem block ~-4 ~1 ~2 slot.container 1 trident 8
replaceitem block ~-4 ~1 ~2 slot.container 2 prismarine_shard 16
replaceitem block ~-4 ~1 ~2 slot.container 3 prismarine_crystals 13
replaceitem block ~-4 ~1 ~2 slot.container 4 nautilus_shell 5
replaceitem block ~-4 ~1 ~2 slot.container 5 bone 13
replaceitem block ~-4 ~1 ~2 slot.container 9 golden_apple 6
replaceitem block ~-4 ~1 ~2 slot.container 10 sea_lantern 11
replaceitem block ~-4 ~1 ~2 slot.container 11 heart_of_the_sea 7
replaceitem block ~-4 ~1 ~2 slot.container 12 blue_ice 12
replaceitem block ~-4 ~1 ~2 slot.container 13 sponge 5
replaceitem block ~-4 ~1 ~2 slot.container 14 cooked_salmon 14
loot insert ~-4 ~1 ~2 loot "rsf/frozen_ocean"
summon stray ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon elder_guardian ~1 ~1 ~1
summon squid ~0 ~-3 ~0
