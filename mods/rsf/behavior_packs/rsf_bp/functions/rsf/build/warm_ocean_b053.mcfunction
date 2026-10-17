# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2741/4224 | 主题内编号: b053/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·测绘师观景制图站 (warm_ocean_outpost_cartographer_post)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 prismarine_bricks [] replace water
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 prismarine_bricks [] replace air
fill ~-5 ~1 ~-6 ~5 ~9 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 prismarine_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 prismarine []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 cut_sandstone []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 dark_prismarine []

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~7 ~5 prismarine_bricks []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 air []
fill ~4 ~1 ~5 ~4 ~8 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 sea_lantern []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 sea_lantern []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 sea_lantern []
fill ~3 ~1 ~4 ~3 ~7 ~4 sea_lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 dark_prismarine []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 dark_prismarine []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 sponge []
setblock ~0 ~11 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~10 ~-2 sea_lantern []
fill ~-4 ~0 ~2 ~-4 ~10 ~2 sea_lantern []
fill ~4 ~0 ~-2 ~4 ~10 ~-2 sea_lantern []
fill ~4 ~0 ~2 ~4 ~10 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 6x6x2) ---
fill ~-6 ~0 ~1 ~-6 ~4 ~1 prismarine_bricks []
fill ~6 ~0 ~1 ~6 ~4 ~1 prismarine_bricks []
setblock ~-6 ~5 ~1 sea_lantern []
setblock ~6 ~5 ~1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~9 ~0 sea_lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 copper_ingot 13
replaceitem block ~3 ~1 ~4 slot.container 1 ink_sac 14
replaceitem block ~3 ~1 ~4 slot.container 2 trident 8
replaceitem block ~3 ~1 ~4 slot.container 3 prismarine_shard 16
replaceitem block ~3 ~1 ~4 slot.container 4 prismarine_crystals 13
replaceitem block ~3 ~1 ~4 slot.container 5 nautilus_shell 5
replaceitem block ~3 ~1 ~4 slot.container 9 cooked_cod 14
replaceitem block ~3 ~1 ~4 slot.container 10 cooked_salmon 15
replaceitem block ~3 ~1 ~4 slot.container 11 gold_ingot 14
replaceitem block ~3 ~1 ~4 slot.container 12 iron_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 13 emerald 6
replaceitem block ~3 ~1 ~4 slot.container 14 golden_apple 4
loot insert ~3 ~1 ~4 loot "rsf/warm_ocean"
summon tropicalfish ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon elder_guardian ~0 ~2 ~0
