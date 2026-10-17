# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2936/4224 | 主题内编号: b120/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·引水渠跨桥水培温室 (frozen_ocean_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 prismarine_bricks [] replace water
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 prismarine_bricks [] replace air
fill ~-7 ~1 ~-5 ~7 ~9 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 prismarine_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 dark_prismarine []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-4 ~-3 ~5 ~-1 ~3 blue_ice []
fill ~-4 ~-5 ~-2 ~4 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 packed_ice []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 sea_lantern []
setblock ~-4 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-3 ~2 slot.container 0 nautilus_shell 10
replaceitem block ~-4 ~-3 ~2 slot.container 1 bone 10
replaceitem block ~-4 ~-3 ~2 slot.container 2 rotten_flesh 13
replaceitem block ~-4 ~-3 ~2 slot.container 3 wet_sponge 6
replaceitem block ~-4 ~-3 ~2 slot.container 4 copper_ingot 11
replaceitem block ~-4 ~-3 ~2 slot.container 5 trident 5
replaceitem block ~-4 ~-3 ~2 slot.container 9 gold_ingot 12
replaceitem block ~-4 ~-3 ~2 slot.container 10 iron_ingot 13
replaceitem block ~-4 ~-3 ~2 slot.container 11 emerald 10
replaceitem block ~-4 ~-3 ~2 slot.container 12 diamond 2
replaceitem block ~-4 ~-3 ~2 slot.container 13 golden_apple 3
replaceitem block ~-4 ~-3 ~2 slot.container 14 sea_lantern 8
loot insert ~-4 ~-3 ~2 loot "rsf/frozen_ocean"
loot insert ~-4 ~-3 ~2 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~7 ~4 prismarine_bricks []
fill ~-5 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~7 ~-4 ~6 ~7 ~4 blue_ice []
fill ~-5 ~8 ~-3 ~5 ~9 ~3 glass []
fill ~-4 ~8 ~-2 ~4 ~8 ~2 air []
setblock ~0 ~9 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 blue_ice []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 sea_lantern []
setblock ~2 ~4 ~-7 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x7x5) ---
fill ~0 ~0 ~7 ~0 ~8 ~7 dark_prismarine []
setblock ~0 ~9 ~7 blue_ice []
setblock ~0 ~10 ~7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 sea_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 prismarine_shard 16
replaceitem block ~-5 ~1 ~2 slot.container 1 prismarine_crystals 13
replaceitem block ~-5 ~1 ~2 slot.container 2 nautilus_shell 5
replaceitem block ~-5 ~1 ~2 slot.container 3 bone 13
replaceitem block ~-5 ~1 ~2 slot.container 4 rotten_flesh 16
replaceitem block ~-5 ~1 ~2 slot.container 5 wet_sponge 9
replaceitem block ~-5 ~1 ~2 slot.container 9 golden_apple 5
replaceitem block ~-5 ~1 ~2 slot.container 10 sea_lantern 10
replaceitem block ~-5 ~1 ~2 slot.container 11 heart_of_the_sea 6
replaceitem block ~-5 ~1 ~2 slot.container 12 blue_ice 18
replaceitem block ~-5 ~1 ~2 slot.container 13 sponge 4
replaceitem block ~-5 ~1 ~2 slot.container 14 cooked_salmon 13
loot insert ~-5 ~1 ~2 loot "rsf/frozen_ocean"
summon stray ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon elder_guardian ~1 ~1 ~1
summon squid ~0 ~-3 ~0
