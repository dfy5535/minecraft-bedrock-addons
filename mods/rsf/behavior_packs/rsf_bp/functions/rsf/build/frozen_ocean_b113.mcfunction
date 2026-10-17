# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2929/4224 | 主题内编号: b113/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·八角全采光生态温室 (frozen_ocean_conservatory_glass_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 prismarine []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 packed_ice []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 packed_ice []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 packed_ice []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 sea_lantern []
setblock ~-3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-2 ~2 slot.container 0 bone 10
replaceitem block ~-3 ~-2 ~2 slot.container 1 rotten_flesh 13
replaceitem block ~-3 ~-2 ~2 slot.container 2 wet_sponge 6
replaceitem block ~-3 ~-2 ~2 slot.container 3 copper_ingot 11
replaceitem block ~-3 ~-2 ~2 slot.container 4 trident 5
replaceitem block ~-3 ~-2 ~2 slot.container 5 prismarine_shard 21
replaceitem block ~-3 ~-2 ~2 slot.container 9 cooked_salmon 16
replaceitem block ~-3 ~-2 ~2 slot.container 10 gold_ingot 13
replaceitem block ~-3 ~-2 ~2 slot.container 11 iron_ingot 14
replaceitem block ~-3 ~-2 ~2 slot.container 12 emerald 4
replaceitem block ~-3 ~-2 ~2 slot.container 13 diamond 3
replaceitem block ~-3 ~-2 ~2 slot.container 14 golden_apple 4
loot insert ~-3 ~-2 ~2 loot "rsf/frozen_ocean"
loot insert ~-3 ~-2 ~2 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 air []
fill ~5 ~1 ~4 ~5 ~9 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~8 ~-3 sea_lantern []
fill ~4 ~1 ~-3 ~4 ~8 ~-3 sea_lantern []
fill ~-4 ~1 ~3 ~-4 ~8 ~3 sea_lantern []
fill ~4 ~1 ~3 ~4 ~8 ~3 sea_lantern []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 packed_ice []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 glass []
fill ~-3 ~9 ~-2 ~3 ~9 ~2 air []
setblock ~0 ~10 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 packed_ice []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 sea_lantern []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 sea_lantern []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 stone_brick_slab []
setblock ~0 ~3 ~-6 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 8x6x3) ---
fill ~0 ~0 ~6 ~0 ~6 ~6 dark_prismarine []
setblock ~0 ~7 ~6 blue_ice []
setblock ~0 ~8 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 prismarine_crystals 13
replaceitem block ~4 ~1 ~2 slot.container 1 nautilus_shell 5
replaceitem block ~4 ~1 ~2 slot.container 2 bone 13
replaceitem block ~4 ~1 ~2 slot.container 3 rotten_flesh 16
replaceitem block ~4 ~1 ~2 slot.container 4 wet_sponge 9
replaceitem block ~4 ~1 ~2 slot.container 5 copper_ingot 14
replaceitem block ~4 ~1 ~2 slot.container 9 diamond 5
replaceitem block ~4 ~1 ~2 slot.container 10 golden_apple 6
replaceitem block ~4 ~1 ~2 slot.container 11 sea_lantern 11
replaceitem block ~4 ~1 ~2 slot.container 12 heart_of_the_sea 7
replaceitem block ~4 ~1 ~2 slot.container 13 blue_ice 12
replaceitem block ~4 ~1 ~2 slot.container 14 sponge 5
loot insert ~4 ~1 ~2 loot "rsf/frozen_ocean"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 bone 16
replaceitem block ~-4 ~1 ~3 slot.container 1 rotten_flesh 19
replaceitem block ~-4 ~1 ~3 slot.container 2 wet_sponge 4
replaceitem block ~-4 ~1 ~3 slot.container 3 copper_ingot 9
replaceitem block ~-4 ~1 ~3 slot.container 4 trident 3
replaceitem block ~-4 ~1 ~3 slot.container 5 prismarine_shard 19
replaceitem block ~-4 ~1 ~3 slot.container 9 diamond 3
replaceitem block ~-4 ~1 ~3 slot.container 10 golden_apple 4
replaceitem block ~-4 ~1 ~3 slot.container 11 sea_lantern 9
replaceitem block ~-4 ~1 ~3 slot.container 12 heart_of_the_sea 5
replaceitem block ~-4 ~1 ~3 slot.container 13 blue_ice 17
replaceitem block ~-4 ~1 ~3 slot.container 14 sponge 10
loot insert ~-4 ~1 ~3 loot "rsf/frozen_ocean"
loot insert ~-4 ~1 ~3 loot "chests/shipwrecktreasure"
summon guardian ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
