# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2902/4224 | 主题内编号: b086/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·重装矿石金库碉堡 (frozen_ocean_mine_fortified_ore_vault)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 prismarine [] replace water
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 prismarine [] replace air
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 prismarine_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_ice []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 prismarine_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 dark_prismarine []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 sea_lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 nautilus_shell 10
replaceitem block ~4 ~-3 ~3 slot.container 1 bone 10
replaceitem block ~4 ~-3 ~3 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~-3 ~3 slot.container 3 wet_sponge 6
replaceitem block ~4 ~-3 ~3 slot.container 4 copper_ingot 11
replaceitem block ~4 ~-3 ~3 slot.container 5 trident 5
replaceitem block ~4 ~-3 ~3 slot.container 9 heart_of_the_sea 1
replaceitem block ~4 ~-3 ~3 slot.container 10 blue_ice 13
replaceitem block ~4 ~-3 ~3 slot.container 11 sponge 6
replaceitem block ~4 ~-3 ~3 slot.container 12 cooked_salmon 15
replaceitem block ~4 ~-3 ~3 slot.container 13 gold_ingot 12
replaceitem block ~4 ~-3 ~3 slot.container 14 iron_ingot 13
loot insert ~4 ~-3 ~3 loot "rsf/frozen_ocean"
loot insert ~4 ~-3 ~3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 prismarine []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~9 ~-4 dark_prismarine []
setblock ~-6 ~10 ~-5 sea_lantern []
fill ~-6 ~1 ~4 ~-5 ~9 ~5 dark_prismarine []
setblock ~-6 ~10 ~4 sea_lantern []
fill ~5 ~1 ~-5 ~6 ~9 ~-4 dark_prismarine []
setblock ~5 ~10 ~-5 sea_lantern []
fill ~5 ~1 ~4 ~6 ~9 ~5 dark_prismarine []
setblock ~5 ~10 ~4 sea_lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 dark_prismarine []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 cobblestone_wall []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 air []
setblock ~-6 ~8 ~-5 sea_lantern []
setblock ~-6 ~9 ~-5 sea_lantern []
setblock ~-6 ~8 ~5 sea_lantern []
setblock ~-6 ~9 ~5 sea_lantern []
setblock ~6 ~8 ~-5 sea_lantern []
setblock ~6 ~9 ~-5 sea_lantern []
setblock ~6 ~8 ~5 sea_lantern []
setblock ~6 ~9 ~5 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 dark_prismarine []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 sea_lantern []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 sea_lantern []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 prismarine_slab []
setblock ~0 ~3 ~-7 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x7x6) ---
fill ~2 ~0 ~7 ~2 ~9 ~7 dark_prismarine []
setblock ~2 ~10 ~7 blue_ice []
setblock ~2 ~11 ~7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 sea_lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 diamond_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 copper_ingot 14
replaceitem block ~-5 ~1 ~3 slot.container 1 trident 8
replaceitem block ~-5 ~1 ~3 slot.container 2 prismarine_shard 16
replaceitem block ~-5 ~1 ~3 slot.container 3 prismarine_crystals 13
replaceitem block ~-5 ~1 ~3 slot.container 4 nautilus_shell 5
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 13
replaceitem block ~-5 ~1 ~3 slot.container 9 emerald 8
replaceitem block ~-5 ~1 ~3 slot.container 10 diamond 7
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_apple 8
replaceitem block ~-5 ~1 ~3 slot.container 12 sea_lantern 6
replaceitem block ~-5 ~1 ~3 slot.container 13 heart_of_the_sea 2
replaceitem block ~-5 ~1 ~3 slot.container 14 blue_ice 14
loot insert ~-5 ~1 ~3 loot "rsf/frozen_ocean"
summon elder_guardian ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
