# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2820/4224 | 主题内编号: b004/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·双子火盆高台神坛 (frozen_ocean_altar_twin_brazier)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_living]
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

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~9 ~4 prismarine_bricks []
fill ~2 ~1 ~-4 ~7 ~9 ~4 prismarine_bricks []
fill ~-6 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~6 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 blue_ice []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~8 ~-4 ~-7 ~10 ~-4 sea_lantern []
setblock ~-7 ~11 ~-4 sea_lantern []
fill ~-7 ~8 ~4 ~-7 ~10 ~4 sea_lantern []
setblock ~-7 ~11 ~4 sea_lantern []
fill ~7 ~8 ~-4 ~7 ~10 ~-4 sea_lantern []
setblock ~7 ~11 ~-4 sea_lantern []
fill ~7 ~8 ~4 ~7 ~10 ~4 sea_lantern []
setblock ~7 ~11 ~4 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 blue_ice []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 sea_lantern []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 sea_lantern []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 prismarine_brick_slab []
setblock ~0 ~3 ~-6 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 10x5x4) ---
fill ~0 ~0 ~5 ~0 ~7 ~5 dark_prismarine []
setblock ~0 ~8 ~5 blue_ice []
setblock ~0 ~9 ~5 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
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
replaceitem block ~-6 ~1 ~2 slot.container 9 heart_of_the_sea 7
replaceitem block ~-6 ~1 ~2 slot.container 10 blue_ice 12
replaceitem block ~-6 ~1 ~2 slot.container 11 sponge 5
replaceitem block ~-6 ~1 ~2 slot.container 12 cooked_salmon 14
replaceitem block ~-6 ~1 ~2 slot.container 13 gold_ingot 11
replaceitem block ~-6 ~1 ~2 slot.container 14 iron_ingot 12
loot insert ~-6 ~1 ~2 loot "rsf/frozen_ocean"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
