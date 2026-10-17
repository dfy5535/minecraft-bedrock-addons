# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2920/4224 | 主题内编号: b104/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·双层指挥台卫戍堡 (frozen_ocean_bunker_terrace_command)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[battlement_flat] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 9格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 prismarine_bricks [] replace water
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 prismarine_bricks [] replace air
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 prismarine_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 dark_prismarine []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 prismarine []
setblock ~0 ~0 ~0 gold_block []

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

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-5 ~6 ~4 ~5 prismarine_bricks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-7 ~4 ~-6 ~7 ~4 ~6 prismarine_brick_slab []
fill ~-5 ~5 ~-4 ~5 ~9 ~4 stone_bricks []
fill ~-4 ~5 ~-3 ~4 ~8 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 blue_ice []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 cobblestone_wall []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 air []
setblock ~-6 ~10 ~-5 sea_lantern []
setblock ~-6 ~11 ~-5 sea_lantern []
setblock ~-6 ~10 ~5 sea_lantern []
setblock ~-6 ~11 ~5 sea_lantern []
setblock ~6 ~10 ~-5 sea_lantern []
setblock ~6 ~11 ~-5 sea_lantern []
setblock ~6 ~10 ~5 sea_lantern []
setblock ~6 ~11 ~5 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x7x4) ---
fill ~2 ~0 ~7 ~2 ~7 ~7 dark_prismarine []
setblock ~2 ~8 ~7 blue_ice []
setblock ~2 ~9 ~7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~8 ~0 sea_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 prismarine_shard 16
replaceitem block ~-5 ~1 ~3 slot.container 1 prismarine_crystals 13
replaceitem block ~-5 ~1 ~3 slot.container 2 nautilus_shell 5
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 13
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 16
replaceitem block ~-5 ~1 ~3 slot.container 5 wet_sponge 9
replaceitem block ~-5 ~1 ~3 slot.container 9 heart_of_the_sea 2
replaceitem block ~-5 ~1 ~3 slot.container 10 blue_ice 14
replaceitem block ~-5 ~1 ~3 slot.container 11 sponge 7
replaceitem block ~-5 ~1 ~3 slot.container 12 cooked_salmon 16
replaceitem block ~-5 ~1 ~3 slot.container 13 gold_ingot 13
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_ingot 14
loot insert ~-5 ~1 ~3 loot "rsf/frozen_ocean"
summon elder_guardian ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
