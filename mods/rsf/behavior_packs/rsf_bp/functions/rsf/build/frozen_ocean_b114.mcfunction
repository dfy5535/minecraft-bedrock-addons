# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2930/4224 | 主题内编号: b114/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·双联拱顶植物培育馆 (frozen_ocean_conservatory_twin_house)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 prismarine [] replace water
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 prismarine [] replace air
fill ~-8 ~1 ~-5 ~8 ~9 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 prismarine_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 packed_ice []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 prismarine_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 dark_prismarine []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~8 ~4 prismarine []
fill ~2 ~1 ~-4 ~7 ~8 ~4 prismarine []
fill ~-6 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 dark_prismarine []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 dark_prismarine []
fill ~-6 ~8 ~-3 ~6 ~9 ~3 glass []
fill ~-5 ~8 ~-2 ~5 ~8 ~2 air []
setblock ~0 ~9 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 prismarine_bricks []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 10x7x4) ---
fill ~-2 ~0 ~7 ~-2 ~7 ~7 dark_prismarine []
setblock ~-2 ~8 ~7 blue_ice []
setblock ~-2 ~9 ~7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~10 ~0 sea_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~2 bookshelf []
setblock ~5 ~1 ~2 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 nautilus_shell 5
replaceitem block ~-6 ~1 ~2 slot.container 1 bone 13
replaceitem block ~-6 ~1 ~2 slot.container 2 rotten_flesh 16
replaceitem block ~-6 ~1 ~2 slot.container 3 wet_sponge 9
replaceitem block ~-6 ~1 ~2 slot.container 4 copper_ingot 14
replaceitem block ~-6 ~1 ~2 slot.container 5 trident 8
replaceitem block ~-6 ~1 ~2 slot.container 9 heart_of_the_sea 5
replaceitem block ~-6 ~1 ~2 slot.container 10 blue_ice 17
replaceitem block ~-6 ~1 ~2 slot.container 11 sponge 10
replaceitem block ~-6 ~1 ~2 slot.container 12 cooked_salmon 12
replaceitem block ~-6 ~1 ~2 slot.container 13 gold_ingot 9
replaceitem block ~-6 ~1 ~2 slot.container 14 iron_ingot 10
loot insert ~-6 ~1 ~2 loot "rsf/frozen_ocean"
summon stray ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon elder_guardian ~1 ~1 ~1
summon squid ~0 ~2 ~0
