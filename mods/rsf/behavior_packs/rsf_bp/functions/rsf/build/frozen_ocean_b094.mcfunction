# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2910/4224 | 主题内编号: b094/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·圆形圣泉祈祷亭 (frozen_ocean_shrine_rotunda_fountain)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 prismarine [] replace water
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 prismarine [] replace air
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_ice []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 prismarine_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 dark_prismarine []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 packed_ice []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 sea_lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 prismarine_shard 21
replaceitem block ~-3 ~-3 ~2 slot.container 1 prismarine_crystals 18
replaceitem block ~-3 ~-3 ~2 slot.container 2 nautilus_shell 10
replaceitem block ~-3 ~-3 ~2 slot.container 3 bone 10
replaceitem block ~-3 ~-3 ~2 slot.container 4 rotten_flesh 13
replaceitem block ~-3 ~-3 ~2 slot.container 5 wet_sponge 6
replaceitem block ~-3 ~-3 ~2 slot.container 9 emerald 10
replaceitem block ~-3 ~-3 ~2 slot.container 10 diamond 2
replaceitem block ~-3 ~-3 ~2 slot.container 11 golden_apple 3
replaceitem block ~-3 ~-3 ~2 slot.container 12 sea_lantern 8
replaceitem block ~-3 ~-3 ~2 slot.container 13 heart_of_the_sea 4
replaceitem block ~-3 ~-3 ~2 slot.container 14 blue_ice 16
loot insert ~-3 ~-3 ~2 loot "rsf/frozen_ocean"
loot insert ~-3 ~-3 ~2 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 dark_prismarine []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 sea_lantern []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 sea_lantern []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 sea_lantern []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 sea_lantern []
fill ~-1 ~1 ~-4 ~-1 ~7 ~-4 sea_lantern []
fill ~-1 ~1 ~4 ~-1 ~7 ~4 sea_lantern []
fill ~1 ~1 ~-4 ~1 ~7 ~-4 sea_lantern []
fill ~1 ~1 ~4 ~1 ~7 ~4 sea_lantern []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 sea_lantern []
fill ~3 ~1 ~4 ~3 ~7 ~4 sea_lantern []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 sea_lantern []
fill ~5 ~1 ~4 ~5 ~7 ~4 sea_lantern []
fill ~-5 ~1 ~-2 ~-5 ~7 ~-2 sea_lantern []
fill ~5 ~1 ~-2 ~5 ~7 ~-2 sea_lantern []
fill ~-5 ~1 ~0 ~-5 ~7 ~0 sea_lantern []
fill ~5 ~1 ~0 ~5 ~7 ~0 sea_lantern []
fill ~-5 ~1 ~2 ~-5 ~7 ~2 sea_lantern []
fill ~5 ~1 ~2 ~5 ~7 ~2 sea_lantern []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 dark_prismarine []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 glass []
fill ~-3 ~9 ~-2 ~3 ~9 ~2 air []
setblock ~0 ~10 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 sea_lantern []
setblock ~0 ~4 ~-6 blue_ice []
setblock ~0 ~5 ~-6 sea_lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 sea_lantern []
setblock ~0 ~4 ~6 blue_ice []
setblock ~0 ~5 ~6 sea_lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 sea_lantern []
setblock ~-7 ~4 ~0 blue_ice []
setblock ~-7 ~5 ~0 sea_lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 sea_lantern []
setblock ~7 ~4 ~0 blue_ice []
setblock ~7 ~5 ~0 sea_lantern []

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
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 copper_ingot 14
replaceitem block ~-4 ~1 ~2 slot.container 1 trident 8
replaceitem block ~-4 ~1 ~2 slot.container 2 prismarine_shard 16
replaceitem block ~-4 ~1 ~2 slot.container 3 prismarine_crystals 13
replaceitem block ~-4 ~1 ~2 slot.container 4 nautilus_shell 5
replaceitem block ~-4 ~1 ~2 slot.container 5 bone 13
replaceitem block ~-4 ~1 ~2 slot.container 9 heart_of_the_sea 6
replaceitem block ~-4 ~1 ~2 slot.container 10 blue_ice 18
replaceitem block ~-4 ~1 ~2 slot.container 11 sponge 4
replaceitem block ~-4 ~1 ~2 slot.container 12 cooked_salmon 13
replaceitem block ~-4 ~1 ~2 slot.container 13 gold_ingot 10
replaceitem block ~-4 ~1 ~2 slot.container 14 iron_ingot 11
loot insert ~-4 ~1 ~2 loot "rsf/frozen_ocean"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
