# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2881/4224 | 主题内编号: b065/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·断柱露天古神庙废墟 (frozen_ocean_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 stone_bricks [] replace water
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 stone_bricks [] replace air
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 prismarine []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 packed_ice []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 prismarine []
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 sea_lantern []
setblock ~4 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~4 slot.container 0 wet_sponge 6
replaceitem block ~4 ~-2 ~4 slot.container 1 copper_ingot 11
replaceitem block ~4 ~-2 ~4 slot.container 2 trident 5
replaceitem block ~4 ~-2 ~4 slot.container 3 prismarine_shard 21
replaceitem block ~4 ~-2 ~4 slot.container 4 prismarine_crystals 18
replaceitem block ~4 ~-2 ~4 slot.container 5 nautilus_shell 10
replaceitem block ~4 ~-2 ~4 slot.container 9 diamond 2
replaceitem block ~4 ~-2 ~4 slot.container 10 golden_apple 3
replaceitem block ~4 ~-2 ~4 slot.container 11 sea_lantern 8
replaceitem block ~4 ~-2 ~4 slot.container 12 heart_of_the_sea 4
replaceitem block ~4 ~-2 ~4 slot.container 13 blue_ice 16
replaceitem block ~4 ~-2 ~4 slot.container 14 sponge 9
loot insert ~4 ~-2 ~4 loot "rsf/frozen_ocean"
loot insert ~4 ~-2 ~4 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 packed_ice []
fill ~-6 ~1 ~-6 ~-6 ~6 ~-6 sea_lantern []
fill ~-6 ~1 ~6 ~-6 ~6 ~6 sea_lantern []
fill ~-4 ~1 ~-6 ~-4 ~6 ~-6 sea_lantern []
fill ~-4 ~1 ~6 ~-4 ~6 ~6 sea_lantern []
fill ~-2 ~1 ~-6 ~-2 ~6 ~-6 sea_lantern []
fill ~-2 ~1 ~6 ~-2 ~6 ~6 sea_lantern []
fill ~0 ~1 ~-6 ~0 ~6 ~-6 sea_lantern []
fill ~0 ~1 ~6 ~0 ~6 ~6 sea_lantern []
fill ~2 ~1 ~-6 ~2 ~6 ~-6 sea_lantern []
fill ~2 ~1 ~6 ~2 ~6 ~6 sea_lantern []
fill ~4 ~1 ~-6 ~4 ~6 ~-6 sea_lantern []
fill ~4 ~1 ~6 ~4 ~6 ~6 sea_lantern []
fill ~6 ~1 ~-6 ~6 ~6 ~-6 sea_lantern []
fill ~6 ~1 ~6 ~6 ~6 ~6 sea_lantern []
fill ~-6 ~1 ~-4 ~-6 ~6 ~-4 sea_lantern []
fill ~6 ~1 ~-4 ~6 ~6 ~-4 sea_lantern []
fill ~-6 ~1 ~-2 ~-6 ~6 ~-2 sea_lantern []
fill ~6 ~1 ~-2 ~6 ~6 ~-2 sea_lantern []
fill ~-6 ~1 ~0 ~-6 ~6 ~0 sea_lantern []
fill ~6 ~1 ~0 ~6 ~6 ~0 sea_lantern []
fill ~-6 ~1 ~2 ~-6 ~6 ~2 sea_lantern []
fill ~6 ~1 ~2 ~6 ~6 ~2 sea_lantern []
fill ~-6 ~1 ~4 ~-6 ~6 ~4 sea_lantern []
fill ~6 ~1 ~4 ~6 ~6 ~4 sea_lantern []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 stone_brick_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~5 ~-8 sea_lantern []
setblock ~-8 ~6 ~-8 sea_lantern []
fill ~-8 ~0 ~8 ~-8 ~5 ~8 sea_lantern []
setblock ~-8 ~6 ~8 sea_lantern []
fill ~8 ~0 ~-8 ~8 ~5 ~-8 sea_lantern []
setblock ~8 ~6 ~-8 sea_lantern []
fill ~8 ~0 ~8 ~8 ~5 ~8 sea_lantern []
setblock ~8 ~6 ~8 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x8x5) ---
fill ~-1 ~0 ~8 ~-1 ~8 ~8 dark_prismarine []
setblock ~-1 ~9 ~8 blue_ice []
setblock ~-1 ~10 ~8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 sea_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~4 bookshelf []
setblock ~5 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 prismarine_crystals 13
replaceitem block ~5 ~1 ~4 slot.container 1 nautilus_shell 5
replaceitem block ~5 ~1 ~4 slot.container 2 bone 13
replaceitem block ~5 ~1 ~4 slot.container 3 rotten_flesh 16
replaceitem block ~5 ~1 ~4 slot.container 4 wet_sponge 9
replaceitem block ~5 ~1 ~4 slot.container 5 copper_ingot 14
replaceitem block ~5 ~1 ~4 slot.container 9 cooked_salmon 16
replaceitem block ~5 ~1 ~4 slot.container 10 gold_ingot 13
replaceitem block ~5 ~1 ~4 slot.container 11 iron_ingot 14
replaceitem block ~5 ~1 ~4 slot.container 12 emerald 4
replaceitem block ~5 ~1 ~4 slot.container 13 diamond 3
replaceitem block ~5 ~1 ~4 slot.container 14 golden_apple 4
loot insert ~5 ~1 ~4 loot "rsf/frozen_ocean"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 bone 16
replaceitem block ~-5 ~1 ~5 slot.container 1 rotten_flesh 19
replaceitem block ~-5 ~1 ~5 slot.container 2 wet_sponge 4
replaceitem block ~-5 ~1 ~5 slot.container 3 copper_ingot 9
replaceitem block ~-5 ~1 ~5 slot.container 4 trident 3
replaceitem block ~-5 ~1 ~5 slot.container 5 prismarine_shard 19
replaceitem block ~-5 ~1 ~5 slot.container 9 cooked_salmon 14
replaceitem block ~-5 ~1 ~5 slot.container 10 gold_ingot 11
replaceitem block ~-5 ~1 ~5 slot.container 11 iron_ingot 12
replaceitem block ~-5 ~1 ~5 slot.container 12 emerald 9
replaceitem block ~-5 ~1 ~5 slot.container 13 diamond 8
replaceitem block ~-5 ~1 ~5 slot.container 14 golden_apple 2
loot insert ~-5 ~1 ~5 loot "rsf/frozen_ocean"
loot insert ~-5 ~1 ~5 loot "chests/shipwrecktreasure"
summon guardian ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
