# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2884/4224 | 主题内编号: b068/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·断裂凯旋高架拱廊 (frozen_ocean_ruin_broken_aqueduct)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 17x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 prismarine_bricks [] replace water
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 prismarine_bricks [] replace air
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 prismarine_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 dark_prismarine []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 blue_ice []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-7 ~1 ~-4 ~7 ~8 ~4 prismarine_bricks []
fill ~-6 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~8 ~-4 ~7 ~8 ~4 prismarine_brick_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-7 ~7 ~-1 ~-7 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 blue_ice []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 sea_lantern []
setblock ~2 ~4 ~-7 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 10x6x3) ---
fill ~1 ~0 ~6 ~1 ~6 ~6 dark_prismarine []
setblock ~1 ~7 ~6 blue_ice []
setblock ~1 ~8 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~3 crafting_table []
setblock ~-4 ~1 ~3 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 rotten_flesh 16
replaceitem block ~-6 ~1 ~2 slot.container 1 wet_sponge 9
replaceitem block ~-6 ~1 ~2 slot.container 2 copper_ingot 14
replaceitem block ~-6 ~1 ~2 slot.container 3 trident 8
replaceitem block ~-6 ~1 ~2 slot.container 4 prismarine_shard 16
replaceitem block ~-6 ~1 ~2 slot.container 5 prismarine_crystals 13
replaceitem block ~-6 ~1 ~2 slot.container 9 sponge 4
replaceitem block ~-6 ~1 ~2 slot.container 10 cooked_salmon 13
replaceitem block ~-6 ~1 ~2 slot.container 11 gold_ingot 10
replaceitem block ~-6 ~1 ~2 slot.container 12 iron_ingot 11
replaceitem block ~-6 ~1 ~2 slot.container 13 emerald 8
replaceitem block ~-6 ~1 ~2 slot.container 14 diamond 7
loot insert ~-6 ~1 ~2 loot "rsf/frozen_ocean"
summon elder_guardian ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
