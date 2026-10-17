# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2878/4224 | 主题内编号: b062/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·下沉阶梯深渊藏骨堂 (frozen_ocean_crypt_sunken_ossuary)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 6格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 prismarine [] replace water
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 prismarine [] replace air
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 prismarine_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_ice []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 prismarine_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 prismarine []
fill ~-5 ~-7 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-7 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-7 ~3 sea_lantern []
setblock ~4 ~-7 ~-3 sea_lantern []
setblock ~4 ~-5 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-5 ~3 slot.container 0 prismarine_shard 21
replaceitem block ~4 ~-5 ~3 slot.container 1 prismarine_crystals 18
replaceitem block ~4 ~-5 ~3 slot.container 2 nautilus_shell 10
replaceitem block ~4 ~-5 ~3 slot.container 3 bone 10
replaceitem block ~4 ~-5 ~3 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~-5 ~3 slot.container 5 wet_sponge 6
replaceitem block ~4 ~-5 ~3 slot.container 9 emerald 7
replaceitem block ~4 ~-5 ~3 slot.container 10 diamond 6
replaceitem block ~4 ~-5 ~3 slot.container 11 golden_apple 7
replaceitem block ~4 ~-5 ~3 slot.container 12 sea_lantern 12
replaceitem block ~4 ~-5 ~3 slot.container 13 heart_of_the_sea 1
replaceitem block ~4 ~-5 ~3 slot.container 14 blue_ice 13
loot insert ~4 ~-5 ~3 loot "rsf/frozen_ocean"
loot insert ~4 ~-5 ~3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 prismarine []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 dark_prismarine []
fill ~0 ~1 ~-5 ~0 ~2 ~5 dark_prismarine []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 prismarine_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x7x2) ---
fill ~2 ~0 ~7 ~2 ~5 ~7 dark_prismarine []
setblock ~2 ~6 ~7 blue_ice []
setblock ~2 ~7 ~7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~4 bookshelf []
setblock ~5 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 copper_ingot 14
replaceitem block ~-5 ~1 ~3 slot.container 1 trident 8
replaceitem block ~-5 ~1 ~3 slot.container 2 prismarine_shard 16
replaceitem block ~-5 ~1 ~3 slot.container 3 prismarine_crystals 13
replaceitem block ~-5 ~1 ~3 slot.container 4 nautilus_shell 5
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 13
replaceitem block ~-5 ~1 ~3 slot.container 9 gold_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_ingot 10
replaceitem block ~-5 ~1 ~3 slot.container 11 emerald 7
replaceitem block ~-5 ~1 ~3 slot.container 12 diamond 6
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 7
replaceitem block ~-5 ~1 ~3 slot.container 14 sea_lantern 12
loot insert ~-5 ~1 ~3 loot "rsf/frozen_ocean"
summon elder_guardian ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
