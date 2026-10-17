# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2885/4224 | 主题内编号: b069/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·藤蔓侵蚀十字修道院 (frozen_ocean_ruin_overgrown_abbey)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_ice []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 prismarine []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 packed_ice []
setblock ~0 ~-5 ~0 diamond_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 sea_lantern []
setblock ~2 ~-4 ~0 sea_lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 trident 5
replaceitem block ~0 ~-2 ~-3 slot.container 1 prismarine_shard 21
replaceitem block ~0 ~-2 ~-3 slot.container 2 prismarine_crystals 18
replaceitem block ~0 ~-2 ~-3 slot.container 3 nautilus_shell 10
replaceitem block ~0 ~-2 ~-3 slot.container 4 bone 10
replaceitem block ~0 ~-2 ~-3 slot.container 5 rotten_flesh 13
replaceitem block ~0 ~-2 ~-3 slot.container 9 blue_ice 16
replaceitem block ~0 ~-2 ~-3 slot.container 10 sponge 9
replaceitem block ~0 ~-2 ~-3 slot.container 11 cooked_salmon 18
replaceitem block ~0 ~-2 ~-3 slot.container 12 gold_ingot 8
replaceitem block ~0 ~-2 ~-3 slot.container 13 iron_ingot 9
replaceitem block ~0 ~-2 ~-3 slot.container 14 emerald 6
loot insert ~0 ~-2 ~-3 loot "rsf/frozen_ocean"
loot insert ~0 ~-2 ~-3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~7 ~5 stone_bricks []
fill ~-6 ~1 ~-2 ~6 ~7 ~2 stone_bricks []
fill ~-1 ~1 ~-4 ~1 ~6 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~6 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 stone_brick_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 packed_ice []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 sea_lantern []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 sea_lantern []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x8x4) ---
fill ~-3 ~0 ~8 ~-3 ~7 ~8 dark_prismarine []
setblock ~-3 ~8 ~8 blue_ice []
setblock ~-3 ~9 ~8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 wet_sponge 9
replaceitem block ~5 ~1 ~3 slot.container 1 copper_ingot 14
replaceitem block ~5 ~1 ~3 slot.container 2 trident 8
replaceitem block ~5 ~1 ~3 slot.container 3 prismarine_shard 16
replaceitem block ~5 ~1 ~3 slot.container 4 prismarine_crystals 13
replaceitem block ~5 ~1 ~3 slot.container 5 nautilus_shell 5
replaceitem block ~5 ~1 ~3 slot.container 9 iron_ingot 9
replaceitem block ~5 ~1 ~3 slot.container 10 emerald 6
replaceitem block ~5 ~1 ~3 slot.container 11 diamond 5
replaceitem block ~5 ~1 ~3 slot.container 12 golden_apple 6
replaceitem block ~5 ~1 ~3 slot.container 13 sea_lantern 11
replaceitem block ~5 ~1 ~3 slot.container 14 heart_of_the_sea 7
loot insert ~5 ~1 ~3 loot "rsf/frozen_ocean"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 trident 3
replaceitem block ~-5 ~1 ~4 slot.container 1 prismarine_shard 19
replaceitem block ~-5 ~1 ~4 slot.container 2 prismarine_crystals 16
replaceitem block ~-5 ~1 ~4 slot.container 3 nautilus_shell 8
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 16
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 19
replaceitem block ~-5 ~1 ~4 slot.container 9 iron_ingot 14
replaceitem block ~-5 ~1 ~4 slot.container 10 emerald 4
replaceitem block ~-5 ~1 ~4 slot.container 11 diamond 3
replaceitem block ~-5 ~1 ~4 slot.container 12 golden_apple 4
replaceitem block ~-5 ~1 ~4 slot.container 13 sea_lantern 9
replaceitem block ~-5 ~1 ~4 slot.container 14 heart_of_the_sea 5
loot insert ~-5 ~1 ~4 loot "rsf/frozen_ocean"
loot insert ~-5 ~1 ~4 loot "chests/shipwrecktreasure"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon stray ~0 ~-2 ~0
