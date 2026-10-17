# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2838/4224 | 主题内编号: b022/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·廊柱书库秘藏室 (frozen_ocean_chamber_pillared_archive)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 prismarine [] replace water
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 prismarine [] replace air
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
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
replaceitem block ~4 ~-3 ~3 slot.container 9 golden_apple 8
replaceitem block ~4 ~-3 ~3 slot.container 10 sea_lantern 6
replaceitem block ~4 ~-3 ~3 slot.container 11 heart_of_the_sea 2
replaceitem block ~4 ~-3 ~3 slot.container 12 blue_ice 14
replaceitem block ~4 ~-3 ~3 slot.container 13 sponge 7
replaceitem block ~4 ~-3 ~3 slot.container 14 cooked_salmon 16
loot insert ~4 ~-3 ~3 loot "rsf/frozen_ocean"
loot insert ~4 ~-3 ~3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 dark_prismarine []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 sea_lantern []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 sea_lantern []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 sea_lantern []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 sea_lantern []
fill ~-2 ~1 ~-5 ~-2 ~7 ~-5 sea_lantern []
fill ~-2 ~1 ~5 ~-2 ~7 ~5 sea_lantern []
fill ~0 ~1 ~-5 ~0 ~7 ~-5 sea_lantern []
fill ~0 ~1 ~5 ~0 ~7 ~5 sea_lantern []
fill ~2 ~1 ~-5 ~2 ~7 ~-5 sea_lantern []
fill ~2 ~1 ~5 ~2 ~7 ~5 sea_lantern []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 sea_lantern []
fill ~4 ~1 ~5 ~4 ~7 ~5 sea_lantern []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 sea_lantern []
fill ~6 ~1 ~5 ~6 ~7 ~5 sea_lantern []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 sea_lantern []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 sea_lantern []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 sea_lantern []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 sea_lantern []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 sea_lantern []
fill ~6 ~1 ~1 ~6 ~7 ~1 sea_lantern []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 sea_lantern []
fill ~6 ~1 ~3 ~6 ~7 ~3 sea_lantern []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 dark_prismarine []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 dark_prismarine []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 diamond_block []
setblock ~0 ~12 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 sea_lantern []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 sea_lantern []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 sea_lantern []
fill ~8 ~0 ~2 ~8 ~6 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x6x2) ---
fill ~-2 ~0 ~6 ~-2 ~5 ~6 dark_prismarine []
setblock ~-2 ~6 ~6 blue_ice []
setblock ~-2 ~7 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 sea_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~4 bookshelf []
setblock ~5 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 copper_ingot 14
replaceitem block ~-5 ~1 ~3 slot.container 1 trident 8
replaceitem block ~-5 ~1 ~3 slot.container 2 prismarine_shard 16
replaceitem block ~-5 ~1 ~3 slot.container 3 prismarine_crystals 13
replaceitem block ~-5 ~1 ~3 slot.container 4 nautilus_shell 5
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 13
replaceitem block ~-5 ~1 ~3 slot.container 9 gold_ingot 11
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 11 emerald 9
replaceitem block ~-5 ~1 ~3 slot.container 12 diamond 8
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 2
replaceitem block ~-5 ~1 ~3 slot.container 14 sea_lantern 7
loot insert ~-5 ~1 ~3 loot "rsf/frozen_ocean"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
