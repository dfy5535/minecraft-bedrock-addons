# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2857/4224 | 主题内编号: b041/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·八角看台古罗马斗技场 (frozen_ocean_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 prismarine []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_ice []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 stone_bricks []
fill ~-6 ~-4 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 sponge []
setblock ~-5 ~-4 ~-4 sea_lantern []
setblock ~5 ~-4 ~4 sea_lantern []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 prismarine_crystals 18
replaceitem block ~0 ~-2 ~4 slot.container 1 nautilus_shell 10
replaceitem block ~0 ~-2 ~4 slot.container 2 bone 10
replaceitem block ~0 ~-2 ~4 slot.container 3 rotten_flesh 13
replaceitem block ~0 ~-2 ~4 slot.container 4 wet_sponge 6
replaceitem block ~0 ~-2 ~4 slot.container 5 copper_ingot 11
replaceitem block ~0 ~-2 ~4 slot.container 9 cooked_salmon 17
replaceitem block ~0 ~-2 ~4 slot.container 10 gold_ingot 14
replaceitem block ~0 ~-2 ~4 slot.container 11 iron_ingot 8
replaceitem block ~0 ~-2 ~4 slot.container 12 emerald 5
replaceitem block ~0 ~-2 ~4 slot.container 13 diamond 4
replaceitem block ~0 ~-2 ~4 slot.container 14 golden_apple 5
loot insert ~0 ~-2 ~4 loot "rsf/frozen_ocean"
loot insert ~0 ~-2 ~4 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 stone_bricks []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~8 ~-6 air []
fill ~7 ~1 ~-6 ~7 ~8 ~-6 air []
fill ~-7 ~1 ~6 ~-7 ~8 ~6 air []
fill ~7 ~1 ~6 ~7 ~8 ~6 air []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 sea_lantern []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 sea_lantern []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 sea_lantern []
fill ~6 ~1 ~5 ~6 ~7 ~5 sea_lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-6 ~-7 ~9 ~-6 sea_lantern []
setblock ~-7 ~10 ~-6 sea_lantern []
fill ~-7 ~7 ~6 ~-7 ~9 ~6 sea_lantern []
setblock ~-7 ~10 ~6 sea_lantern []
fill ~7 ~7 ~-6 ~7 ~9 ~-6 sea_lantern []
setblock ~7 ~10 ~-6 sea_lantern []
fill ~7 ~7 ~6 ~7 ~9 ~6 sea_lantern []
setblock ~7 ~10 ~6 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~5 ~-8 sea_lantern []
setblock ~-9 ~6 ~-8 sea_lantern []
fill ~-9 ~0 ~8 ~-9 ~5 ~8 sea_lantern []
setblock ~-9 ~6 ~8 sea_lantern []
fill ~9 ~0 ~-8 ~9 ~5 ~-8 sea_lantern []
setblock ~9 ~6 ~-8 sea_lantern []
fill ~9 ~0 ~8 ~9 ~5 ~8 sea_lantern []
setblock ~9 ~6 ~8 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 10x8x6) ---
fill ~2 ~0 ~8 ~2 ~9 ~8 dark_prismarine []
setblock ~2 ~10 ~8 blue_ice []
setblock ~2 ~11 ~8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 prismarine_crystals 13
replaceitem block ~6 ~1 ~4 slot.container 1 nautilus_shell 5
replaceitem block ~6 ~1 ~4 slot.container 2 bone 13
replaceitem block ~6 ~1 ~4 slot.container 3 rotten_flesh 16
replaceitem block ~6 ~1 ~4 slot.container 4 wet_sponge 9
replaceitem block ~6 ~1 ~4 slot.container 5 copper_ingot 14
replaceitem block ~6 ~1 ~4 slot.container 9 blue_ice 13
replaceitem block ~6 ~1 ~4 slot.container 10 sponge 6
replaceitem block ~6 ~1 ~4 slot.container 11 cooked_salmon 15
replaceitem block ~6 ~1 ~4 slot.container 12 gold_ingot 12
replaceitem block ~6 ~1 ~4 slot.container 13 iron_ingot 13
replaceitem block ~6 ~1 ~4 slot.container 14 emerald 10
loot insert ~6 ~1 ~4 loot "rsf/frozen_ocean"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 bone 16
replaceitem block ~-6 ~1 ~5 slot.container 1 rotten_flesh 19
replaceitem block ~-6 ~1 ~5 slot.container 2 wet_sponge 4
replaceitem block ~-6 ~1 ~5 slot.container 3 copper_ingot 9
replaceitem block ~-6 ~1 ~5 slot.container 4 trident 3
replaceitem block ~-6 ~1 ~5 slot.container 5 prismarine_shard 19
replaceitem block ~-6 ~1 ~5 slot.container 9 blue_ice 18
replaceitem block ~-6 ~1 ~5 slot.container 10 sponge 4
replaceitem block ~-6 ~1 ~5 slot.container 11 cooked_salmon 13
replaceitem block ~-6 ~1 ~5 slot.container 12 gold_ingot 10
replaceitem block ~-6 ~1 ~5 slot.container 13 iron_ingot 11
replaceitem block ~-6 ~1 ~5 slot.container 14 emerald 8
loot insert ~-6 ~1 ~5 loot "rsf/frozen_ocean"
loot insert ~-6 ~1 ~5 loot "chests/shipwrecktreasure"
summon guardian ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
