# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2911/4224 | 主题内编号: b095/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·双子灯笼守卫神龛 (frozen_ocean_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x9 | 地上高度 8格 | 地下深度 2格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 dark_prismarine [] replace water
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 dark_prismarine [] replace air
fill ~-7 ~1 ~-4 ~7 ~10 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 dark_prismarine_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 prismarine_bricks []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 dark_prismarine []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 packed_ice []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~9 ~3 dark_prismarine []
fill ~2 ~1 ~-3 ~6 ~9 ~3 dark_prismarine []
fill ~-5 ~1 ~-2 ~-3 ~8 ~2 air []
fill ~3 ~1 ~-2 ~5 ~8 ~2 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 packed_ice []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-4 ~7 ~8 ~4 dark_prismarine_slab []
fill ~-5 ~9 ~-2 ~5 ~10 ~2 prismarine_bricks []
fill ~-6 ~11 ~-3 ~6 ~11 ~3 prismarine_brick_slab []
setblock ~0 ~12 ~0 blue_ice []
setblock ~0 ~13 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 prismarine_bricks []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x5x5) ---
fill ~-1 ~0 ~5 ~-1 ~8 ~5 dark_prismarine []
setblock ~-1 ~9 ~5 blue_ice []
setblock ~-1 ~10 ~5 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 sea_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~2 smoker []
setblock ~5 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 trident 8
replaceitem block ~5 ~1 ~1 slot.container 1 prismarine_shard 16
replaceitem block ~5 ~1 ~1 slot.container 2 prismarine_crystals 13
replaceitem block ~5 ~1 ~1 slot.container 3 nautilus_shell 5
replaceitem block ~5 ~1 ~1 slot.container 4 bone 13
replaceitem block ~5 ~1 ~1 slot.container 5 rotten_flesh 16
replaceitem block ~5 ~1 ~1 slot.container 9 cooked_salmon 18
replaceitem block ~5 ~1 ~1 slot.container 10 gold_ingot 8
replaceitem block ~5 ~1 ~1 slot.container 11 iron_ingot 9
replaceitem block ~5 ~1 ~1 slot.container 12 emerald 6
replaceitem block ~5 ~1 ~1 slot.container 13 diamond 5
replaceitem block ~5 ~1 ~1 slot.container 14 golden_apple 6
loot insert ~5 ~1 ~1 loot "rsf/frozen_ocean"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 prismarine_crystals 16
replaceitem block ~-5 ~1 ~2 slot.container 1 nautilus_shell 8
replaceitem block ~-5 ~1 ~2 slot.container 2 bone 16
replaceitem block ~-5 ~1 ~2 slot.container 3 rotten_flesh 19
replaceitem block ~-5 ~1 ~2 slot.container 4 wet_sponge 4
replaceitem block ~-5 ~1 ~2 slot.container 5 copper_ingot 9
replaceitem block ~-5 ~1 ~2 slot.container 9 cooked_salmon 16
replaceitem block ~-5 ~1 ~2 slot.container 10 gold_ingot 13
replaceitem block ~-5 ~1 ~2 slot.container 11 iron_ingot 14
replaceitem block ~-5 ~1 ~2 slot.container 12 emerald 4
replaceitem block ~-5 ~1 ~2 slot.container 13 diamond 3
replaceitem block ~-5 ~1 ~2 slot.container 14 golden_apple 4
loot insert ~-5 ~1 ~2 loot "rsf/frozen_ocean"
loot insert ~-5 ~1 ~2 loot "chests/shipwrecktreasure"
summon guardian ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
