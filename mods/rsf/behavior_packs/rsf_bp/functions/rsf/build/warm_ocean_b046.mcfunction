# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2734/4224 | 主题内编号: b046/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·要塞校场比武演武台 (warm_ocean_arena_fortress_yard)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 dark_prismarine [] replace water
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 dark_prismarine [] replace air
fill ~-7 ~1 ~-8 ~7 ~8 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 dark_prismarine_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cut_sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 dark_prismarine []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 sea_lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 trident 5
replaceitem block ~-2 ~-4 ~3 slot.container 1 prismarine_shard 21
replaceitem block ~-2 ~-4 ~3 slot.container 2 prismarine_crystals 18
replaceitem block ~-2 ~-4 ~3 slot.container 3 nautilus_shell 10
replaceitem block ~-2 ~-4 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~-2 ~-4 ~3 slot.container 5 wet_sponge 5
replaceitem block ~-2 ~-4 ~3 slot.container 9 gold_ingot 14
replaceitem block ~-2 ~-4 ~3 slot.container 10 iron_ingot 8
replaceitem block ~-2 ~-4 ~3 slot.container 11 emerald 6
replaceitem block ~-2 ~-4 ~3 slot.container 12 golden_apple 4
replaceitem block ~-2 ~-4 ~3 slot.container 13 sea_lantern 9
replaceitem block ~-2 ~-4 ~3 slot.container 14 heart_of_the_sea 5
loot insert ~-2 ~-4 ~3 loot "rsf/warm_ocean"
loot insert ~-2 ~-4 ~3 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~6 ~7 dark_prismarine []
fill ~-5 ~1 ~-6 ~5 ~5 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~8 ~-6 prismarine_bricks []
setblock ~-6 ~9 ~-7 sea_lantern []
fill ~-6 ~1 ~6 ~-5 ~8 ~7 prismarine_bricks []
setblock ~-6 ~9 ~6 sea_lantern []
fill ~5 ~1 ~-7 ~6 ~8 ~-6 prismarine_bricks []
setblock ~5 ~9 ~-7 sea_lantern []
fill ~5 ~1 ~6 ~6 ~8 ~7 prismarine_bricks []
setblock ~5 ~9 ~6 sea_lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

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

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 stone_bricks []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 8x10x5) ---
fill ~-8 ~0 ~-1 ~-8 ~7 ~-1 prismarine_bricks []
fill ~8 ~0 ~-1 ~8 ~7 ~-1 prismarine_bricks []
setblock ~-8 ~8 ~-1 sea_lantern []
setblock ~8 ~8 ~-1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 sea_lantern []
setblock ~0 ~1 ~0 sponge []
setblock ~0 ~2 ~0 sea_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 ink_sac 14
replaceitem block ~-5 ~1 ~6 slot.container 1 trident 8
replaceitem block ~-5 ~1 ~6 slot.container 2 prismarine_shard 16
replaceitem block ~-5 ~1 ~6 slot.container 3 prismarine_crystals 13
replaceitem block ~-5 ~1 ~6 slot.container 4 nautilus_shell 5
replaceitem block ~-5 ~1 ~6 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~6 slot.container 9 sponge 8
replaceitem block ~-5 ~1 ~6 slot.container 10 cooked_cod 15
replaceitem block ~-5 ~1 ~6 slot.container 11 cooked_salmon 16
replaceitem block ~-5 ~1 ~6 slot.container 12 gold_ingot 8
replaceitem block ~-5 ~1 ~6 slot.container 13 iron_ingot 9
replaceitem block ~-5 ~1 ~6 slot.container 14 emerald 7
loot insert ~-5 ~1 ~6 loot "rsf/warm_ocean"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 prismarine_shard 19
replaceitem block ~5 ~1 ~6 slot.container 1 prismarine_crystals 16
replaceitem block ~5 ~1 ~6 slot.container 2 nautilus_shell 8
replaceitem block ~5 ~1 ~6 slot.container 3 rotten_flesh 18
replaceitem block ~5 ~1 ~6 slot.container 4 wet_sponge 11
replaceitem block ~5 ~1 ~6 slot.container 5 copper_ingot 8
replaceitem block ~5 ~1 ~6 slot.container 9 sponge 6
replaceitem block ~5 ~1 ~6 slot.container 10 cooked_cod 13
replaceitem block ~5 ~1 ~6 slot.container 11 cooked_salmon 14
replaceitem block ~5 ~1 ~6 slot.container 12 gold_ingot 13
replaceitem block ~5 ~1 ~6 slot.container 13 iron_ingot 14
replaceitem block ~5 ~1 ~6 slot.container 14 emerald 5
loot insert ~5 ~1 ~6 loot "rsf/warm_ocean"
loot insert ~5 ~1 ~6 loot "chests/underwater_ruin_big"
summon pufferfish ~0 ~1 ~-1
summon tropicalfish ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
