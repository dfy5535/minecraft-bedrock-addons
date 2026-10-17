# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2864/4224 | 主题内编号: b048/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·阶梯王座巅峰试炼台 (frozen_ocean_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 prismarine_bricks [] replace water
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 prismarine_bricks [] replace air
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 prismarine_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 dark_prismarine []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 blue_ice []
setblock ~0 ~-6 ~0 sponge []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 sea_lantern []
setblock ~2 ~-5 ~0 sea_lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 nautilus_shell 10
replaceitem block ~0 ~-3 ~-4 slot.container 1 bone 10
replaceitem block ~0 ~-3 ~-4 slot.container 2 rotten_flesh 13
replaceitem block ~0 ~-3 ~-4 slot.container 3 wet_sponge 6
replaceitem block ~0 ~-3 ~-4 slot.container 4 copper_ingot 11
replaceitem block ~0 ~-3 ~-4 slot.container 5 trident 5
replaceitem block ~0 ~-3 ~-4 slot.container 9 golden_apple 6
replaceitem block ~0 ~-3 ~-4 slot.container 10 sea_lantern 11
replaceitem block ~0 ~-3 ~-4 slot.container 11 heart_of_the_sea 7
replaceitem block ~0 ~-3 ~-4 slot.container 12 blue_ice 12
replaceitem block ~0 ~-3 ~-4 slot.container 13 sponge 5
replaceitem block ~0 ~-3 ~-4 slot.container 14 cooked_salmon 14
loot insert ~0 ~-3 ~-4 loot "rsf/frozen_ocean"
loot insert ~0 ~-3 ~-4 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 prismarine_bricks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 blue_ice []
fill ~-5 ~5 ~-4 ~5 ~8 ~4 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 prismarine_bricks_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~8 ~-6 ~-7 ~10 ~-6 sea_lantern []
setblock ~-7 ~11 ~-6 sea_lantern []
fill ~-7 ~8 ~6 ~-7 ~10 ~6 sea_lantern []
setblock ~-7 ~11 ~6 sea_lantern []
fill ~7 ~8 ~-6 ~7 ~10 ~-6 sea_lantern []
setblock ~7 ~11 ~-6 sea_lantern []
fill ~7 ~8 ~6 ~7 ~10 ~6 sea_lantern []
setblock ~7 ~11 ~6 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~8 ~-2 sea_lantern []
fill ~-6 ~0 ~2 ~-6 ~8 ~2 sea_lantern []
fill ~6 ~0 ~-2 ~6 ~8 ~-2 sea_lantern []
fill ~6 ~0 ~2 ~6 ~8 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 10x9x3) ---
fill ~2 ~0 ~9 ~2 ~6 ~9 dark_prismarine []
setblock ~2 ~7 ~9 blue_ice []
setblock ~2 ~8 ~9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~7 ~0 sea_lantern []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 sea_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 prismarine_shard 16
replaceitem block ~-6 ~1 ~4 slot.container 1 prismarine_crystals 13
replaceitem block ~-6 ~1 ~4 slot.container 2 nautilus_shell 5
replaceitem block ~-6 ~1 ~4 slot.container 3 bone 13
replaceitem block ~-6 ~1 ~4 slot.container 4 rotten_flesh 16
replaceitem block ~-6 ~1 ~4 slot.container 5 wet_sponge 9
replaceitem block ~-6 ~1 ~4 slot.container 9 sponge 5
replaceitem block ~-6 ~1 ~4 slot.container 10 cooked_salmon 14
replaceitem block ~-6 ~1 ~4 slot.container 11 gold_ingot 11
replaceitem block ~-6 ~1 ~4 slot.container 12 iron_ingot 12
replaceitem block ~-6 ~1 ~4 slot.container 13 emerald 9
replaceitem block ~-6 ~1 ~4 slot.container 14 diamond 8
loot insert ~-6 ~1 ~4 loot "rsf/frozen_ocean"
summon stray ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon elder_guardian ~1 ~1 ~1
summon squid ~0 ~-3 ~0
