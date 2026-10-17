# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2869/4224 | 主题内编号: b053/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·测绘师观景制图站 (frozen_ocean_outpost_cartographer_post)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 2格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 prismarine []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 packed_ice []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-4 ~5 ~-1 ~4 packed_ice []

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 air []
fill ~5 ~1 ~4 ~5 ~9 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~8 ~-3 sea_lantern []
fill ~4 ~1 ~-3 ~4 ~8 ~-3 sea_lantern []
fill ~-4 ~1 ~3 ~-4 ~8 ~3 sea_lantern []
fill ~4 ~1 ~3 ~4 ~8 ~3 sea_lantern []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 packed_ice []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 prismarine []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 sponge []
setblock ~0 ~12 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~11 ~-2 sea_lantern []
fill ~-5 ~0 ~2 ~-5 ~11 ~2 sea_lantern []
fill ~5 ~0 ~-2 ~5 ~11 ~-2 sea_lantern []
fill ~5 ~0 ~2 ~5 ~11 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 8x6x3) ---
fill ~0 ~0 ~6 ~0 ~6 ~6 dark_prismarine []
setblock ~0 ~7 ~6 blue_ice []
setblock ~0 ~8 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~7 ~0 sea_lantern []
setblock ~-4 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 wet_sponge 9
replaceitem block ~4 ~1 ~2 slot.container 1 copper_ingot 14
replaceitem block ~4 ~1 ~2 slot.container 2 trident 8
replaceitem block ~4 ~1 ~2 slot.container 3 prismarine_shard 16
replaceitem block ~4 ~1 ~2 slot.container 4 prismarine_crystals 13
replaceitem block ~4 ~1 ~2 slot.container 5 nautilus_shell 5
replaceitem block ~4 ~1 ~2 slot.container 9 diamond 8
replaceitem block ~4 ~1 ~2 slot.container 10 golden_apple 2
replaceitem block ~4 ~1 ~2 slot.container 11 sea_lantern 7
replaceitem block ~4 ~1 ~2 slot.container 12 heart_of_the_sea 3
replaceitem block ~4 ~1 ~2 slot.container 13 blue_ice 15
replaceitem block ~4 ~1 ~2 slot.container 14 sponge 8
loot insert ~4 ~1 ~2 loot "rsf/frozen_ocean"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 trident 3
replaceitem block ~-4 ~1 ~3 slot.container 1 prismarine_shard 19
replaceitem block ~-4 ~1 ~3 slot.container 2 prismarine_crystals 16
replaceitem block ~-4 ~1 ~3 slot.container 3 nautilus_shell 8
replaceitem block ~-4 ~1 ~3 slot.container 4 bone 16
replaceitem block ~-4 ~1 ~3 slot.container 5 rotten_flesh 19
replaceitem block ~-4 ~1 ~3 slot.container 9 diamond 6
replaceitem block ~-4 ~1 ~3 slot.container 10 golden_apple 7
replaceitem block ~-4 ~1 ~3 slot.container 11 sea_lantern 12
replaceitem block ~-4 ~1 ~3 slot.container 12 heart_of_the_sea 1
replaceitem block ~-4 ~1 ~3 slot.container 13 blue_ice 13
replaceitem block ~-4 ~1 ~3 slot.container 14 sponge 6
loot insert ~-4 ~1 ~3 loot "rsf/frozen_ocean"
loot insert ~-4 ~1 ~3 loot "chests/shipwrecktreasure"
summon guardian ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
