# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2898/4224 | 主题内编号: b082/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·竖井井架矿工物资站 (frozen_ocean_mine_shaft_headframe)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 6格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 prismarine [] replace water
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 prismarine [] replace air
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_ice []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 prismarine_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 prismarine []
fill ~-4 ~-7 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-7 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-7 ~2 sea_lantern []
setblock ~3 ~-7 ~-2 sea_lantern []
setblock ~3 ~-5 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-5 ~2 slot.container 0 rotten_flesh 13
replaceitem block ~3 ~-5 ~2 slot.container 1 wet_sponge 6
replaceitem block ~3 ~-5 ~2 slot.container 2 copper_ingot 11
replaceitem block ~3 ~-5 ~2 slot.container 3 trident 5
replaceitem block ~3 ~-5 ~2 slot.container 4 prismarine_shard 21
replaceitem block ~3 ~-5 ~2 slot.container 5 prismarine_crystals 18
replaceitem block ~3 ~-5 ~2 slot.container 9 emerald 6
replaceitem block ~3 ~-5 ~2 slot.container 10 diamond 5
replaceitem block ~3 ~-5 ~2 slot.container 11 golden_apple 6
replaceitem block ~3 ~-5 ~2 slot.container 12 sea_lantern 11
replaceitem block ~3 ~-5 ~2 slot.container 13 heart_of_the_sea 7
replaceitem block ~3 ~-5 ~2 slot.container 14 blue_ice 12
loot insert ~3 ~-5 ~2 loot "rsf/frozen_ocean"
loot insert ~3 ~-5 ~2 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~4 ~4 prismarine []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-6 ~4 ~-5 ~6 ~4 ~5 prismarine_slab []
fill ~-4 ~5 ~-3 ~4 ~9 ~3 dark_prismarine []
fill ~-3 ~5 ~-2 ~3 ~8 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~5 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~10 ~-4 ~5 ~10 ~4 dark_prismarine []
fill ~-4 ~11 ~-3 ~4 ~11 ~3 dark_prismarine []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 diamond_block []
setblock ~0 ~13 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 prismarine_bricks []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 8x5x2) ---
fill ~-1 ~0 ~5 ~-1 ~5 ~5 dark_prismarine []
setblock ~-1 ~6 ~5 blue_ice []
setblock ~-1 ~7 ~5 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~9 ~0 sea_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 nautilus_shell 5
replaceitem block ~-4 ~1 ~2 slot.container 1 bone 13
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 16
replaceitem block ~-4 ~1 ~2 slot.container 3 wet_sponge 9
replaceitem block ~-4 ~1 ~2 slot.container 4 copper_ingot 14
replaceitem block ~-4 ~1 ~2 slot.container 5 trident 8
replaceitem block ~-4 ~1 ~2 slot.container 9 gold_ingot 8
replaceitem block ~-4 ~1 ~2 slot.container 10 iron_ingot 9
replaceitem block ~-4 ~1 ~2 slot.container 11 emerald 6
replaceitem block ~-4 ~1 ~2 slot.container 12 diamond 5
replaceitem block ~-4 ~1 ~2 slot.container 13 golden_apple 6
replaceitem block ~-4 ~1 ~2 slot.container 14 sea_lantern 11
loot insert ~-4 ~1 ~2 loot "rsf/frozen_ocean"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
