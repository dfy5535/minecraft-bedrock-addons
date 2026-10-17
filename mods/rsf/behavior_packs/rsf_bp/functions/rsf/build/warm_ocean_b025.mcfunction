# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2713/4224 | 主题内编号: b025/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·雉堞女墙四方哨塔 (warm_ocean_tower_battlement_watch)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 9x11 | 地上高度 10格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 prismarine_bricks [] replace water
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 prismarine_bricks [] replace air
fill ~-4 ~1 ~-5 ~4 ~12 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 prismarine_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 prismarine []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 cut_sandstone []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (none) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 dark_prismarine []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~10 ~4 prismarine_bricks []
fill ~-2 ~1 ~-3 ~2 ~9 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~10 ~-4 sea_lantern []
fill ~-3 ~1 ~4 ~-3 ~10 ~4 sea_lantern []
fill ~3 ~1 ~-4 ~3 ~10 ~-4 sea_lantern []
fill ~3 ~1 ~4 ~3 ~10 ~4 sea_lantern []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-3 ~10 ~-4 ~3 ~10 ~4 dark_prismarine []
fill ~-3 ~11 ~-4 ~3 ~11 ~4 cobblestone_wall []
fill ~-2 ~11 ~-3 ~2 ~11 ~3 air []
setblock ~-3 ~11 ~-4 sea_lantern []
setblock ~-3 ~12 ~-4 sea_lantern []
setblock ~-3 ~11 ~4 sea_lantern []
setblock ~-3 ~12 ~4 sea_lantern []
setblock ~3 ~11 ~-4 sea_lantern []
setblock ~3 ~12 ~-4 sea_lantern []
setblock ~3 ~11 ~4 sea_lantern []
setblock ~3 ~12 ~4 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 cobblestone_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 5x7x4) ---
fill ~-5 ~0 ~1 ~-5 ~6 ~1 prismarine_bricks []
fill ~5 ~0 ~1 ~5 ~6 ~1 prismarine_bricks []
setblock ~-5 ~7 ~1 sea_lantern []
setblock ~5 ~7 ~1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 sea_lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 diamond_block []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 prismarine_crystals 13
replaceitem block ~2 ~1 ~3 slot.container 1 nautilus_shell 5
replaceitem block ~2 ~1 ~3 slot.container 2 rotten_flesh 15
replaceitem block ~2 ~1 ~3 slot.container 3 wet_sponge 8
replaceitem block ~2 ~1 ~3 slot.container 4 copper_ingot 13
replaceitem block ~2 ~1 ~3 slot.container 5 ink_sac 14
replaceitem block ~2 ~1 ~3 slot.container 9 sea_lantern 10
replaceitem block ~2 ~1 ~3 slot.container 10 heart_of_the_sea 6
replaceitem block ~2 ~1 ~3 slot.container 11 conduit 7
replaceitem block ~2 ~1 ~3 slot.container 12 sponge 4
replaceitem block ~2 ~1 ~3 slot.container 13 cooked_cod 11
replaceitem block ~2 ~1 ~3 slot.container 14 cooked_salmon 12
loot insert ~2 ~1 ~3 loot "rsf/warm_ocean"
summon guardian ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
summon dolphin ~1 ~1 ~1
