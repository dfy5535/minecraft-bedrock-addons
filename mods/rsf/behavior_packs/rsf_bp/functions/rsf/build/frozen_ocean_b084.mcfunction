# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2900/4224 | 主题内编号: b084/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·露天采石场与矿道库 (frozen_ocean_mine_sunken_quarry)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 prismarine_bricks [] replace water
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 prismarine_bricks [] replace air
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 prismarine_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 dark_prismarine []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 sea_lantern []
setblock ~4 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-4 ~3 slot.container 0 prismarine_shard 21
replaceitem block ~4 ~-4 ~3 slot.container 1 prismarine_crystals 18
replaceitem block ~4 ~-4 ~3 slot.container 2 nautilus_shell 10
replaceitem block ~4 ~-4 ~3 slot.container 3 bone 10
replaceitem block ~4 ~-4 ~3 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~-4 ~3 slot.container 5 wet_sponge 6
replaceitem block ~4 ~-4 ~3 slot.container 9 gold_ingot 13
replaceitem block ~4 ~-4 ~3 slot.container 10 iron_ingot 14
replaceitem block ~4 ~-4 ~3 slot.container 11 emerald 4
replaceitem block ~4 ~-4 ~3 slot.container 12 diamond 3
replaceitem block ~4 ~-4 ~3 slot.container 13 golden_apple 4
replaceitem block ~4 ~-4 ~3 slot.container 14 sea_lantern 9
loot insert ~4 ~-4 ~3 loot "rsf/frozen_ocean"
loot insert ~4 ~-4 ~3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 prismarine_bricks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 blue_ice []
fill ~0 ~1 ~-5 ~0 ~2 ~5 blue_ice []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-5 ~-6 ~8 ~-5 sea_lantern []
setblock ~-6 ~9 ~-5 sea_lantern []
fill ~-6 ~6 ~5 ~-6 ~8 ~5 sea_lantern []
setblock ~-6 ~9 ~5 sea_lantern []
fill ~6 ~6 ~-5 ~6 ~8 ~-5 sea_lantern []
setblock ~6 ~9 ~-5 sea_lantern []
fill ~6 ~6 ~5 ~6 ~8 ~5 sea_lantern []
setblock ~6 ~9 ~5 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x8x4) ---
fill ~0 ~0 ~8 ~0 ~7 ~8 dark_prismarine []
setblock ~0 ~8 ~8 blue_ice []
setblock ~0 ~9 ~8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~4 bookshelf []
setblock ~5 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 16
replaceitem block ~-5 ~1 ~3 slot.container 1 wet_sponge 9
replaceitem block ~-5 ~1 ~3 slot.container 2 copper_ingot 14
replaceitem block ~-5 ~1 ~3 slot.container 3 trident 8
replaceitem block ~-5 ~1 ~3 slot.container 4 prismarine_shard 16
replaceitem block ~-5 ~1 ~3 slot.container 5 prismarine_crystals 13
replaceitem block ~-5 ~1 ~3 slot.container 9 heart_of_the_sea 3
replaceitem block ~-5 ~1 ~3 slot.container 10 blue_ice 15
replaceitem block ~-5 ~1 ~3 slot.container 11 sponge 8
replaceitem block ~-5 ~1 ~3 slot.container 12 cooked_salmon 17
replaceitem block ~-5 ~1 ~3 slot.container 13 gold_ingot 14
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_ingot 8
loot insert ~-5 ~1 ~3 loot "rsf/frozen_ocean"
summon stray ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon elder_guardian ~1 ~1 ~1
summon squid ~0 ~-4 ~0
