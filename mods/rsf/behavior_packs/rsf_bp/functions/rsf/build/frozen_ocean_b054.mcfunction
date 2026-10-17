# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2870/4224 | 主题内编号: b054/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·切石与伐木工匠棚屋 (frozen_ocean_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 prismarine [] replace water
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 prismarine [] replace air
fill ~-7 ~1 ~-5 ~7 ~9 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 prismarine_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 packed_ice []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 prismarine_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-4 ~6 ~-1 ~4 dark_prismarine []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~8 ~4 prismarine []
fill ~2 ~1 ~-4 ~6 ~8 ~4 prismarine []
fill ~-5 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 dark_prismarine []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-5 ~-7 ~8 ~5 prismarine_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-5 ~7 ~8 ~5 prismarine_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-4 ~-6 ~9 ~4 prismarine_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-4 ~6 ~9 ~4 prismarine_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-4 ~5 ~9 ~4 prismarine_slab []
fill ~0 ~10 ~-5 ~0 ~10 ~5 dark_prismarine []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 sea_lantern []
setblock ~0 ~4 ~-7 gold_block []
setblock ~0 ~5 ~-7 sea_lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 sea_lantern []
setblock ~0 ~4 ~7 gold_block []
setblock ~0 ~5 ~7 sea_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 sea_lantern []
setblock ~-8 ~4 ~0 gold_block []
setblock ~-8 ~5 ~0 sea_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 sea_lantern []
setblock ~8 ~4 ~0 gold_block []
setblock ~8 ~5 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x7x4) ---
fill ~0 ~0 ~7 ~0 ~7 ~7 dark_prismarine []
setblock ~0 ~8 ~7 blue_ice []
setblock ~0 ~9 ~7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 copper_ingot 14
replaceitem block ~-5 ~1 ~2 slot.container 1 trident 8
replaceitem block ~-5 ~1 ~2 slot.container 2 prismarine_shard 16
replaceitem block ~-5 ~1 ~2 slot.container 3 prismarine_crystals 13
replaceitem block ~-5 ~1 ~2 slot.container 4 nautilus_shell 5
replaceitem block ~-5 ~1 ~2 slot.container 5 bone 13
replaceitem block ~-5 ~1 ~2 slot.container 9 heart_of_the_sea 1
replaceitem block ~-5 ~1 ~2 slot.container 10 blue_ice 13
replaceitem block ~-5 ~1 ~2 slot.container 11 sponge 6
replaceitem block ~-5 ~1 ~2 slot.container 12 cooked_salmon 15
replaceitem block ~-5 ~1 ~2 slot.container 13 gold_ingot 12
replaceitem block ~-5 ~1 ~2 slot.container 14 iron_ingot 13
loot insert ~-5 ~1 ~2 loot "rsf/frozen_ocean"
summon stray ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon elder_guardian ~1 ~1 ~1
summon squid ~0 ~2 ~0
