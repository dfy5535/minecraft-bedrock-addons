# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2894/4224 | 主题内编号: b078/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·下沉祭池图腾柱群 (frozen_ocean_totem_sunken_ritual_pool)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 prismarine [] replace water
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 prismarine [] replace air
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 prismarine_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_ice []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 prismarine_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 dark_prismarine []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 packed_ice []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 sea_lantern []
setblock ~-4 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-4 ~3 slot.container 0 prismarine_shard 21
replaceitem block ~-4 ~-4 ~3 slot.container 1 prismarine_crystals 18
replaceitem block ~-4 ~-4 ~3 slot.container 2 nautilus_shell 10
replaceitem block ~-4 ~-4 ~3 slot.container 3 bone 10
replaceitem block ~-4 ~-4 ~3 slot.container 4 rotten_flesh 13
replaceitem block ~-4 ~-4 ~3 slot.container 5 wet_sponge 6
replaceitem block ~-4 ~-4 ~3 slot.container 9 golden_apple 6
replaceitem block ~-4 ~-4 ~3 slot.container 10 sea_lantern 11
replaceitem block ~-4 ~-4 ~3 slot.container 11 heart_of_the_sea 7
replaceitem block ~-4 ~-4 ~3 slot.container 12 blue_ice 12
replaceitem block ~-4 ~-4 ~3 slot.container 13 sponge 5
replaceitem block ~-4 ~-4 ~3 slot.container 14 cooked_salmon 14
loot insert ~-4 ~-4 ~3 loot "rsf/frozen_ocean"
loot insert ~-4 ~-4 ~3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 prismarine []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 dark_prismarine []
fill ~0 ~1 ~-5 ~0 ~2 ~5 dark_prismarine []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 sea_lantern []
setblock ~-6 ~10 ~-5 sea_lantern []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 sea_lantern []
setblock ~-6 ~10 ~5 sea_lantern []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 sea_lantern []
setblock ~6 ~10 ~-5 sea_lantern []
fill ~6 ~7 ~5 ~6 ~9 ~5 sea_lantern []
setblock ~6 ~10 ~5 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 packed_ice []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 sea_lantern []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 sea_lantern []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~0 ~0 ~8 ~0 ~6 ~8 dark_prismarine []
setblock ~0 ~7 ~8 blue_ice []
setblock ~0 ~8 ~8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 copper_ingot 14
replaceitem block ~-5 ~1 ~3 slot.container 1 trident 8
replaceitem block ~-5 ~1 ~3 slot.container 2 prismarine_shard 16
replaceitem block ~-5 ~1 ~3 slot.container 3 prismarine_crystals 13
replaceitem block ~-5 ~1 ~3 slot.container 4 nautilus_shell 5
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 13
replaceitem block ~-5 ~1 ~3 slot.container 9 sponge 7
replaceitem block ~-5 ~1 ~3 slot.container 10 cooked_salmon 16
replaceitem block ~-5 ~1 ~3 slot.container 11 gold_ingot 13
replaceitem block ~-5 ~1 ~3 slot.container 12 iron_ingot 14
replaceitem block ~-5 ~1 ~3 slot.container 13 emerald 4
replaceitem block ~-5 ~1 ~3 slot.container 14 diamond 3
loot insert ~-5 ~1 ~3 loot "rsf/frozen_ocean"
summon stray ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon elder_guardian ~1 ~1 ~1
summon squid ~0 ~-4 ~0
