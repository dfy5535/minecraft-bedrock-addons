# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2896/4224 | 主题内编号: b080/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·悬灯祈福图腾花坛 (frozen_ocean_totem_lantern_pavilion)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 prismarine_bricks [] replace water
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 prismarine_bricks [] replace air
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 dark_prismarine []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 blue_ice []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~4 ~4 prismarine_bricks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-6 ~4 ~-5 ~6 ~4 ~5 prismarine_brick_slab []
fill ~-4 ~5 ~-3 ~4 ~8 ~3 stone_bricks []
fill ~-3 ~5 ~-2 ~3 ~7 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~5 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 prismarine_brick_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 stone_bricks []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 stone_brick_slab []
setblock ~0 ~12 ~0 gold_block []
setblock ~0 ~13 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 sea_lantern []
setblock ~0 ~4 ~-6 sponge []
setblock ~0 ~5 ~-6 sea_lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 sea_lantern []
setblock ~0 ~4 ~6 sponge []
setblock ~0 ~5 ~6 sea_lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 sea_lantern []
setblock ~-7 ~4 ~0 sponge []
setblock ~-7 ~5 ~0 sea_lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 sea_lantern []
setblock ~7 ~4 ~0 sponge []
setblock ~7 ~5 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 8x6x5) ---
fill ~2 ~0 ~6 ~2 ~8 ~6 dark_prismarine []
setblock ~2 ~9 ~6 blue_ice []
setblock ~2 ~10 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 prismarine_shard 16
replaceitem block ~-4 ~1 ~2 slot.container 1 prismarine_crystals 13
replaceitem block ~-4 ~1 ~2 slot.container 2 nautilus_shell 5
replaceitem block ~-4 ~1 ~2 slot.container 3 bone 13
replaceitem block ~-4 ~1 ~2 slot.container 4 rotten_flesh 16
replaceitem block ~-4 ~1 ~2 slot.container 5 wet_sponge 9
replaceitem block ~-4 ~1 ~2 slot.container 9 golden_apple 7
replaceitem block ~-4 ~1 ~2 slot.container 10 sea_lantern 12
replaceitem block ~-4 ~1 ~2 slot.container 11 heart_of_the_sea 1
replaceitem block ~-4 ~1 ~2 slot.container 12 blue_ice 13
replaceitem block ~-4 ~1 ~2 slot.container 13 sponge 6
replaceitem block ~-4 ~1 ~2 slot.container 14 cooked_salmon 15
loot insert ~-4 ~1 ~2 loot "rsf/frozen_ocean"
summon elder_guardian ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
