# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2868/4224 | 主题内编号: b052/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·重檐行商旅店客栈 (frozen_ocean_outpost_caravan_inn)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 prismarine_bricks [] replace water
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 prismarine_bricks [] replace air
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 prismarine_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 dark_prismarine []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 stone_bricks []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 sea_lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 prismarine_shard 21
replaceitem block ~4 ~-3 ~4 slot.container 1 prismarine_crystals 18
replaceitem block ~4 ~-3 ~4 slot.container 2 nautilus_shell 10
replaceitem block ~4 ~-3 ~4 slot.container 3 bone 10
replaceitem block ~4 ~-3 ~4 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~-3 ~4 slot.container 5 wet_sponge 6
replaceitem block ~4 ~-3 ~4 slot.container 9 golden_apple 3
replaceitem block ~4 ~-3 ~4 slot.container 10 sea_lantern 8
replaceitem block ~4 ~-3 ~4 slot.container 11 heart_of_the_sea 4
replaceitem block ~4 ~-3 ~4 slot.container 12 blue_ice 16
replaceitem block ~4 ~-3 ~4 slot.container 13 sponge 9
replaceitem block ~4 ~-3 ~4 slot.container 14 cooked_salmon 18
loot insert ~4 ~-3 ~4 loot "rsf/frozen_ocean"
loot insert ~4 ~-3 ~4 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-6 ~6 ~4 ~6 prismarine_bricks []
fill ~-5 ~1 ~-5 ~5 ~3 ~5 air []
fill ~-7 ~4 ~-7 ~7 ~4 ~7 prismarine_brick_slab []
fill ~-5 ~5 ~-5 ~5 ~8 ~5 stone_bricks []
fill ~-4 ~5 ~-4 ~4 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~5 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-7 ~7 ~8 ~7 prismarine_brick_slab []
fill ~-5 ~9 ~-5 ~5 ~10 ~5 stone_bricks []
fill ~-6 ~11 ~-6 ~6 ~11 ~6 stone_brick_slab []
setblock ~0 ~12 ~0 gold_block []
setblock ~0 ~13 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 blue_ice []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 sea_lantern []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 sea_lantern []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 prismarine_brick_slab []
setblock ~0 ~3 ~-8 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x7x2) ---
fill ~-2 ~0 ~7 ~-2 ~5 ~7 dark_prismarine []
setblock ~-2 ~6 ~7 blue_ice []
setblock ~-2 ~7 ~7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 rotten_flesh 16
replaceitem block ~-5 ~1 ~4 slot.container 1 wet_sponge 9
replaceitem block ~-5 ~1 ~4 slot.container 2 copper_ingot 14
replaceitem block ~-5 ~1 ~4 slot.container 3 trident 8
replaceitem block ~-5 ~1 ~4 slot.container 4 prismarine_shard 16
replaceitem block ~-5 ~1 ~4 slot.container 5 prismarine_crystals 13
replaceitem block ~-5 ~1 ~4 slot.container 9 gold_ingot 13
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_ingot 14
replaceitem block ~-5 ~1 ~4 slot.container 11 emerald 4
replaceitem block ~-5 ~1 ~4 slot.container 12 diamond 3
replaceitem block ~-5 ~1 ~4 slot.container 13 golden_apple 4
replaceitem block ~-5 ~1 ~4 slot.container 14 sea_lantern 9
loot insert ~-5 ~1 ~4 loot "rsf/frozen_ocean"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
