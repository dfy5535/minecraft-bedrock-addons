# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2821/4224 | 主题内编号: b005/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·下沉圣泉秘宝祭坛 (frozen_ocean_altar_sunken_well)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 prismarine []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 packed_ice []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 packed_ice []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 packed_ice []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 sea_lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 trident 5
replaceitem block ~-3 ~-3 ~2 slot.container 1 prismarine_shard 21
replaceitem block ~-3 ~-3 ~2 slot.container 2 prismarine_crystals 18
replaceitem block ~-3 ~-3 ~2 slot.container 3 nautilus_shell 10
replaceitem block ~-3 ~-3 ~2 slot.container 4 bone 10
replaceitem block ~-3 ~-3 ~2 slot.container 5 rotten_flesh 13
replaceitem block ~-3 ~-3 ~2 slot.container 9 sea_lantern 7
replaceitem block ~-3 ~-3 ~2 slot.container 10 heart_of_the_sea 3
replaceitem block ~-3 ~-3 ~2 slot.container 11 blue_ice 15
replaceitem block ~-3 ~-3 ~2 slot.container 12 sponge 8
replaceitem block ~-3 ~-3 ~2 slot.container 13 cooked_salmon 17
replaceitem block ~-3 ~-3 ~2 slot.container 14 gold_ingot 14
loot insert ~-3 ~-3 ~2 loot "rsf/frozen_ocean"
loot insert ~-3 ~-3 ~2 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 packed_ice []
fill ~0 ~1 ~-4 ~0 ~2 ~4 packed_ice []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~6 ~-4 ~-5 ~8 ~-4 sea_lantern []
setblock ~-5 ~9 ~-4 sea_lantern []
fill ~-5 ~6 ~4 ~-5 ~8 ~4 sea_lantern []
setblock ~-5 ~9 ~4 sea_lantern []
fill ~5 ~6 ~-4 ~5 ~8 ~-4 sea_lantern []
setblock ~5 ~9 ~-4 sea_lantern []
fill ~5 ~6 ~4 ~5 ~8 ~4 sea_lantern []
setblock ~5 ~9 ~4 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 prismarine []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 8x6x5) ---
fill ~2 ~0 ~6 ~2 ~8 ~6 dark_prismarine []
setblock ~2 ~9 ~6 blue_ice []
setblock ~2 ~10 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 sea_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 wet_sponge 9
replaceitem block ~4 ~1 ~2 slot.container 1 copper_ingot 14
replaceitem block ~4 ~1 ~2 slot.container 2 trident 8
replaceitem block ~4 ~1 ~2 slot.container 3 prismarine_shard 16
replaceitem block ~4 ~1 ~2 slot.container 4 prismarine_crystals 13
replaceitem block ~4 ~1 ~2 slot.container 5 nautilus_shell 5
replaceitem block ~4 ~1 ~2 slot.container 9 cooked_salmon 12
replaceitem block ~4 ~1 ~2 slot.container 10 gold_ingot 9
replaceitem block ~4 ~1 ~2 slot.container 11 iron_ingot 10
replaceitem block ~4 ~1 ~2 slot.container 12 emerald 7
replaceitem block ~4 ~1 ~2 slot.container 13 diamond 6
replaceitem block ~4 ~1 ~2 slot.container 14 golden_apple 7
loot insert ~4 ~1 ~2 loot "rsf/frozen_ocean"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 trident 3
replaceitem block ~-4 ~1 ~3 slot.container 1 prismarine_shard 19
replaceitem block ~-4 ~1 ~3 slot.container 2 prismarine_crystals 16
replaceitem block ~-4 ~1 ~3 slot.container 3 nautilus_shell 8
replaceitem block ~-4 ~1 ~3 slot.container 4 bone 16
replaceitem block ~-4 ~1 ~3 slot.container 5 rotten_flesh 19
replaceitem block ~-4 ~1 ~3 slot.container 9 cooked_salmon 17
replaceitem block ~-4 ~1 ~3 slot.container 10 gold_ingot 14
replaceitem block ~-4 ~1 ~3 slot.container 11 iron_ingot 8
replaceitem block ~-4 ~1 ~3 slot.container 12 emerald 5
replaceitem block ~-4 ~1 ~3 slot.container 13 diamond 4
replaceitem block ~-4 ~1 ~3 slot.container 14 golden_apple 5
loot insert ~-4 ~1 ~3 loot "rsf/frozen_ocean"
loot insert ~-4 ~1 ~3 loot "chests/shipwrecktreasure"
summon guardian ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
