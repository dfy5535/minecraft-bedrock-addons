# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2905/4224 | 主题内编号: b089/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·四柱挑檐祈愿凉亭 (frozen_ocean_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[catacomb_crypt] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 11x9 | 地上高度 8格 | 地下深度 2格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 stone_bricks [] replace water
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 stone_bricks [] replace air
fill ~-5 ~1 ~-4 ~5 ~10 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 prismarine []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 packed_ice []
setblock ~0 ~0 ~0 sponge []

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

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~8 ~3 stone_bricks []
fill ~-3 ~1 ~-2 ~3 ~7 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~8 ~-3 sea_lantern []
fill ~-4 ~1 ~3 ~-4 ~8 ~3 sea_lantern []
fill ~4 ~1 ~-3 ~4 ~8 ~-3 sea_lantern []
fill ~4 ~1 ~3 ~4 ~8 ~3 sea_lantern []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 stone_brick_slab []
fill ~-3 ~9 ~-2 ~3 ~10 ~2 prismarine []
fill ~-4 ~11 ~-3 ~4 ~11 ~3 prismarine_slab []
setblock ~0 ~12 ~0 sponge []
setblock ~0 ~13 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-5 ~2 ~0 ~-4 packed_ice []
fill ~-2 ~1 ~-5 ~-2 ~3 ~-5 sea_lantern []
fill ~2 ~1 ~-5 ~2 ~3 ~-5 sea_lantern []
fill ~-2 ~4 ~-5 ~2 ~4 ~-4 stone_brick_slab []
setblock ~0 ~3 ~-5 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 7x5x4) ---
fill ~0 ~0 ~5 ~0 ~7 ~5 dark_prismarine []
setblock ~0 ~8 ~5 blue_ice []
setblock ~0 ~9 ~5 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~7 ~0 sea_lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~2 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 prismarine_crystals 13
replaceitem block ~3 ~1 ~1 slot.container 1 nautilus_shell 5
replaceitem block ~3 ~1 ~1 slot.container 2 bone 13
replaceitem block ~3 ~1 ~1 slot.container 3 rotten_flesh 16
replaceitem block ~3 ~1 ~1 slot.container 4 wet_sponge 9
replaceitem block ~3 ~1 ~1 slot.container 5 copper_ingot 14
replaceitem block ~3 ~1 ~1 slot.container 9 iron_ingot 8
replaceitem block ~3 ~1 ~1 slot.container 10 emerald 5
replaceitem block ~3 ~1 ~1 slot.container 11 diamond 4
replaceitem block ~3 ~1 ~1 slot.container 12 golden_apple 5
replaceitem block ~3 ~1 ~1 slot.container 13 sea_lantern 10
replaceitem block ~3 ~1 ~1 slot.container 14 heart_of_the_sea 6
loot insert ~3 ~1 ~1 loot "rsf/frozen_ocean"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 bone 16
replaceitem block ~-3 ~1 ~2 slot.container 1 rotten_flesh 19
replaceitem block ~-3 ~1 ~2 slot.container 2 wet_sponge 4
replaceitem block ~-3 ~1 ~2 slot.container 3 copper_ingot 9
replaceitem block ~-3 ~1 ~2 slot.container 4 trident 3
replaceitem block ~-3 ~1 ~2 slot.container 5 prismarine_shard 19
replaceitem block ~-3 ~1 ~2 slot.container 9 iron_ingot 13
replaceitem block ~-3 ~1 ~2 slot.container 10 emerald 10
replaceitem block ~-3 ~1 ~2 slot.container 11 diamond 2
replaceitem block ~-3 ~1 ~2 slot.container 12 golden_apple 3
replaceitem block ~-3 ~1 ~2 slot.container 13 sea_lantern 8
replaceitem block ~-3 ~1 ~2 slot.container 14 heart_of_the_sea 4
loot insert ~-3 ~1 ~2 loot "rsf/frozen_ocean"
loot insert ~-3 ~1 ~2 loot "chests/shipwrecktreasure"
summon guardian ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
