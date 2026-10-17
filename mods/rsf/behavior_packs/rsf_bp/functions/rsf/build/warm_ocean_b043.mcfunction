# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2731/4224 | 主题内编号: b043/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·十字四门试炼擂台 (warm_ocean_arena_cross_gauntlet)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~1 ~-8 ~7 ~8 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 dark_prismarine []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 prismarine_bricks []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~6 ~7 stone_bricks []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 stone_bricks []
fill ~-1 ~1 ~-6 ~1 ~5 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 prismarine_bricks []
fill ~-6 ~7 ~-7 ~6 ~7 ~7 cobblestone_wall []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 air []
setblock ~-6 ~7 ~-7 sea_lantern []
setblock ~-6 ~8 ~-7 sea_lantern []
setblock ~-6 ~7 ~7 sea_lantern []
setblock ~-6 ~8 ~7 sea_lantern []
setblock ~6 ~7 ~-7 sea_lantern []
setblock ~6 ~8 ~-7 sea_lantern []
setblock ~6 ~7 ~7 sea_lantern []
setblock ~6 ~8 ~7 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 cobblestone_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 8x10x2) ---
fill ~-8 ~0 ~3 ~-8 ~4 ~3 prismarine_bricks []
fill ~8 ~0 ~3 ~8 ~4 ~3 prismarine_bricks []
setblock ~-8 ~5 ~3 sea_lantern []
setblock ~8 ~5 ~3 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 sea_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 1 wet_sponge 8
replaceitem block ~5 ~1 ~6 slot.container 2 copper_ingot 13
replaceitem block ~5 ~1 ~6 slot.container 3 ink_sac 14
replaceitem block ~5 ~1 ~6 slot.container 4 trident 8
replaceitem block ~5 ~1 ~6 slot.container 5 prismarine_shard 16
replaceitem block ~5 ~1 ~6 slot.container 9 cooked_cod 11
replaceitem block ~5 ~1 ~6 slot.container 10 cooked_salmon 12
replaceitem block ~5 ~1 ~6 slot.container 11 gold_ingot 11
replaceitem block ~5 ~1 ~6 slot.container 12 iron_ingot 12
replaceitem block ~5 ~1 ~6 slot.container 13 emerald 10
replaceitem block ~5 ~1 ~6 slot.container 14 golden_apple 8
loot insert ~5 ~1 ~6 loot "rsf/warm_ocean"
summon guardian ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
summon dolphin ~1 ~1 ~1
