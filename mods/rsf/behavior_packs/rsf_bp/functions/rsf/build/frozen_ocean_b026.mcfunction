# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2842/4224 | 主题内编号: b026/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·尖顶信标引航高塔 (frozen_ocean_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 11x9 | 地上高度 12格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 prismarine [] replace water
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 prismarine [] replace air
fill ~-5 ~1 ~-4 ~5 ~14 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 prismarine_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 packed_ice []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 prismarine_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 dark_prismarine []
fill ~-2 ~-5 ~-1 ~2 ~-1 ~1 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 sea_lantern []
setblock ~2 ~-3 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~1 slot.container 0 copper_ingot 11
replaceitem block ~2 ~-3 ~1 slot.container 1 trident 5
replaceitem block ~2 ~-3 ~1 slot.container 2 prismarine_shard 21
replaceitem block ~2 ~-3 ~1 slot.container 3 prismarine_crystals 18
replaceitem block ~2 ~-3 ~1 slot.container 4 nautilus_shell 10
replaceitem block ~2 ~-3 ~1 slot.container 5 bone 10
replaceitem block ~2 ~-3 ~1 slot.container 9 heart_of_the_sea 4
replaceitem block ~2 ~-3 ~1 slot.container 10 blue_ice 16
replaceitem block ~2 ~-3 ~1 slot.container 11 sponge 9
replaceitem block ~2 ~-3 ~1 slot.container 12 cooked_salmon 18
replaceitem block ~2 ~-3 ~1 slot.container 13 gold_ingot 8
replaceitem block ~2 ~-3 ~1 slot.container 14 iron_ingot 9
loot insert ~2 ~-3 ~1 loot "rsf/frozen_ocean"
loot insert ~2 ~-3 ~1 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-3 ~4 ~12 ~3 prismarine []
fill ~-3 ~1 ~-2 ~3 ~11 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~13 ~-3 air []
fill ~4 ~1 ~-3 ~4 ~13 ~-3 air []
fill ~-4 ~1 ~3 ~-4 ~13 ~3 air []
fill ~4 ~1 ~3 ~4 ~13 ~3 air []
fill ~-3 ~1 ~-2 ~-3 ~12 ~-2 sea_lantern []
fill ~3 ~1 ~-2 ~3 ~12 ~-2 sea_lantern []
fill ~-3 ~1 ~2 ~-3 ~12 ~2 sea_lantern []
fill ~3 ~1 ~2 ~3 ~12 ~2 sea_lantern []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~13 ~-2 ~2 ~14 ~2 dark_prismarine []
fill ~-1 ~15 ~-1 ~1 ~17 ~1 prismarine []
fill ~0 ~18 ~0 ~0 ~21 ~0 diamond_block []
setblock ~0 ~22 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~11 ~-2 sea_lantern []
fill ~-5 ~0 ~2 ~-5 ~11 ~2 sea_lantern []
fill ~5 ~0 ~-2 ~5 ~11 ~-2 sea_lantern []
fill ~5 ~0 ~2 ~5 ~11 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 7x5x6) ---
fill ~1 ~0 ~5 ~1 ~9 ~5 dark_prismarine []
setblock ~1 ~10 ~5 blue_ice []
setblock ~1 ~11 ~5 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~1 slot.container 0 nautilus_shell 5
replaceitem block ~-3 ~1 ~1 slot.container 1 bone 13
replaceitem block ~-3 ~1 ~1 slot.container 2 rotten_flesh 16
replaceitem block ~-3 ~1 ~1 slot.container 3 wet_sponge 9
replaceitem block ~-3 ~1 ~1 slot.container 4 copper_ingot 14
replaceitem block ~-3 ~1 ~1 slot.container 5 trident 8
replaceitem block ~-3 ~1 ~1 slot.container 9 emerald 4
replaceitem block ~-3 ~1 ~1 slot.container 10 diamond 3
replaceitem block ~-3 ~1 ~1 slot.container 11 golden_apple 4
replaceitem block ~-3 ~1 ~1 slot.container 12 sea_lantern 9
replaceitem block ~-3 ~1 ~1 slot.container 13 heart_of_the_sea 5
replaceitem block ~-3 ~1 ~1 slot.container 14 blue_ice 17
loot insert ~-3 ~1 ~1 loot "rsf/frozen_ocean"
summon elder_guardian ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
