# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2926/4224 | 主题内编号: b110/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·双子附魔与酿造实验楼 (frozen_ocean_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 17x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 prismarine [] replace water
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 prismarine [] replace air
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 prismarine_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 packed_ice []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 prismarine_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 dark_prismarine []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 sea_lantern []
setblock ~5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~2 slot.container 0 nautilus_shell 10
replaceitem block ~5 ~-3 ~2 slot.container 1 bone 10
replaceitem block ~5 ~-3 ~2 slot.container 2 rotten_flesh 13
replaceitem block ~5 ~-3 ~2 slot.container 3 wet_sponge 6
replaceitem block ~5 ~-3 ~2 slot.container 4 copper_ingot 11
replaceitem block ~5 ~-3 ~2 slot.container 5 trident 5
replaceitem block ~5 ~-3 ~2 slot.container 9 sponge 7
replaceitem block ~5 ~-3 ~2 slot.container 10 cooked_salmon 16
replaceitem block ~5 ~-3 ~2 slot.container 11 gold_ingot 13
replaceitem block ~5 ~-3 ~2 slot.container 12 iron_ingot 14
replaceitem block ~5 ~-3 ~2 slot.container 13 emerald 4
replaceitem block ~5 ~-3 ~2 slot.container 14 diamond 3
loot insert ~5 ~-3 ~2 loot "rsf/frozen_ocean"
loot insert ~5 ~-3 ~2 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~9 ~4 prismarine []
fill ~2 ~1 ~-4 ~7 ~9 ~4 prismarine []
fill ~-6 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~6 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 dark_prismarine []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~8 ~-5 ~8 ~8 ~5 prismarine_slab []
fill ~-6 ~9 ~-3 ~6 ~10 ~3 dark_prismarine []
fill ~-7 ~11 ~-4 ~7 ~11 ~4 dark_prismarine_slab []
setblock ~0 ~12 ~0 diamond_block []
setblock ~0 ~13 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 dark_prismarine []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 sea_lantern []
setblock ~2 ~4 ~-7 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 10x6x5) ---
fill ~1 ~0 ~6 ~1 ~8 ~6 dark_prismarine []
setblock ~1 ~9 ~6 blue_ice []
setblock ~1 ~10 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 sea_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 sponge []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 copper_ingot 14
replaceitem block ~-6 ~1 ~2 slot.container 1 trident 8
replaceitem block ~-6 ~1 ~2 slot.container 2 prismarine_shard 16
replaceitem block ~-6 ~1 ~2 slot.container 3 prismarine_crystals 13
replaceitem block ~-6 ~1 ~2 slot.container 4 nautilus_shell 5
replaceitem block ~-6 ~1 ~2 slot.container 5 bone 13
replaceitem block ~-6 ~1 ~2 slot.container 9 golden_apple 2
replaceitem block ~-6 ~1 ~2 slot.container 10 sea_lantern 7
replaceitem block ~-6 ~1 ~2 slot.container 11 heart_of_the_sea 3
replaceitem block ~-6 ~1 ~2 slot.container 12 blue_ice 15
replaceitem block ~-6 ~1 ~2 slot.container 13 sponge 8
replaceitem block ~-6 ~1 ~2 slot.container 14 cooked_salmon 17
loot insert ~-6 ~1 ~2 loot "rsf/frozen_ocean"
summon elder_guardian ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
