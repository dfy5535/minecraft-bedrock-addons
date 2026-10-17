# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2826/4224 | 主题内编号: b010/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·十字交叉深层地牢 (frozen_ocean_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 6格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 prismarine [] replace water
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 prismarine [] replace air
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 prismarine_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 packed_ice []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 prismarine []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 sea_lantern []
setblock ~5 ~-7 ~0 sea_lantern []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 prismarine_shard 21
replaceitem block ~0 ~-5 ~4 slot.container 1 prismarine_crystals 18
replaceitem block ~0 ~-5 ~4 slot.container 2 nautilus_shell 10
replaceitem block ~0 ~-5 ~4 slot.container 3 bone 10
replaceitem block ~0 ~-5 ~4 slot.container 4 rotten_flesh 13
replaceitem block ~0 ~-5 ~4 slot.container 5 wet_sponge 6
replaceitem block ~0 ~-5 ~4 slot.container 9 heart_of_the_sea 5
replaceitem block ~0 ~-5 ~4 slot.container 10 blue_ice 17
replaceitem block ~0 ~-5 ~4 slot.container 11 sponge 10
replaceitem block ~0 ~-5 ~4 slot.container 12 cooked_salmon 12
replaceitem block ~0 ~-5 ~4 slot.container 13 gold_ingot 9
replaceitem block ~0 ~-5 ~4 slot.container 14 iron_ingot 10
loot insert ~0 ~-5 ~4 loot "rsf/frozen_ocean"
loot insert ~0 ~-5 ~4 loot "chests/shipwrecktreasure"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 prismarine_shard 19
replaceitem block ~0 ~-5 ~-4 slot.container 1 prismarine_crystals 16
replaceitem block ~0 ~-5 ~-4 slot.container 2 nautilus_shell 8
replaceitem block ~0 ~-5 ~-4 slot.container 3 bone 16
replaceitem block ~0 ~-5 ~-4 slot.container 4 rotten_flesh 19
replaceitem block ~0 ~-5 ~-4 slot.container 5 wet_sponge 4
replaceitem block ~0 ~-5 ~-4 slot.container 9 heart_of_the_sea 4
replaceitem block ~0 ~-5 ~-4 slot.container 10 blue_ice 16
replaceitem block ~0 ~-5 ~-4 slot.container 11 sponge 9
replaceitem block ~0 ~-5 ~-4 slot.container 12 cooked_salmon 18
replaceitem block ~0 ~-5 ~-4 slot.container 13 gold_ingot 8
replaceitem block ~0 ~-5 ~-4 slot.container 14 iron_ingot 9
loot insert ~0 ~-5 ~-4 loot "rsf/frozen_ocean"
loot insert ~0 ~-5 ~-4 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~6 ~6 prismarine []
fill ~-7 ~1 ~-2 ~7 ~6 ~2 prismarine []
fill ~-1 ~1 ~-5 ~1 ~5 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~5 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 cobblestone_wall []
setblock ~7 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 prismarine_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-7 ~5 ~-1 ~-7 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~5 ~-8 sea_lantern []
setblock ~-9 ~6 ~-8 sea_lantern []
fill ~-9 ~0 ~8 ~-9 ~5 ~8 sea_lantern []
setblock ~-9 ~6 ~8 sea_lantern []
fill ~9 ~0 ~-8 ~9 ~5 ~-8 sea_lantern []
setblock ~9 ~6 ~-8 sea_lantern []
fill ~9 ~0 ~8 ~9 ~5 ~8 sea_lantern []
setblock ~9 ~6 ~8 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 10x7x5) ---
fill ~-1 ~0 ~7 ~-1 ~8 ~7 dark_prismarine []
setblock ~-1 ~9 ~7 blue_ice []
setblock ~-1 ~10 ~7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~4 bookshelf []
setblock ~5 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 nautilus_shell 5
replaceitem block ~-6 ~1 ~4 slot.container 1 bone 13
replaceitem block ~-6 ~1 ~4 slot.container 2 rotten_flesh 16
replaceitem block ~-6 ~1 ~4 slot.container 3 wet_sponge 9
replaceitem block ~-6 ~1 ~4 slot.container 4 copper_ingot 14
replaceitem block ~-6 ~1 ~4 slot.container 5 trident 8
replaceitem block ~-6 ~1 ~4 slot.container 9 golden_apple 7
replaceitem block ~-6 ~1 ~4 slot.container 10 sea_lantern 12
replaceitem block ~-6 ~1 ~4 slot.container 11 heart_of_the_sea 1
replaceitem block ~-6 ~1 ~4 slot.container 12 blue_ice 13
replaceitem block ~-6 ~1 ~4 slot.container 13 sponge 6
replaceitem block ~-6 ~1 ~4 slot.container 14 cooked_salmon 15
loot insert ~-6 ~1 ~4 loot "rsf/frozen_ocean"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
