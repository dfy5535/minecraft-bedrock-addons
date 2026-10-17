# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2835/4224 | 主题内编号: b019/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·琉璃穹顶圣物秘室 (frozen_ocean_chamber_domed_reliquary)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 dark_prismarine [] replace water
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 dark_prismarine [] replace air
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 dark_prismarine_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 prismarine_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 dark_prismarine []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 prismarine_bricks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 blue_ice []
setblock ~0 ~-5 ~0 sea_lantern []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 bone 10
replaceitem block ~3 ~-2 ~0 slot.container 1 rotten_flesh 13
replaceitem block ~3 ~-2 ~0 slot.container 2 wet_sponge 6
replaceitem block ~3 ~-2 ~0 slot.container 3 copper_ingot 11
replaceitem block ~3 ~-2 ~0 slot.container 4 trident 5
replaceitem block ~3 ~-2 ~0 slot.container 5 prismarine_shard 21
replaceitem block ~3 ~-2 ~0 slot.container 9 blue_ice 17
replaceitem block ~3 ~-2 ~0 slot.container 10 sponge 10
replaceitem block ~3 ~-2 ~0 slot.container 11 cooked_salmon 12
replaceitem block ~3 ~-2 ~0 slot.container 12 gold_ingot 9
replaceitem block ~3 ~-2 ~0 slot.container 13 iron_ingot 10
replaceitem block ~3 ~-2 ~0 slot.container 14 emerald 7
loot insert ~3 ~-2 ~0 loot "rsf/frozen_ocean"
loot insert ~3 ~-2 ~0 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 dark_prismarine []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 air []
fill ~5 ~1 ~4 ~5 ~9 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~8 ~-3 sea_lantern []
fill ~4 ~1 ~-3 ~4 ~8 ~-3 sea_lantern []
fill ~-4 ~1 ~3 ~-4 ~8 ~3 sea_lantern []
fill ~4 ~1 ~3 ~4 ~8 ~3 sea_lantern []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 packed_ice []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 glass []
fill ~-3 ~9 ~-2 ~3 ~9 ~2 air []
setblock ~0 ~10 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 sea_lantern []
setblock ~-7 ~6 ~-6 sea_lantern []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 sea_lantern []
setblock ~-7 ~6 ~6 sea_lantern []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 sea_lantern []
setblock ~7 ~6 ~-6 sea_lantern []
fill ~7 ~0 ~6 ~7 ~5 ~6 sea_lantern []
setblock ~7 ~6 ~6 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 8x5x4) ---
fill ~1 ~0 ~5 ~1 ~7 ~5 dark_prismarine []
setblock ~1 ~8 ~5 blue_ice []
setblock ~1 ~9 ~5 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 bone 13
replaceitem block ~4 ~1 ~2 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~1 ~2 slot.container 2 wet_sponge 9
replaceitem block ~4 ~1 ~2 slot.container 3 copper_ingot 14
replaceitem block ~4 ~1 ~2 slot.container 4 trident 8
replaceitem block ~4 ~1 ~2 slot.container 5 prismarine_shard 16
replaceitem block ~4 ~1 ~2 slot.container 9 iron_ingot 8
replaceitem block ~4 ~1 ~2 slot.container 10 emerald 5
replaceitem block ~4 ~1 ~2 slot.container 11 diamond 4
replaceitem block ~4 ~1 ~2 slot.container 12 golden_apple 5
replaceitem block ~4 ~1 ~2 slot.container 13 sea_lantern 10
replaceitem block ~4 ~1 ~2 slot.container 14 heart_of_the_sea 6
loot insert ~4 ~1 ~2 loot "rsf/frozen_ocean"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 wet_sponge 4
replaceitem block ~-4 ~1 ~3 slot.container 1 copper_ingot 9
replaceitem block ~-4 ~1 ~3 slot.container 2 trident 3
replaceitem block ~-4 ~1 ~3 slot.container 3 prismarine_shard 19
replaceitem block ~-4 ~1 ~3 slot.container 4 prismarine_crystals 16
replaceitem block ~-4 ~1 ~3 slot.container 5 nautilus_shell 8
replaceitem block ~-4 ~1 ~3 slot.container 9 iron_ingot 13
replaceitem block ~-4 ~1 ~3 slot.container 10 emerald 10
replaceitem block ~-4 ~1 ~3 slot.container 11 diamond 2
replaceitem block ~-4 ~1 ~3 slot.container 12 golden_apple 3
replaceitem block ~-4 ~1 ~3 slot.container 13 sea_lantern 8
replaceitem block ~-4 ~1 ~3 slot.container 14 heart_of_the_sea 4
loot insert ~-4 ~1 ~3 loot "rsf/frozen_ocean"
loot insert ~-4 ~1 ~3 loot "chests/shipwrecktreasure"
summon polar_bear ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
