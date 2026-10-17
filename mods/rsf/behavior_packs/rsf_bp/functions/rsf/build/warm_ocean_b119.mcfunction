# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2807/4224 | 主题内编号: b119/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·半地下恒温洞穴苗圃 (warm_ocean_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 11x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 stone_bricks [] replace water
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 stone_bricks [] replace air
fill ~-5 ~1 ~-7 ~5 ~7 ~7 air []
fill ~-5 ~0 ~-7 ~5 ~0 ~7 stone_brick_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 mossy_stone_bricks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 dark_prismarine []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 prismarine_bricks []
fill ~-2 ~-6 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 sea_lantern []
setblock ~-2 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~4 slot.container 0 prismarine_crystals 18
replaceitem block ~-2 ~-4 ~4 slot.container 1 nautilus_shell 10
replaceitem block ~-2 ~-4 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-2 ~-4 ~4 slot.container 3 wet_sponge 5
replaceitem block ~-2 ~-4 ~4 slot.container 4 copper_ingot 10
replaceitem block ~-2 ~-4 ~4 slot.container 5 ink_sac 11
replaceitem block ~-2 ~-4 ~4 slot.container 9 emerald 6
replaceitem block ~-2 ~-4 ~4 slot.container 10 golden_apple 4
replaceitem block ~-2 ~-4 ~4 slot.container 11 sea_lantern 9
replaceitem block ~-2 ~-4 ~4 slot.container 12 heart_of_the_sea 5
replaceitem block ~-2 ~-4 ~4 slot.container 13 conduit 6
replaceitem block ~-2 ~-4 ~4 slot.container 14 sponge 10
loot insert ~-2 ~-4 ~4 loot "rsf/warm_ocean"
loot insert ~-2 ~-4 ~4 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-6 ~4 ~2 ~6 stone_bricks []
fill ~-3 ~1 ~-5 ~3 ~3 ~5 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 prismarine_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 prismarine_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~5 ~-6 ~4 ~5 ~6 prismarine_bricks []
fill ~-3 ~6 ~-5 ~3 ~7 ~5 glass []
fill ~-2 ~6 ~-4 ~2 ~6 ~4 air []
setblock ~0 ~7 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 sea_lantern []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 sea_lantern []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 sea_lantern []
fill ~7 ~0 ~2 ~7 ~5 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~-6 ~0 ~-2 ~-6 ~5 ~-2 prismarine_bricks []
fill ~6 ~0 ~-2 ~6 ~5 ~-2 prismarine_bricks []
setblock ~-6 ~6 ~-2 sea_lantern []
setblock ~6 ~6 ~-2 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 sea_lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 trident 8
replaceitem block ~3 ~1 ~5 slot.container 1 prismarine_shard 16
replaceitem block ~3 ~1 ~5 slot.container 2 prismarine_crystals 13
replaceitem block ~3 ~1 ~5 slot.container 3 nautilus_shell 5
replaceitem block ~3 ~1 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~3 ~1 ~5 slot.container 5 wet_sponge 8
replaceitem block ~3 ~1 ~5 slot.container 9 conduit 1
replaceitem block ~3 ~1 ~5 slot.container 10 sponge 5
replaceitem block ~3 ~1 ~5 slot.container 11 cooked_cod 12
replaceitem block ~3 ~1 ~5 slot.container 12 cooked_salmon 13
replaceitem block ~3 ~1 ~5 slot.container 13 gold_ingot 12
replaceitem block ~3 ~1 ~5 slot.container 14 iron_ingot 13
loot insert ~3 ~1 ~5 loot "rsf/warm_ocean"
summon tropicalfish ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon elder_guardian ~0 ~-4 ~0
