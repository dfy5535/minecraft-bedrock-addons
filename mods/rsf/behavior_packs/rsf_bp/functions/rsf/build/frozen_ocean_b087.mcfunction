# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2903/4224 | 主题内编号: b087/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·十字矿道枢纽补给室 (frozen_ocean_mine_cross_tunnel_hub)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 dark_prismarine [] replace water
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 dark_prismarine [] replace air
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 dark_prismarine_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 dark_prismarine []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 dark_prismarine []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 sea_lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 bone 10
replaceitem block ~4 ~-3 ~3 slot.container 1 rotten_flesh 13
replaceitem block ~4 ~-3 ~3 slot.container 2 wet_sponge 6
replaceitem block ~4 ~-3 ~3 slot.container 3 copper_ingot 11
replaceitem block ~4 ~-3 ~3 slot.container 4 trident 5
replaceitem block ~4 ~-3 ~3 slot.container 5 prismarine_shard 21
replaceitem block ~4 ~-3 ~3 slot.container 9 iron_ingot 12
replaceitem block ~4 ~-3 ~3 slot.container 10 emerald 9
replaceitem block ~4 ~-3 ~3 slot.container 11 diamond 8
replaceitem block ~4 ~-3 ~3 slot.container 12 golden_apple 2
replaceitem block ~4 ~-3 ~3 slot.container 13 sea_lantern 7
replaceitem block ~4 ~-3 ~3 slot.container 14 heart_of_the_sea 3
loot insert ~4 ~-3 ~3 loot "rsf/frozen_ocean"
loot insert ~4 ~-3 ~3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~6 ~5 dark_prismarine []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 dark_prismarine []
fill ~-1 ~1 ~-4 ~1 ~5 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 packed_ice []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 cobblestone_wall []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 air []
setblock ~-6 ~7 ~-5 sea_lantern []
setblock ~-6 ~8 ~-5 sea_lantern []
setblock ~-6 ~7 ~5 sea_lantern []
setblock ~-6 ~8 ~5 sea_lantern []
setblock ~6 ~7 ~-5 sea_lantern []
setblock ~6 ~8 ~-5 sea_lantern []
setblock ~6 ~7 ~5 sea_lantern []
setblock ~6 ~8 ~5 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 packed_ice []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 sea_lantern []
setblock ~2 ~4 ~-8 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~-3 ~0 ~8 ~-3 ~5 ~8 dark_prismarine []
setblock ~-3 ~6 ~8 blue_ice []
setblock ~-3 ~7 ~8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 trident 8
replaceitem block ~5 ~1 ~3 slot.container 1 prismarine_shard 16
replaceitem block ~5 ~1 ~3 slot.container 2 prismarine_crystals 13
replaceitem block ~5 ~1 ~3 slot.container 3 nautilus_shell 5
replaceitem block ~5 ~1 ~3 slot.container 4 bone 13
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 16
replaceitem block ~5 ~1 ~3 slot.container 9 sea_lantern 11
replaceitem block ~5 ~1 ~3 slot.container 10 heart_of_the_sea 7
replaceitem block ~5 ~1 ~3 slot.container 11 blue_ice 12
replaceitem block ~5 ~1 ~3 slot.container 12 sponge 5
replaceitem block ~5 ~1 ~3 slot.container 13 cooked_salmon 14
replaceitem block ~5 ~1 ~3 slot.container 14 gold_ingot 11
loot insert ~5 ~1 ~3 loot "rsf/frozen_ocean"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 prismarine_crystals 16
replaceitem block ~-5 ~1 ~4 slot.container 1 nautilus_shell 8
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 16
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 19
replaceitem block ~-5 ~1 ~4 slot.container 4 wet_sponge 4
replaceitem block ~-5 ~1 ~4 slot.container 5 copper_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 9 sea_lantern 9
replaceitem block ~-5 ~1 ~4 slot.container 10 heart_of_the_sea 5
replaceitem block ~-5 ~1 ~4 slot.container 11 blue_ice 17
replaceitem block ~-5 ~1 ~4 slot.container 12 sponge 10
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_salmon 12
replaceitem block ~-5 ~1 ~4 slot.container 14 gold_ingot 9
loot insert ~-5 ~1 ~4 loot "rsf/frozen_ocean"
loot insert ~-5 ~1 ~4 loot "chests/shipwrecktreasure"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon stray ~0 ~-3 ~0
