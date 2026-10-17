# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2888/4224 | 主题内编号: b072/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·L型古商会废墟暗窖 (frozen_ocean_ruin_l_guildhall)
# 建筑构造: 主体[l_compound] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 prismarine_bricks [] replace water
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 prismarine_bricks [] replace air
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 prismarine_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 dark_prismarine []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 sea_lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 rotten_flesh 13
replaceitem block ~4 ~-3 ~3 slot.container 1 wet_sponge 6
replaceitem block ~4 ~-3 ~3 slot.container 2 copper_ingot 11
replaceitem block ~4 ~-3 ~3 slot.container 3 trident 5
replaceitem block ~4 ~-3 ~3 slot.container 4 prismarine_shard 21
replaceitem block ~4 ~-3 ~3 slot.container 5 prismarine_crystals 18
replaceitem block ~4 ~-3 ~3 slot.container 9 golden_apple 2
replaceitem block ~4 ~-3 ~3 slot.container 10 sea_lantern 7
replaceitem block ~4 ~-3 ~3 slot.container 11 heart_of_the_sea 3
replaceitem block ~4 ~-3 ~3 slot.container 12 blue_ice 15
replaceitem block ~4 ~-3 ~3 slot.container 13 sponge 8
replaceitem block ~4 ~-3 ~3 slot.container 14 cooked_salmon 17
loot insert ~4 ~-3 ~3 loot "rsf/frozen_ocean"
loot insert ~4 ~-3 ~3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~7 ~5 prismarine_bricks []
fill ~-6 ~1 ~0 ~6 ~6 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~-1 ~6 ~4 air []
fill ~-1 ~1 ~1 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 prismarine_brick_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 blue_ice []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 sea_lantern []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 sea_lantern []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 prismarine_brick_slab []
setblock ~0 ~3 ~-7 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~0 ~0 ~8 ~0 ~5 ~8 dark_prismarine []
setblock ~0 ~6 ~8 blue_ice []
setblock ~0 ~7 ~8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 sea_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 prismarine_shard 16
replaceitem block ~-5 ~1 ~3 slot.container 1 prismarine_crystals 13
replaceitem block ~-5 ~1 ~3 slot.container 2 nautilus_shell 5
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 13
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 16
replaceitem block ~-5 ~1 ~3 slot.container 5 wet_sponge 9
replaceitem block ~-5 ~1 ~3 slot.container 9 gold_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_ingot 13
replaceitem block ~-5 ~1 ~3 slot.container 11 emerald 10
replaceitem block ~-5 ~1 ~3 slot.container 12 diamond 2
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 3
replaceitem block ~-5 ~1 ~3 slot.container 14 sea_lantern 8
loot insert ~-5 ~1 ~3 loot "rsf/frozen_ocean"
summon stray ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon elder_guardian ~1 ~1 ~1
summon squid ~0 ~-3 ~0
