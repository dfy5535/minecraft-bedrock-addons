# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2880/4224 | 主题内编号: b064/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·U型冥庭守墓人陵园 (frozen_ocean_crypt_courtyard_graveyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 prismarine_bricks [] replace water
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 prismarine_bricks [] replace air
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 prismarine_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 dark_prismarine []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 blue_ice []
setblock ~0 ~-7 ~0 sponge []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 sea_lantern []
setblock ~2 ~-6 ~0 sea_lantern []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 nautilus_shell 10
replaceitem block ~0 ~-4 ~-3 slot.container 1 bone 10
replaceitem block ~0 ~-4 ~-3 slot.container 2 rotten_flesh 13
replaceitem block ~0 ~-4 ~-3 slot.container 3 wet_sponge 6
replaceitem block ~0 ~-4 ~-3 slot.container 4 copper_ingot 11
replaceitem block ~0 ~-4 ~-3 slot.container 5 trident 5
replaceitem block ~0 ~-4 ~-3 slot.container 9 emerald 10
replaceitem block ~0 ~-4 ~-3 slot.container 10 diamond 2
replaceitem block ~0 ~-4 ~-3 slot.container 11 golden_apple 3
replaceitem block ~0 ~-4 ~-3 slot.container 12 sea_lantern 8
replaceitem block ~0 ~-4 ~-3 slot.container 13 heart_of_the_sea 4
replaceitem block ~0 ~-4 ~-3 slot.container 14 blue_ice 16
loot insert ~0 ~-4 ~-3 loot "rsf/frozen_ocean"
loot insert ~0 ~-4 ~-3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 prismarine_bricks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 prismarine []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-6 ~-7 ~8 ~6 prismarine_bricks_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-6 ~7 ~8 ~6 prismarine_bricks_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 prismarine_bricks_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 prismarine_bricks_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~5 ~9 ~5 prismarine_brick_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 blue_ice []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x6x4) ---
fill ~-2 ~0 ~6 ~-2 ~7 ~6 dark_prismarine []
setblock ~-2 ~8 ~6 blue_ice []
setblock ~-2 ~9 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 prismarine_shard 16
replaceitem block ~-5 ~1 ~3 slot.container 1 prismarine_crystals 13
replaceitem block ~-5 ~1 ~3 slot.container 2 nautilus_shell 5
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 13
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 16
replaceitem block ~-5 ~1 ~3 slot.container 5 wet_sponge 9
replaceitem block ~-5 ~1 ~3 slot.container 9 heart_of_the_sea 4
replaceitem block ~-5 ~1 ~3 slot.container 10 blue_ice 16
replaceitem block ~-5 ~1 ~3 slot.container 11 sponge 9
replaceitem block ~-5 ~1 ~3 slot.container 12 cooked_salmon 18
replaceitem block ~-5 ~1 ~3 slot.container 13 gold_ingot 8
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_ingot 9
loot insert ~-5 ~1 ~3 loot "rsf/frozen_ocean"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
