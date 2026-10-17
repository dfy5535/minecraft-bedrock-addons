# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2855/4224 | 主题内编号: b039/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·永恒圣火图腾方尖塔 (frozen_ocean_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 11x9 | 地上高度 11格 | 地下深度 3格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 dark_prismarine [] replace water
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 dark_prismarine [] replace air
fill ~-5 ~1 ~-4 ~5 ~13 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 dark_prismarine_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 prismarine_bricks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 dark_prismarine []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-3 ~-2 ~3 ~-1 ~2 dark_prismarine []
fill ~-2 ~-4 ~-1 ~2 ~-1 ~1 air []
setblock ~-2 ~-4 ~0 blast_furnace []
setblock ~2 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~1 anvil []
fill ~0 ~-4 ~-1 ~0 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 sea_lantern []
setblock ~2 ~-2 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~1 slot.container 0 bone 10
replaceitem block ~2 ~-2 ~1 slot.container 1 rotten_flesh 13
replaceitem block ~2 ~-2 ~1 slot.container 2 wet_sponge 6
replaceitem block ~2 ~-2 ~1 slot.container 3 copper_ingot 11
replaceitem block ~2 ~-2 ~1 slot.container 4 trident 5
replaceitem block ~2 ~-2 ~1 slot.container 5 prismarine_shard 21
replaceitem block ~2 ~-2 ~1 slot.container 9 blue_ice 17
replaceitem block ~2 ~-2 ~1 slot.container 10 sponge 10
replaceitem block ~2 ~-2 ~1 slot.container 11 cooked_salmon 12
replaceitem block ~2 ~-2 ~1 slot.container 12 gold_ingot 9
replaceitem block ~2 ~-2 ~1 slot.container 13 iron_ingot 10
replaceitem block ~2 ~-2 ~1 slot.container 14 emerald 7
loot insert ~2 ~-2 ~1 loot "rsf/frozen_ocean"
loot insert ~2 ~-2 ~1 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~11 ~3 dark_prismarine []
fill ~-3 ~1 ~-2 ~3 ~10 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~11 ~-3 sea_lantern []
fill ~-4 ~1 ~3 ~-4 ~11 ~3 sea_lantern []
fill ~4 ~1 ~-3 ~4 ~11 ~-3 sea_lantern []
fill ~4 ~1 ~3 ~4 ~11 ~3 sea_lantern []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 packed_ice []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 dark_prismarine []
fill ~0 ~17 ~0 ~0 ~20 ~0 blue_ice []
setblock ~0 ~21 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-5 ~0 ~3 ~-5 sea_lantern []
setblock ~0 ~4 ~-5 gold_block []
setblock ~0 ~5 ~-5 sea_lantern []
fill ~0 ~0 ~5 ~0 ~3 ~5 sea_lantern []
setblock ~0 ~4 ~5 gold_block []
setblock ~0 ~5 ~5 sea_lantern []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 sea_lantern []
setblock ~-6 ~4 ~0 gold_block []
setblock ~-6 ~5 ~0 sea_lantern []
fill ~6 ~0 ~0 ~6 ~3 ~0 sea_lantern []
setblock ~6 ~4 ~0 gold_block []
setblock ~6 ~5 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~-2 ~0 ~6 ~-2 ~7 ~6 dark_prismarine []
setblock ~-2 ~8 ~6 blue_ice []
setblock ~-2 ~9 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 trident 8
replaceitem block ~3 ~1 ~1 slot.container 1 prismarine_shard 16
replaceitem block ~3 ~1 ~1 slot.container 2 prismarine_crystals 13
replaceitem block ~3 ~1 ~1 slot.container 3 nautilus_shell 5
replaceitem block ~3 ~1 ~1 slot.container 4 bone 13
replaceitem block ~3 ~1 ~1 slot.container 5 rotten_flesh 16
replaceitem block ~3 ~1 ~1 slot.container 9 iron_ingot 14
replaceitem block ~3 ~1 ~1 slot.container 10 emerald 4
replaceitem block ~3 ~1 ~1 slot.container 11 diamond 3
replaceitem block ~3 ~1 ~1 slot.container 12 golden_apple 4
replaceitem block ~3 ~1 ~1 slot.container 13 sea_lantern 9
replaceitem block ~3 ~1 ~1 slot.container 14 heart_of_the_sea 5
loot insert ~3 ~1 ~1 loot "rsf/frozen_ocean"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 prismarine_crystals 16
replaceitem block ~-3 ~1 ~2 slot.container 1 nautilus_shell 8
replaceitem block ~-3 ~1 ~2 slot.container 2 bone 16
replaceitem block ~-3 ~1 ~2 slot.container 3 rotten_flesh 19
replaceitem block ~-3 ~1 ~2 slot.container 4 wet_sponge 4
replaceitem block ~-3 ~1 ~2 slot.container 5 copper_ingot 9
replaceitem block ~-3 ~1 ~2 slot.container 9 iron_ingot 12
replaceitem block ~-3 ~1 ~2 slot.container 10 emerald 9
replaceitem block ~-3 ~1 ~2 slot.container 11 diamond 8
replaceitem block ~-3 ~1 ~2 slot.container 12 golden_apple 2
replaceitem block ~-3 ~1 ~2 slot.container 13 sea_lantern 7
replaceitem block ~-3 ~1 ~2 slot.container 14 heart_of_the_sea 3
loot insert ~-3 ~1 ~2 loot "rsf/frozen_ocean"
loot insert ~-3 ~1 ~2 loot "chests/shipwrecktreasure"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon stray ~0 ~-2 ~0
