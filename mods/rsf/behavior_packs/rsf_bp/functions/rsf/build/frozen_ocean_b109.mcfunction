# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2925/4224 | 主题内编号: b109/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·环柱能量矩阵奥术厅 (frozen_ocean_arcane_rotunda_nexus)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_ice []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 prismarine []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 sea_lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 prismarine_crystals 18
replaceitem block ~4 ~-2 ~3 slot.container 1 nautilus_shell 10
replaceitem block ~4 ~-2 ~3 slot.container 2 bone 10
replaceitem block ~4 ~-2 ~3 slot.container 3 rotten_flesh 13
replaceitem block ~4 ~-2 ~3 slot.container 4 wet_sponge 6
replaceitem block ~4 ~-2 ~3 slot.container 5 copper_ingot 11
replaceitem block ~4 ~-2 ~3 slot.container 9 sea_lantern 8
replaceitem block ~4 ~-2 ~3 slot.container 10 heart_of_the_sea 4
replaceitem block ~4 ~-2 ~3 slot.container 11 blue_ice 16
replaceitem block ~4 ~-2 ~3 slot.container 12 sponge 9
replaceitem block ~4 ~-2 ~3 slot.container 13 cooked_salmon 18
replaceitem block ~4 ~-2 ~3 slot.container 14 gold_ingot 8
loot insert ~4 ~-2 ~3 loot "rsf/frozen_ocean"
loot insert ~4 ~-2 ~3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 packed_ice []
fill ~-6 ~1 ~-5 ~-6 ~8 ~-5 sea_lantern []
fill ~-6 ~1 ~5 ~-6 ~8 ~5 sea_lantern []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 sea_lantern []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 sea_lantern []
fill ~-2 ~1 ~-5 ~-2 ~8 ~-5 sea_lantern []
fill ~-2 ~1 ~5 ~-2 ~8 ~5 sea_lantern []
fill ~0 ~1 ~-5 ~0 ~8 ~-5 sea_lantern []
fill ~0 ~1 ~5 ~0 ~8 ~5 sea_lantern []
fill ~2 ~1 ~-5 ~2 ~8 ~-5 sea_lantern []
fill ~2 ~1 ~5 ~2 ~8 ~5 sea_lantern []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 sea_lantern []
fill ~4 ~1 ~5 ~4 ~8 ~5 sea_lantern []
fill ~6 ~1 ~-5 ~6 ~8 ~-5 sea_lantern []
fill ~6 ~1 ~5 ~6 ~8 ~5 sea_lantern []
fill ~-6 ~1 ~-3 ~-6 ~8 ~-3 sea_lantern []
fill ~6 ~1 ~-3 ~6 ~8 ~-3 sea_lantern []
fill ~-6 ~1 ~-1 ~-6 ~8 ~-1 sea_lantern []
fill ~6 ~1 ~-1 ~6 ~8 ~-1 sea_lantern []
fill ~-6 ~1 ~1 ~-6 ~8 ~1 sea_lantern []
fill ~6 ~1 ~1 ~6 ~8 ~1 sea_lantern []
fill ~-6 ~1 ~3 ~-6 ~8 ~3 sea_lantern []
fill ~6 ~1 ~3 ~6 ~8 ~3 sea_lantern []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 packed_ice []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 stone_bricks []
fill ~0 ~15 ~0 ~0 ~18 ~0 sponge []
setblock ~0 ~19 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 sea_lantern []
setblock ~0 ~4 ~-7 diamond_block []
setblock ~0 ~5 ~-7 sea_lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 sea_lantern []
setblock ~0 ~4 ~7 diamond_block []
setblock ~0 ~5 ~7 sea_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 sea_lantern []
setblock ~-8 ~4 ~0 diamond_block []
setblock ~-8 ~5 ~0 sea_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 sea_lantern []
setblock ~8 ~4 ~0 diamond_block []
setblock ~8 ~5 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x6x4) ---
fill ~1 ~0 ~6 ~1 ~7 ~6 dark_prismarine []
setblock ~1 ~8 ~6 blue_ice []
setblock ~1 ~9 ~6 sea_lantern []

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
replaceitem block ~5 ~1 ~3 slot.container 9 iron_ingot 14
replaceitem block ~5 ~1 ~3 slot.container 10 emerald 4
replaceitem block ~5 ~1 ~3 slot.container 11 diamond 3
replaceitem block ~5 ~1 ~3 slot.container 12 golden_apple 4
replaceitem block ~5 ~1 ~3 slot.container 13 sea_lantern 9
replaceitem block ~5 ~1 ~3 slot.container 14 heart_of_the_sea 5
loot insert ~5 ~1 ~3 loot "rsf/frozen_ocean"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 trident 3
replaceitem block ~-5 ~1 ~4 slot.container 1 prismarine_shard 19
replaceitem block ~-5 ~1 ~4 slot.container 2 prismarine_crystals 16
replaceitem block ~-5 ~1 ~4 slot.container 3 nautilus_shell 8
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 16
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 19
replaceitem block ~-5 ~1 ~4 slot.container 9 iron_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 10 emerald 9
replaceitem block ~-5 ~1 ~4 slot.container 11 diamond 8
replaceitem block ~-5 ~1 ~4 slot.container 12 golden_apple 2
replaceitem block ~-5 ~1 ~4 slot.container 13 sea_lantern 7
replaceitem block ~-5 ~1 ~4 slot.container 14 heart_of_the_sea 3
loot insert ~-5 ~1 ~4 loot "rsf/frozen_ocean"
loot insert ~-5 ~1 ~4 loot "chests/shipwrecktreasure"
summon polar_bear ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
