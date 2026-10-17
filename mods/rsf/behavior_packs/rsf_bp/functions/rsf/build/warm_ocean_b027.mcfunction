# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2715/4224 | 主题内编号: b027/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·双子连廊警戒塔楼 (warm_ocean_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 dark_prismarine []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 prismarine_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~10 ~4 stone_bricks []
fill ~2 ~1 ~-4 ~5 ~10 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~-3 ~9 ~3 air []
fill ~3 ~1 ~-3 ~4 ~9 ~3 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 prismarine_bricks []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 prismarine_bricks []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 cobblestone_wall []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 air []
setblock ~-5 ~10 ~-4 sea_lantern []
setblock ~-5 ~11 ~-4 sea_lantern []
setblock ~-5 ~10 ~4 sea_lantern []
setblock ~-5 ~11 ~4 sea_lantern []
setblock ~5 ~10 ~-4 sea_lantern []
setblock ~5 ~11 ~-4 sea_lantern []
setblock ~5 ~10 ~4 sea_lantern []
setblock ~5 ~11 ~4 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 cobblestone_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~-7 ~0 ~-1 ~-7 ~8 ~-1 prismarine_bricks []
fill ~7 ~0 ~-1 ~7 ~8 ~-1 prismarine_bricks []
setblock ~-7 ~9 ~-1 sea_lantern []
setblock ~7 ~9 ~-1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 sea_lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~3 slot.container 1 wet_sponge 8
replaceitem block ~4 ~1 ~3 slot.container 2 copper_ingot 13
replaceitem block ~4 ~1 ~3 slot.container 3 ink_sac 14
replaceitem block ~4 ~1 ~3 slot.container 4 trident 8
replaceitem block ~4 ~1 ~3 slot.container 5 prismarine_shard 16
replaceitem block ~4 ~1 ~3 slot.container 9 gold_ingot 14
replaceitem block ~4 ~1 ~3 slot.container 10 iron_ingot 8
replaceitem block ~4 ~1 ~3 slot.container 11 emerald 6
replaceitem block ~4 ~1 ~3 slot.container 12 golden_apple 4
replaceitem block ~4 ~1 ~3 slot.container 13 sea_lantern 9
replaceitem block ~4 ~1 ~3 slot.container 14 heart_of_the_sea 5
loot insert ~4 ~1 ~3 loot "rsf/warm_ocean"
summon dolphin ~0 ~1 ~-1
summon pufferfish ~-1 ~1 ~1
