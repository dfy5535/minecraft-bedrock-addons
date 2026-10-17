# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2848/4224 | 主题内编号: b032/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·断顶残垣古哨塔 (frozen_ocean_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 11x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 prismarine_bricks [] replace water
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 prismarine_bricks [] replace air
fill ~-5 ~1 ~-5 ~5 ~12 ~5 air []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 prismarine_brick_slab [] replace air
fill ~-4 ~0 ~-4 ~4 ~0 ~4 dark_prismarine []
fill ~-3 ~0 ~-3 ~3 ~0 ~3 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 stone_bricks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 blue_ice []
setblock ~0 ~-6 ~0 sponge []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 sea_lantern []
setblock ~2 ~-5 ~0 sea_lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 nautilus_shell 10
replaceitem block ~0 ~-3 ~-2 slot.container 1 bone 10
replaceitem block ~0 ~-3 ~-2 slot.container 2 rotten_flesh 13
replaceitem block ~0 ~-3 ~-2 slot.container 3 wet_sponge 6
replaceitem block ~0 ~-3 ~-2 slot.container 4 copper_ingot 11
replaceitem block ~0 ~-3 ~-2 slot.container 5 trident 5
replaceitem block ~0 ~-3 ~-2 slot.container 9 heart_of_the_sea 3
replaceitem block ~0 ~-3 ~-2 slot.container 10 blue_ice 15
replaceitem block ~0 ~-3 ~-2 slot.container 11 sponge 8
replaceitem block ~0 ~-3 ~-2 slot.container 12 cooked_salmon 17
replaceitem block ~0 ~-3 ~-2 slot.container 13 gold_ingot 14
replaceitem block ~0 ~-3 ~-2 slot.container 14 iron_ingot 8
loot insert ~0 ~-3 ~-2 loot "rsf/frozen_ocean"
loot insert ~0 ~-3 ~-2 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-4 ~4 ~10 ~4 prismarine_bricks []
fill ~-3 ~1 ~-3 ~3 ~9 ~3 air []
fill ~-4 ~1 ~-4 ~-4 ~10 ~-4 sea_lantern []
fill ~-4 ~1 ~4 ~-4 ~10 ~4 sea_lantern []
fill ~4 ~1 ~-4 ~4 ~10 ~-4 sea_lantern []
fill ~4 ~1 ~4 ~4 ~10 ~4 sea_lantern []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~10 ~-4 ~4 ~10 ~4 prismarine_brick_slab []
fill ~-1 ~9 ~-1 ~2 ~10 ~2 air []
fill ~-4 ~9 ~-1 ~-4 ~10 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~9 ~-2 sea_lantern []
fill ~-5 ~0 ~2 ~-5 ~9 ~2 sea_lantern []
fill ~5 ~0 ~-2 ~5 ~9 ~-2 sea_lantern []
fill ~5 ~0 ~2 ~5 ~9 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-1 ~0 ~6 ~-1 ~5 ~6 dark_prismarine []
setblock ~-1 ~6 ~6 blue_ice []
setblock ~-1 ~7 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 prismarine_shard 16
replaceitem block ~-3 ~1 ~2 slot.container 1 prismarine_crystals 13
replaceitem block ~-3 ~1 ~2 slot.container 2 nautilus_shell 5
replaceitem block ~-3 ~1 ~2 slot.container 3 bone 13
replaceitem block ~-3 ~1 ~2 slot.container 4 rotten_flesh 16
replaceitem block ~-3 ~1 ~2 slot.container 5 wet_sponge 9
replaceitem block ~-3 ~1 ~2 slot.container 9 gold_ingot 14
replaceitem block ~-3 ~1 ~2 slot.container 10 iron_ingot 8
replaceitem block ~-3 ~1 ~2 slot.container 11 emerald 5
replaceitem block ~-3 ~1 ~2 slot.container 12 diamond 4
replaceitem block ~-3 ~1 ~2 slot.container 13 golden_apple 5
replaceitem block ~-3 ~1 ~2 slot.container 14 sea_lantern 10
loot insert ~-3 ~1 ~2 loot "rsf/frozen_ocean"
summon elder_guardian ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
