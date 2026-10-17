# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2893/4224 | 主题内编号: b077/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·双子鸟居图腾神道 (frozen_ocean_totem_twin_spirit_gate)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[catacomb_crypt] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x11 | 地上高度 8格 | 地下深度 2格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 stone_bricks [] replace water
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 stone_bricks [] replace air
fill ~-7 ~1 ~-5 ~7 ~10 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 stone_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 prismarine []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 packed_ice []
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

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~8 ~4 stone_bricks []
fill ~-5 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-5 ~7 ~8 ~5 stone_brick_slab []
fill ~-5 ~9 ~-3 ~5 ~10 ~3 prismarine []
fill ~-6 ~11 ~-4 ~6 ~11 ~4 prismarine_slab []
setblock ~0 ~12 ~0 sponge []
setblock ~0 ~13 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 packed_ice []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 sea_lantern []
setblock ~2 ~4 ~-7 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x6x2) ---
fill ~-1 ~0 ~6 ~-1 ~5 ~6 dark_prismarine []
setblock ~-1 ~6 ~6 blue_ice []
setblock ~-1 ~7 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~7 ~0 sea_lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-5 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 wet_sponge 9
replaceitem block ~5 ~1 ~2 slot.container 1 copper_ingot 14
replaceitem block ~5 ~1 ~2 slot.container 2 trident 8
replaceitem block ~5 ~1 ~2 slot.container 3 prismarine_shard 16
replaceitem block ~5 ~1 ~2 slot.container 4 prismarine_crystals 13
replaceitem block ~5 ~1 ~2 slot.container 5 nautilus_shell 5
replaceitem block ~5 ~1 ~2 slot.container 9 sea_lantern 8
replaceitem block ~5 ~1 ~2 slot.container 10 heart_of_the_sea 4
replaceitem block ~5 ~1 ~2 slot.container 11 blue_ice 16
replaceitem block ~5 ~1 ~2 slot.container 12 sponge 9
replaceitem block ~5 ~1 ~2 slot.container 13 cooked_salmon 18
replaceitem block ~5 ~1 ~2 slot.container 14 gold_ingot 8
loot insert ~5 ~1 ~2 loot "rsf/frozen_ocean"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 trident 3
replaceitem block ~-5 ~1 ~3 slot.container 1 prismarine_shard 19
replaceitem block ~-5 ~1 ~3 slot.container 2 prismarine_crystals 16
replaceitem block ~-5 ~1 ~3 slot.container 3 nautilus_shell 8
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 5 rotten_flesh 19
replaceitem block ~-5 ~1 ~3 slot.container 9 sea_lantern 6
replaceitem block ~-5 ~1 ~3 slot.container 10 heart_of_the_sea 2
replaceitem block ~-5 ~1 ~3 slot.container 11 blue_ice 14
replaceitem block ~-5 ~1 ~3 slot.container 12 sponge 7
replaceitem block ~-5 ~1 ~3 slot.container 13 cooked_salmon 16
replaceitem block ~-5 ~1 ~3 slot.container 14 gold_ingot 13
loot insert ~-5 ~1 ~3 loot "rsf/frozen_ocean"
loot insert ~-5 ~1 ~3 loot "chests/shipwrecktreasure"
summon guardian ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
