# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2829/4224 | 主题内编号: b013/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·地底熔炉苦工地牢 (frozen_ocean_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 stone_bricks [] replace water
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 stone_bricks [] replace air
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 prismarine []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 packed_ice []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 stone_bricks []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 sea_lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 prismarine_crystals 18
replaceitem block ~4 ~-3 ~4 slot.container 1 nautilus_shell 10
replaceitem block ~4 ~-3 ~4 slot.container 2 bone 10
replaceitem block ~4 ~-3 ~4 slot.container 3 rotten_flesh 13
replaceitem block ~4 ~-3 ~4 slot.container 4 wet_sponge 6
replaceitem block ~4 ~-3 ~4 slot.container 5 copper_ingot 11
replaceitem block ~4 ~-3 ~4 slot.container 9 cooked_salmon 12
replaceitem block ~4 ~-3 ~4 slot.container 10 gold_ingot 9
replaceitem block ~4 ~-3 ~4 slot.container 11 iron_ingot 10
replaceitem block ~4 ~-3 ~4 slot.container 12 emerald 7
replaceitem block ~4 ~-3 ~4 slot.container 13 diamond 6
replaceitem block ~4 ~-3 ~4 slot.container 14 golden_apple 7
loot insert ~4 ~-3 ~4 loot "rsf/frozen_ocean"
loot insert ~4 ~-3 ~4 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-6 ~1 ~-6 ~6 ~7 ~6 stone_bricks []
fill ~-5 ~1 ~-5 ~5 ~6 ~5 air []
fill ~-6 ~1 ~-6 ~-6 ~7 ~-6 sea_lantern []
fill ~-6 ~1 ~6 ~-6 ~7 ~6 sea_lantern []
fill ~6 ~1 ~-6 ~6 ~7 ~-6 sea_lantern []
fill ~6 ~1 ~6 ~6 ~7 ~6 sea_lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 packed_ice []
fill ~-6 ~8 ~-6 ~6 ~8 ~6 cobblestone_wall []
fill ~-5 ~8 ~-5 ~5 ~8 ~5 air []
setblock ~-6 ~8 ~-6 sea_lantern []
setblock ~-6 ~9 ~-6 sea_lantern []
setblock ~-6 ~8 ~6 sea_lantern []
setblock ~-6 ~9 ~6 sea_lantern []
setblock ~6 ~8 ~-6 sea_lantern []
setblock ~6 ~9 ~-6 sea_lantern []
setblock ~6 ~8 ~6 sea_lantern []
setblock ~6 ~9 ~6 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~9 ~2 prismarine []
fill ~7 ~1 ~-1 ~8 ~8 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~10 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x7x3) ---
fill ~1 ~0 ~7 ~1 ~6 ~7 dark_prismarine []
setblock ~1 ~7 ~7 blue_ice []
setblock ~1 ~8 ~7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 wet_sponge 9
replaceitem block ~5 ~1 ~4 slot.container 1 copper_ingot 14
replaceitem block ~5 ~1 ~4 slot.container 2 trident 8
replaceitem block ~5 ~1 ~4 slot.container 3 prismarine_shard 16
replaceitem block ~5 ~1 ~4 slot.container 4 prismarine_crystals 13
replaceitem block ~5 ~1 ~4 slot.container 5 nautilus_shell 5
replaceitem block ~5 ~1 ~4 slot.container 9 diamond 3
replaceitem block ~5 ~1 ~4 slot.container 10 golden_apple 4
replaceitem block ~5 ~1 ~4 slot.container 11 sea_lantern 9
replaceitem block ~5 ~1 ~4 slot.container 12 heart_of_the_sea 5
replaceitem block ~5 ~1 ~4 slot.container 13 blue_ice 17
replaceitem block ~5 ~1 ~4 slot.container 14 sponge 10
loot insert ~5 ~1 ~4 loot "rsf/frozen_ocean"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 trident 3
replaceitem block ~-5 ~1 ~5 slot.container 1 prismarine_shard 19
replaceitem block ~-5 ~1 ~5 slot.container 2 prismarine_crystals 16
replaceitem block ~-5 ~1 ~5 slot.container 3 nautilus_shell 8
replaceitem block ~-5 ~1 ~5 slot.container 4 bone 16
replaceitem block ~-5 ~1 ~5 slot.container 5 rotten_flesh 19
replaceitem block ~-5 ~1 ~5 slot.container 9 diamond 8
replaceitem block ~-5 ~1 ~5 slot.container 10 golden_apple 2
replaceitem block ~-5 ~1 ~5 slot.container 11 sea_lantern 7
replaceitem block ~-5 ~1 ~5 slot.container 12 heart_of_the_sea 3
replaceitem block ~-5 ~1 ~5 slot.container 13 blue_ice 15
replaceitem block ~-5 ~1 ~5 slot.container 14 sponge 8
loot insert ~-5 ~1 ~5 loot "rsf/frozen_ocean"
loot insert ~-5 ~1 ~5 loot "chests/shipwrecktreasure"
summon polar_bear ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
