# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2942/4224 | 主题内编号: b126/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·双子主塔天桥宫殿与暗牢 (frozen_ocean_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 17x13 | 地上高度 10格 | 地下深度 5格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 prismarine [] replace water
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 prismarine [] replace air
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air []
fill ~-8 ~0 ~-6 ~8 ~0 ~6 prismarine_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 packed_ice []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 prismarine_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 prismarine []
fill ~-6 ~-6 ~-4 ~6 ~-1 ~4 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~3 sea_lantern []
setblock ~5 ~-6 ~-3 sea_lantern []
setblock ~5 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~3 slot.container 0 prismarine_shard 21
replaceitem block ~5 ~-4 ~3 slot.container 1 prismarine_crystals 18
replaceitem block ~5 ~-4 ~3 slot.container 2 nautilus_shell 10
replaceitem block ~5 ~-4 ~3 slot.container 3 bone 10
replaceitem block ~5 ~-4 ~3 slot.container 4 rotten_flesh 13
replaceitem block ~5 ~-4 ~3 slot.container 5 wet_sponge 6
replaceitem block ~5 ~-4 ~3 slot.container 9 golden_apple 6
replaceitem block ~5 ~-4 ~3 slot.container 10 sea_lantern 11
replaceitem block ~5 ~-4 ~3 slot.container 11 heart_of_the_sea 7
replaceitem block ~5 ~-4 ~3 slot.container 12 blue_ice 12
replaceitem block ~5 ~-4 ~3 slot.container 13 sponge 5
replaceitem block ~5 ~-4 ~3 slot.container 14 cooked_salmon 14
loot insert ~5 ~-4 ~3 loot "rsf/frozen_ocean"
loot insert ~5 ~-4 ~3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~11 ~5 prismarine []
fill ~2 ~1 ~-5 ~7 ~11 ~5 prismarine []
fill ~-6 ~1 ~-4 ~-3 ~10 ~4 air []
fill ~3 ~1 ~-4 ~6 ~10 ~4 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 dark_prismarine []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 dark_prismarine []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 prismarine []
fill ~0 ~16 ~0 ~0 ~19 ~0 diamond_block []
setblock ~0 ~20 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 dark_prismarine []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 sea_lantern []
setblock ~2 ~4 ~-8 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 10x8x6) ---
fill ~3 ~0 ~8 ~3 ~9 ~8 dark_prismarine []
setblock ~3 ~10 ~8 blue_ice []
setblock ~3 ~11 ~8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~10 ~0 sea_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~2 bookshelf []
setblock ~5 ~1 ~2 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 copper_ingot 14
replaceitem block ~-6 ~1 ~3 slot.container 1 trident 8
replaceitem block ~-6 ~1 ~3 slot.container 2 prismarine_shard 16
replaceitem block ~-6 ~1 ~3 slot.container 3 prismarine_crystals 13
replaceitem block ~-6 ~1 ~3 slot.container 4 nautilus_shell 5
replaceitem block ~-6 ~1 ~3 slot.container 5 bone 13
replaceitem block ~-6 ~1 ~3 slot.container 9 emerald 6
replaceitem block ~-6 ~1 ~3 slot.container 10 diamond 5
replaceitem block ~-6 ~1 ~3 slot.container 11 golden_apple 6
replaceitem block ~-6 ~1 ~3 slot.container 12 sea_lantern 11
replaceitem block ~-6 ~1 ~3 slot.container 13 heart_of_the_sea 7
replaceitem block ~-6 ~1 ~3 slot.container 14 blue_ice 12
loot insert ~-6 ~1 ~3 loot "rsf/frozen_ocean"
summon stray ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon elder_guardian ~1 ~1 ~1
summon squid ~0 ~-4 ~0
