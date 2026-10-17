# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2871/4224 | 主题内编号: b055/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·木栅栏防御拓荒哨所 (frozen_ocean_outpost_palisade_fort)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 dark_prismarine [] replace water
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 dark_prismarine [] replace air
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 dark_prismarine_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 dark_prismarine []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 prismarine_bricks []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 packed_ice []
setblock ~0 ~-5 ~0 gold_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 sea_lantern []
setblock ~2 ~-4 ~0 sea_lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 wet_sponge 6
replaceitem block ~0 ~-2 ~-3 slot.container 1 copper_ingot 11
replaceitem block ~0 ~-2 ~-3 slot.container 2 trident 5
replaceitem block ~0 ~-2 ~-3 slot.container 3 prismarine_shard 21
replaceitem block ~0 ~-2 ~-3 slot.container 4 prismarine_crystals 18
replaceitem block ~0 ~-2 ~-3 slot.container 5 nautilus_shell 10
replaceitem block ~0 ~-2 ~-3 slot.container 9 cooked_salmon 13
replaceitem block ~0 ~-2 ~-3 slot.container 10 gold_ingot 10
replaceitem block ~0 ~-2 ~-3 slot.container 11 iron_ingot 11
replaceitem block ~0 ~-2 ~-3 slot.container 12 emerald 8
replaceitem block ~0 ~-2 ~-3 slot.container 13 diamond 7
replaceitem block ~0 ~-2 ~-3 slot.container 14 golden_apple 8
loot insert ~0 ~-2 ~-3 loot "rsf/frozen_ocean"
loot insert ~0 ~-2 ~-3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 dark_prismarine []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~9 ~-4 packed_ice []
setblock ~-6 ~10 ~-5 sea_lantern []
fill ~-6 ~1 ~4 ~-5 ~9 ~5 packed_ice []
setblock ~-6 ~10 ~4 sea_lantern []
fill ~5 ~1 ~-5 ~6 ~9 ~-4 packed_ice []
setblock ~5 ~10 ~-5 sea_lantern []
fill ~5 ~1 ~4 ~6 ~9 ~5 packed_ice []
setblock ~5 ~10 ~4 sea_lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 packed_ice []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 cobblestone_wall []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 air []
setblock ~-6 ~8 ~-5 sea_lantern []
setblock ~-6 ~9 ~-5 sea_lantern []
setblock ~-6 ~8 ~5 sea_lantern []
setblock ~-6 ~9 ~5 sea_lantern []
setblock ~6 ~8 ~-5 sea_lantern []
setblock ~6 ~9 ~-5 sea_lantern []
setblock ~6 ~8 ~5 sea_lantern []
setblock ~6 ~9 ~5 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x6x5) ---
fill ~1 ~0 ~6 ~1 ~8 ~6 dark_prismarine []
setblock ~1 ~9 ~6 blue_ice []
setblock ~1 ~10 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 trident 8
replaceitem block ~5 ~1 ~3 slot.container 1 prismarine_shard 16
replaceitem block ~5 ~1 ~3 slot.container 2 prismarine_crystals 13
replaceitem block ~5 ~1 ~3 slot.container 3 nautilus_shell 5
replaceitem block ~5 ~1 ~3 slot.container 4 bone 13
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 16
replaceitem block ~5 ~1 ~3 slot.container 9 cooked_salmon 13
replaceitem block ~5 ~1 ~3 slot.container 10 gold_ingot 10
replaceitem block ~5 ~1 ~3 slot.container 11 iron_ingot 11
replaceitem block ~5 ~1 ~3 slot.container 12 emerald 8
replaceitem block ~5 ~1 ~3 slot.container 13 diamond 7
replaceitem block ~5 ~1 ~3 slot.container 14 golden_apple 8
loot insert ~5 ~1 ~3 loot "rsf/frozen_ocean"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 prismarine_crystals 16
replaceitem block ~-5 ~1 ~4 slot.container 1 nautilus_shell 8
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 16
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 19
replaceitem block ~-5 ~1 ~4 slot.container 4 wet_sponge 4
replaceitem block ~-5 ~1 ~4 slot.container 5 copper_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 9 cooked_salmon 18
replaceitem block ~-5 ~1 ~4 slot.container 10 gold_ingot 8
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 12 emerald 6
replaceitem block ~-5 ~1 ~4 slot.container 13 diamond 5
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 6
loot insert ~-5 ~1 ~4 loot "rsf/frozen_ocean"
loot insert ~-5 ~1 ~4 loot "chests/shipwrecktreasure"
summon polar_bear ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
