# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2841/4224 | 主题内编号: b025/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·雉堞女墙四方哨塔 (frozen_ocean_tower_battlement_watch)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 11x9 | 地上高度 11格 | 地下深度 2格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 stone_bricks [] replace water
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 stone_bricks [] replace air
fill ~-5 ~1 ~-4 ~5 ~13 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 prismarine []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 packed_ice []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-3 ~4 ~-1 ~3 packed_ice []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~11 ~3 stone_bricks []
fill ~-3 ~1 ~-2 ~3 ~10 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~11 ~-3 sea_lantern []
fill ~-4 ~1 ~3 ~-4 ~11 ~3 sea_lantern []
fill ~4 ~1 ~-3 ~4 ~11 ~-3 sea_lantern []
fill ~4 ~1 ~3 ~4 ~11 ~3 sea_lantern []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~11 ~-3 ~4 ~11 ~3 packed_ice []
fill ~-4 ~12 ~-3 ~4 ~12 ~3 cobblestone_wall []
fill ~-3 ~12 ~-2 ~3 ~12 ~2 air []
setblock ~-4 ~12 ~-3 sea_lantern []
setblock ~-4 ~13 ~-3 sea_lantern []
setblock ~-4 ~12 ~3 sea_lantern []
setblock ~-4 ~13 ~3 sea_lantern []
setblock ~4 ~12 ~-3 sea_lantern []
setblock ~4 ~13 ~-3 sea_lantern []
setblock ~4 ~12 ~3 sea_lantern []
setblock ~4 ~13 ~3 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-5 ~2 ~0 ~-4 packed_ice []
fill ~-2 ~1 ~-5 ~-2 ~3 ~-5 sea_lantern []
fill ~2 ~1 ~-5 ~2 ~3 ~-5 sea_lantern []
fill ~-2 ~4 ~-5 ~2 ~4 ~-4 stone_brick_slab []
setblock ~0 ~3 ~-5 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 7x4x5) ---
fill ~0 ~0 ~4 ~0 ~8 ~4 dark_prismarine []
setblock ~0 ~9 ~4 blue_ice []
setblock ~0 ~10 ~4 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 prismarine_crystals 13
replaceitem block ~3 ~1 ~1 slot.container 1 nautilus_shell 5
replaceitem block ~3 ~1 ~1 slot.container 2 bone 13
replaceitem block ~3 ~1 ~1 slot.container 3 rotten_flesh 16
replaceitem block ~3 ~1 ~1 slot.container 4 wet_sponge 9
replaceitem block ~3 ~1 ~1 slot.container 5 copper_ingot 14
replaceitem block ~3 ~1 ~1 slot.container 9 cooked_salmon 18
replaceitem block ~3 ~1 ~1 slot.container 10 gold_ingot 8
replaceitem block ~3 ~1 ~1 slot.container 11 iron_ingot 9
replaceitem block ~3 ~1 ~1 slot.container 12 emerald 6
replaceitem block ~3 ~1 ~1 slot.container 13 diamond 5
replaceitem block ~3 ~1 ~1 slot.container 14 golden_apple 6
loot insert ~3 ~1 ~1 loot "rsf/frozen_ocean"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 bone 16
replaceitem block ~-3 ~1 ~2 slot.container 1 rotten_flesh 19
replaceitem block ~-3 ~1 ~2 slot.container 2 wet_sponge 4
replaceitem block ~-3 ~1 ~2 slot.container 3 copper_ingot 9
replaceitem block ~-3 ~1 ~2 slot.container 4 trident 3
replaceitem block ~-3 ~1 ~2 slot.container 5 prismarine_shard 19
replaceitem block ~-3 ~1 ~2 slot.container 9 cooked_salmon 16
replaceitem block ~-3 ~1 ~2 slot.container 10 gold_ingot 13
replaceitem block ~-3 ~1 ~2 slot.container 11 iron_ingot 14
replaceitem block ~-3 ~1 ~2 slot.container 12 emerald 4
replaceitem block ~-3 ~1 ~2 slot.container 13 diamond 3
replaceitem block ~-3 ~1 ~2 slot.container 14 golden_apple 4
loot insert ~-3 ~1 ~2 loot "rsf/frozen_ocean"
loot insert ~-3 ~1 ~2 loot "chests/shipwrecktreasure"
summon polar_bear ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
