# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2832/4224 | 主题内编号: b016/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·要塞地底重装暗牢 (frozen_ocean_dungeon_citadel_undercroft)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 5格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 prismarine_bricks [] replace water
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 prismarine_bricks [] replace air
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 prismarine_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 dark_prismarine []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 prismarine_bricks []
fill ~-6 ~-6 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-6 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-6 ~0 sea_lantern []
setblock ~5 ~-6 ~0 sea_lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 copper_ingot 11
replaceitem block ~0 ~-4 ~4 slot.container 1 trident 5
replaceitem block ~0 ~-4 ~4 slot.container 2 prismarine_shard 21
replaceitem block ~0 ~-4 ~4 slot.container 3 prismarine_crystals 18
replaceitem block ~0 ~-4 ~4 slot.container 4 nautilus_shell 10
replaceitem block ~0 ~-4 ~4 slot.container 5 bone 10
replaceitem block ~0 ~-4 ~4 slot.container 9 golden_apple 5
replaceitem block ~0 ~-4 ~4 slot.container 10 sea_lantern 10
replaceitem block ~0 ~-4 ~4 slot.container 11 heart_of_the_sea 6
replaceitem block ~0 ~-4 ~4 slot.container 12 blue_ice 18
replaceitem block ~0 ~-4 ~4 slot.container 13 sponge 4
replaceitem block ~0 ~-4 ~4 slot.container 14 cooked_salmon 13
loot insert ~0 ~-4 ~4 loot "rsf/frozen_ocean"
loot insert ~0 ~-4 ~4 loot "chests/shipwrecktreasure"
setblock ~0 ~-4 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-4 slot.container 0 copper_ingot 9
replaceitem block ~0 ~-4 ~-4 slot.container 1 trident 3
replaceitem block ~0 ~-4 ~-4 slot.container 2 prismarine_shard 19
replaceitem block ~0 ~-4 ~-4 slot.container 3 prismarine_crystals 16
replaceitem block ~0 ~-4 ~-4 slot.container 4 nautilus_shell 8
replaceitem block ~0 ~-4 ~-4 slot.container 5 bone 16
replaceitem block ~0 ~-4 ~-4 slot.container 9 golden_apple 4
replaceitem block ~0 ~-4 ~-4 slot.container 10 sea_lantern 9
replaceitem block ~0 ~-4 ~-4 slot.container 11 heart_of_the_sea 5
replaceitem block ~0 ~-4 ~-4 slot.container 12 blue_ice 17
replaceitem block ~0 ~-4 ~-4 slot.container 13 sponge 10
replaceitem block ~0 ~-4 ~-4 slot.container 14 cooked_salmon 12
loot insert ~0 ~-4 ~-4 loot "rsf/frozen_ocean"
loot insert ~0 ~-4 ~-4 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 prismarine_bricks []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~9 ~-5 blue_ice []
setblock ~-7 ~10 ~-6 sea_lantern []
fill ~-7 ~1 ~5 ~-6 ~9 ~6 blue_ice []
setblock ~-7 ~10 ~5 sea_lantern []
fill ~6 ~1 ~-6 ~7 ~9 ~-5 blue_ice []
setblock ~6 ~10 ~-6 sea_lantern []
fill ~6 ~1 ~5 ~7 ~9 ~6 blue_ice []
setblock ~6 ~10 ~5 sea_lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 blue_ice []
fill ~-7 ~8 ~-6 ~7 ~8 ~6 cobblestone_wall []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 air []
setblock ~-7 ~8 ~-6 sea_lantern []
setblock ~-7 ~9 ~-6 sea_lantern []
setblock ~-7 ~8 ~6 sea_lantern []
setblock ~-7 ~9 ~6 sea_lantern []
setblock ~7 ~8 ~-6 sea_lantern []
setblock ~7 ~9 ~-6 sea_lantern []
setblock ~7 ~8 ~6 sea_lantern []
setblock ~7 ~9 ~6 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 cobblestone_wall []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 10x7x6) ---
fill ~-2 ~0 ~7 ~-2 ~9 ~7 dark_prismarine []
setblock ~-2 ~10 ~7 blue_ice []
setblock ~-2 ~11 ~7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 sea_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 prismarine_shard 16
replaceitem block ~-6 ~1 ~4 slot.container 1 prismarine_crystals 13
replaceitem block ~-6 ~1 ~4 slot.container 2 nautilus_shell 5
replaceitem block ~-6 ~1 ~4 slot.container 3 bone 13
replaceitem block ~-6 ~1 ~4 slot.container 4 rotten_flesh 16
replaceitem block ~-6 ~1 ~4 slot.container 5 wet_sponge 9
replaceitem block ~-6 ~1 ~4 slot.container 9 emerald 8
replaceitem block ~-6 ~1 ~4 slot.container 10 diamond 7
replaceitem block ~-6 ~1 ~4 slot.container 11 golden_apple 8
replaceitem block ~-6 ~1 ~4 slot.container 12 sea_lantern 6
replaceitem block ~-6 ~1 ~4 slot.container 13 heart_of_the_sea 2
replaceitem block ~-6 ~1 ~4 slot.container 14 blue_ice 14
loot insert ~-6 ~1 ~4 loot "rsf/frozen_ocean"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
