# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2834/4224 | 主题内编号: b018/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·L型转角领主秘宝屋 (frozen_ocean_chamber_l_wing_manor)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[trial_pit] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 prismarine [] replace water
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 prismarine [] replace air
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 prismarine_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_ice []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 prismarine_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 dark_prismarine []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 blue_ice []
setblock ~-4 ~-5 ~-3 sea_lantern []
setblock ~4 ~-5 ~3 sea_lantern []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 bone 10
replaceitem block ~0 ~-3 ~3 slot.container 1 rotten_flesh 13
replaceitem block ~0 ~-3 ~3 slot.container 2 wet_sponge 6
replaceitem block ~0 ~-3 ~3 slot.container 3 copper_ingot 11
replaceitem block ~0 ~-3 ~3 slot.container 4 trident 5
replaceitem block ~0 ~-3 ~3 slot.container 5 prismarine_shard 21
replaceitem block ~0 ~-3 ~3 slot.container 9 cooked_salmon 15
replaceitem block ~0 ~-3 ~3 slot.container 10 gold_ingot 12
replaceitem block ~0 ~-3 ~3 slot.container 11 iron_ingot 13
replaceitem block ~0 ~-3 ~3 slot.container 12 emerald 10
replaceitem block ~0 ~-3 ~3 slot.container 13 diamond 2
replaceitem block ~0 ~-3 ~3 slot.container 14 golden_apple 3
loot insert ~0 ~-3 ~3 loot "rsf/frozen_ocean"
loot insert ~0 ~-3 ~3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~7 ~5 prismarine []
fill ~-6 ~1 ~0 ~6 ~6 ~5 dark_prismarine []
fill ~-5 ~1 ~-4 ~-1 ~6 ~4 air []
fill ~-1 ~1 ~1 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-6 ~-7 ~8 ~6 prismarine_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-6 ~7 ~8 ~6 prismarine_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 prismarine_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 prismarine_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~5 ~9 ~5 prismarine_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 dark_prismarine []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 prismarine_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~0 ~0 ~8 ~0 ~6 ~8 dark_prismarine []
setblock ~0 ~7 ~8 blue_ice []
setblock ~0 ~8 ~8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 nautilus_shell 5
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 13
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 16
replaceitem block ~-5 ~1 ~3 slot.container 3 wet_sponge 9
replaceitem block ~-5 ~1 ~3 slot.container 4 copper_ingot 14
replaceitem block ~-5 ~1 ~3 slot.container 5 trident 8
replaceitem block ~-5 ~1 ~3 slot.container 9 sponge 10
replaceitem block ~-5 ~1 ~3 slot.container 10 cooked_salmon 12
replaceitem block ~-5 ~1 ~3 slot.container 11 gold_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 12 iron_ingot 10
replaceitem block ~-5 ~1 ~3 slot.container 13 emerald 7
replaceitem block ~-5 ~1 ~3 slot.container 14 diamond 6
loot insert ~-5 ~1 ~3 loot "rsf/frozen_ocean"
summon stray ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon elder_guardian ~1 ~1 ~1
summon squid ~0 ~2 ~0
