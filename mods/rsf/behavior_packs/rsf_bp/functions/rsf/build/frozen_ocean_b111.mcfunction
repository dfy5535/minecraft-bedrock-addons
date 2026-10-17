# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2927/4224 | 主题内编号: b111/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·地下禁忌书库与炼药室 (frozen_ocean_arcane_sunken_archive)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 dark_prismarine [] replace water
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 dark_prismarine [] replace air
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 dark_prismarine_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 dark_prismarine []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 dark_prismarine []
fill ~-5 ~-5 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-5 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-5 ~0 sea_lantern []
setblock ~4 ~-5 ~0 sea_lantern []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 wet_sponge 6
replaceitem block ~0 ~-3 ~3 slot.container 1 copper_ingot 11
replaceitem block ~0 ~-3 ~3 slot.container 2 trident 5
replaceitem block ~0 ~-3 ~3 slot.container 3 prismarine_shard 21
replaceitem block ~0 ~-3 ~3 slot.container 4 prismarine_crystals 18
replaceitem block ~0 ~-3 ~3 slot.container 5 nautilus_shell 10
replaceitem block ~0 ~-3 ~3 slot.container 9 cooked_salmon 12
replaceitem block ~0 ~-3 ~3 slot.container 10 gold_ingot 9
replaceitem block ~0 ~-3 ~3 slot.container 11 iron_ingot 10
replaceitem block ~0 ~-3 ~3 slot.container 12 emerald 7
replaceitem block ~0 ~-3 ~3 slot.container 13 diamond 6
replaceitem block ~0 ~-3 ~3 slot.container 14 golden_apple 7
loot insert ~0 ~-3 ~3 loot "rsf/frozen_ocean"
loot insert ~0 ~-3 ~3 loot "chests/shipwrecktreasure"
setblock ~0 ~-3 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-3 slot.container 0 wet_sponge 4
replaceitem block ~0 ~-3 ~-3 slot.container 1 copper_ingot 9
replaceitem block ~0 ~-3 ~-3 slot.container 2 trident 3
replaceitem block ~0 ~-3 ~-3 slot.container 3 prismarine_shard 19
replaceitem block ~0 ~-3 ~-3 slot.container 4 prismarine_crystals 16
replaceitem block ~0 ~-3 ~-3 slot.container 5 nautilus_shell 8
replaceitem block ~0 ~-3 ~-3 slot.container 9 cooked_salmon 18
replaceitem block ~0 ~-3 ~-3 slot.container 10 gold_ingot 8
replaceitem block ~0 ~-3 ~-3 slot.container 11 iron_ingot 9
replaceitem block ~0 ~-3 ~-3 slot.container 12 emerald 6
replaceitem block ~0 ~-3 ~-3 slot.container 13 diamond 5
replaceitem block ~0 ~-3 ~-3 slot.container 14 golden_apple 6
loot insert ~0 ~-3 ~-3 loot "rsf/frozen_ocean"
loot insert ~0 ~-3 ~-3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 dark_prismarine []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 packed_ice []
fill ~0 ~1 ~-5 ~0 ~2 ~5 packed_ice []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 packed_ice []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 prismarine_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 blue_ice []
setblock ~0 ~11 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~-3 ~0 ~8 ~-3 ~9 ~8 dark_prismarine []
setblock ~-3 ~10 ~8 blue_ice []
setblock ~-3 ~11 ~8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-4 ~1 ~3 crafting_table []
setblock ~-3 ~1 ~3 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 trident 8
replaceitem block ~5 ~1 ~3 slot.container 1 prismarine_shard 16
replaceitem block ~5 ~1 ~3 slot.container 2 prismarine_crystals 13
replaceitem block ~5 ~1 ~3 slot.container 3 nautilus_shell 5
replaceitem block ~5 ~1 ~3 slot.container 4 bone 13
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 16
replaceitem block ~5 ~1 ~3 slot.container 9 blue_ice 13
replaceitem block ~5 ~1 ~3 slot.container 10 sponge 6
replaceitem block ~5 ~1 ~3 slot.container 11 cooked_salmon 15
replaceitem block ~5 ~1 ~3 slot.container 12 gold_ingot 12
replaceitem block ~5 ~1 ~3 slot.container 13 iron_ingot 13
replaceitem block ~5 ~1 ~3 slot.container 14 emerald 10
loot insert ~5 ~1 ~3 loot "rsf/frozen_ocean"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 prismarine_crystals 16
replaceitem block ~-5 ~1 ~4 slot.container 1 nautilus_shell 8
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 16
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 19
replaceitem block ~-5 ~1 ~4 slot.container 4 wet_sponge 4
replaceitem block ~-5 ~1 ~4 slot.container 5 copper_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 9 blue_ice 18
replaceitem block ~-5 ~1 ~4 slot.container 10 sponge 4
replaceitem block ~-5 ~1 ~4 slot.container 11 cooked_salmon 13
replaceitem block ~-5 ~1 ~4 slot.container 12 gold_ingot 10
replaceitem block ~-5 ~1 ~4 slot.container 13 iron_ingot 11
replaceitem block ~-5 ~1 ~4 slot.container 14 emerald 8
loot insert ~-5 ~1 ~4 loot "rsf/frozen_ocean"
loot insert ~-5 ~1 ~4 loot "chests/shipwrecktreasure"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon stray ~0 ~-3 ~0
