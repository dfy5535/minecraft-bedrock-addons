# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2845/4224 | 主题内编号: b029/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·奥术星象琉璃塔 (frozen_ocean_tower_mage_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x11 | 地上高度 11格 | 地下深度 3格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~1 ~-5 ~6 ~13 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 prismarine []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 packed_ice []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 prismarine []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 sponge []
setblock ~0 ~-5 ~0 sea_lantern []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 wet_sponge 6
replaceitem block ~3 ~-2 ~0 slot.container 1 copper_ingot 11
replaceitem block ~3 ~-2 ~0 slot.container 2 trident 5
replaceitem block ~3 ~-2 ~0 slot.container 3 prismarine_shard 21
replaceitem block ~3 ~-2 ~0 slot.container 4 prismarine_crystals 18
replaceitem block ~3 ~-2 ~0 slot.container 5 nautilus_shell 10
replaceitem block ~3 ~-2 ~0 slot.container 9 blue_ice 13
replaceitem block ~3 ~-2 ~0 slot.container 10 sponge 6
replaceitem block ~3 ~-2 ~0 slot.container 11 cooked_salmon 15
replaceitem block ~3 ~-2 ~0 slot.container 12 gold_ingot 12
replaceitem block ~3 ~-2 ~0 slot.container 13 iron_ingot 13
replaceitem block ~3 ~-2 ~0 slot.container 14 emerald 10
loot insert ~3 ~-2 ~0 loot "rsf/frozen_ocean"
loot insert ~3 ~-2 ~0 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-5 ~1 ~-4 ~5 ~11 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~10 ~3 air []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 prismarine_slab []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~3 ~0 ~11 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~11 ~-4 ~5 ~11 ~4 packed_ice []
fill ~-4 ~12 ~-3 ~4 ~13 ~3 glass []
fill ~-3 ~12 ~-2 ~3 ~12 ~2 air []
setblock ~0 ~13 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 sea_lantern []
setblock ~0 ~4 ~-6 diamond_block []
setblock ~0 ~5 ~-6 sea_lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 sea_lantern []
setblock ~0 ~4 ~6 diamond_block []
setblock ~0 ~5 ~6 sea_lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 sea_lantern []
setblock ~-7 ~4 ~0 diamond_block []
setblock ~-7 ~5 ~0 sea_lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 sea_lantern []
setblock ~7 ~4 ~0 diamond_block []
setblock ~7 ~5 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 8x6x4) ---
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
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 wet_sponge 9
replaceitem block ~4 ~1 ~2 slot.container 1 copper_ingot 14
replaceitem block ~4 ~1 ~2 slot.container 2 trident 8
replaceitem block ~4 ~1 ~2 slot.container 3 prismarine_shard 16
replaceitem block ~4 ~1 ~2 slot.container 4 prismarine_crystals 13
replaceitem block ~4 ~1 ~2 slot.container 5 nautilus_shell 5
replaceitem block ~4 ~1 ~2 slot.container 9 iron_ingot 11
replaceitem block ~4 ~1 ~2 slot.container 10 emerald 8
replaceitem block ~4 ~1 ~2 slot.container 11 diamond 7
replaceitem block ~4 ~1 ~2 slot.container 12 golden_apple 8
replaceitem block ~4 ~1 ~2 slot.container 13 sea_lantern 6
replaceitem block ~4 ~1 ~2 slot.container 14 heart_of_the_sea 2
loot insert ~4 ~1 ~2 loot "rsf/frozen_ocean"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 trident 3
replaceitem block ~-4 ~1 ~3 slot.container 1 prismarine_shard 19
replaceitem block ~-4 ~1 ~3 slot.container 2 prismarine_crystals 16
replaceitem block ~-4 ~1 ~3 slot.container 3 nautilus_shell 8
replaceitem block ~-4 ~1 ~3 slot.container 4 bone 16
replaceitem block ~-4 ~1 ~3 slot.container 5 rotten_flesh 19
replaceitem block ~-4 ~1 ~3 slot.container 9 iron_ingot 9
replaceitem block ~-4 ~1 ~3 slot.container 10 emerald 6
replaceitem block ~-4 ~1 ~3 slot.container 11 diamond 5
replaceitem block ~-4 ~1 ~3 slot.container 12 golden_apple 6
replaceitem block ~-4 ~1 ~3 slot.container 13 sea_lantern 11
replaceitem block ~-4 ~1 ~3 slot.container 14 heart_of_the_sea 7
loot insert ~-4 ~1 ~3 loot "rsf/frozen_ocean"
loot insert ~-4 ~1 ~3 loot "chests/shipwrecktreasure"
summon guardian ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
