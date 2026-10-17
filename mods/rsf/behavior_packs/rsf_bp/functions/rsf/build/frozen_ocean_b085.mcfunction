# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2901/4224 | 主题内编号: b085/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·双子烟囱砖石窑厂 (frozen_ocean_mine_twin_kiln)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x11 | 地上高度 9格 | 地下深度 3格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 stone_bricks [] replace water
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 stone_bricks [] replace air
fill ~-7 ~1 ~-5 ~7 ~11 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 stone_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 prismarine []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 packed_ice []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-3 ~-3 ~5 ~-1 ~3 stone_bricks []
fill ~-4 ~-4 ~-2 ~4 ~-1 ~2 air []
setblock ~-4 ~-4 ~0 blast_furnace []
setblock ~4 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~2 anvil []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 sea_lantern []
setblock ~4 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~2 slot.container 0 prismarine_crystals 18
replaceitem block ~4 ~-2 ~2 slot.container 1 nautilus_shell 10
replaceitem block ~4 ~-2 ~2 slot.container 2 bone 10
replaceitem block ~4 ~-2 ~2 slot.container 3 rotten_flesh 13
replaceitem block ~4 ~-2 ~2 slot.container 4 wet_sponge 6
replaceitem block ~4 ~-2 ~2 slot.container 5 copper_ingot 11
replaceitem block ~4 ~-2 ~2 slot.container 9 sea_lantern 8
replaceitem block ~4 ~-2 ~2 slot.container 10 heart_of_the_sea 4
replaceitem block ~4 ~-2 ~2 slot.container 11 blue_ice 16
replaceitem block ~4 ~-2 ~2 slot.container 12 sponge 9
replaceitem block ~4 ~-2 ~2 slot.container 13 cooked_salmon 18
replaceitem block ~4 ~-2 ~2 slot.container 14 gold_ingot 8
loot insert ~4 ~-2 ~2 loot "rsf/frozen_ocean"
loot insert ~4 ~-2 ~2 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~10 ~4 stone_bricks []
fill ~2 ~1 ~-4 ~6 ~10 ~4 stone_bricks []
fill ~-5 ~1 ~-3 ~-3 ~9 ~3 air []
fill ~3 ~1 ~-3 ~5 ~9 ~3 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 packed_ice []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 packed_ice []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 stone_bricks []
fill ~0 ~15 ~0 ~0 ~18 ~0 sponge []
setblock ~0 ~19 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 packed_ice []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 sea_lantern []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 sea_lantern []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 stone_brick_slab []
setblock ~0 ~3 ~-6 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x5x5) ---
fill ~1 ~0 ~5 ~1 ~8 ~5 dark_prismarine []
setblock ~1 ~9 ~5 blue_ice []
setblock ~1 ~10 ~5 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 wet_sponge 9
replaceitem block ~5 ~1 ~2 slot.container 1 copper_ingot 14
replaceitem block ~5 ~1 ~2 slot.container 2 trident 8
replaceitem block ~5 ~1 ~2 slot.container 3 prismarine_shard 16
replaceitem block ~5 ~1 ~2 slot.container 4 prismarine_crystals 13
replaceitem block ~5 ~1 ~2 slot.container 5 nautilus_shell 5
replaceitem block ~5 ~1 ~2 slot.container 9 cooked_salmon 15
replaceitem block ~5 ~1 ~2 slot.container 10 gold_ingot 12
replaceitem block ~5 ~1 ~2 slot.container 11 iron_ingot 13
replaceitem block ~5 ~1 ~2 slot.container 12 emerald 10
replaceitem block ~5 ~1 ~2 slot.container 13 diamond 2
replaceitem block ~5 ~1 ~2 slot.container 14 golden_apple 3
loot insert ~5 ~1 ~2 loot "rsf/frozen_ocean"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 trident 3
replaceitem block ~-5 ~1 ~3 slot.container 1 prismarine_shard 19
replaceitem block ~-5 ~1 ~3 slot.container 2 prismarine_crystals 16
replaceitem block ~-5 ~1 ~3 slot.container 3 nautilus_shell 8
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 5 rotten_flesh 19
replaceitem block ~-5 ~1 ~3 slot.container 9 cooked_salmon 13
replaceitem block ~-5 ~1 ~3 slot.container 10 gold_ingot 10
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_ingot 11
replaceitem block ~-5 ~1 ~3 slot.container 12 emerald 8
replaceitem block ~-5 ~1 ~3 slot.container 13 diamond 7
replaceitem block ~-5 ~1 ~3 slot.container 14 golden_apple 8
loot insert ~-5 ~1 ~3 loot "rsf/frozen_ocean"
loot insert ~-5 ~1 ~3 loot "chests/shipwrecktreasure"
summon polar_bear ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
