# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2729/4224 | 主题内编号: b041/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·八角看台古罗马斗技场 (warm_ocean_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[ruined_skylight] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 prismarine_bricks [] replace water
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 prismarine_bricks [] replace air
fill ~-7 ~1 ~-8 ~7 ~8 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 prismarine_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 prismarine []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cut_sandstone []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 prismarine_bricks []
fill ~-5 ~-5 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 sponge []
setblock ~-4 ~-5 ~-5 sea_lantern []
setblock ~4 ~-5 ~5 sea_lantern []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 prismarine_crystals 18
replaceitem block ~0 ~-3 ~5 slot.container 1 nautilus_shell 10
replaceitem block ~0 ~-3 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~0 ~-3 ~5 slot.container 3 wet_sponge 5
replaceitem block ~0 ~-3 ~5 slot.container 4 copper_ingot 10
replaceitem block ~0 ~-3 ~5 slot.container 5 ink_sac 11
replaceitem block ~0 ~-3 ~5 slot.container 9 sea_lantern 9
replaceitem block ~0 ~-3 ~5 slot.container 10 heart_of_the_sea 5
replaceitem block ~0 ~-3 ~5 slot.container 11 conduit 6
replaceitem block ~0 ~-3 ~5 slot.container 12 sponge 10
replaceitem block ~0 ~-3 ~5 slot.container 13 cooked_cod 10
replaceitem block ~0 ~-3 ~5 slot.container 14 cooked_salmon 11
loot insert ~0 ~-3 ~5 loot "rsf/warm_ocean"
loot insert ~0 ~-3 ~5 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-7 ~6 ~6 ~7 prismarine_bricks []
fill ~-5 ~1 ~-6 ~5 ~5 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~7 ~-7 air []
fill ~6 ~1 ~-7 ~6 ~7 ~-7 air []
fill ~-6 ~1 ~7 ~-6 ~7 ~7 air []
fill ~6 ~1 ~7 ~6 ~7 ~7 air []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 sea_lantern []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 sea_lantern []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 sea_lantern []
fill ~5 ~1 ~6 ~5 ~6 ~6 sea_lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~5 ~-7 ~6 ~5 ~7 dark_prismarine_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-6 ~4 ~-1 ~-6 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~4 ~-9 sea_lantern []
setblock ~-8 ~5 ~-9 sea_lantern []
fill ~-8 ~0 ~9 ~-8 ~4 ~9 sea_lantern []
setblock ~-8 ~5 ~9 sea_lantern []
fill ~8 ~0 ~-9 ~8 ~4 ~-9 sea_lantern []
setblock ~8 ~5 ~-9 sea_lantern []
fill ~8 ~0 ~9 ~8 ~4 ~9 sea_lantern []
setblock ~8 ~5 ~9 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~-8 ~0 ~1 ~-8 ~7 ~1 prismarine_bricks []
fill ~8 ~0 ~1 ~8 ~7 ~1 prismarine_bricks []
setblock ~-8 ~8 ~1 sea_lantern []
setblock ~8 ~8 ~1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 sea_lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~-4 ~1 ~6 anvil []
setblock ~4 ~1 ~6 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 prismarine_crystals 13
replaceitem block ~5 ~1 ~6 slot.container 1 nautilus_shell 5
replaceitem block ~5 ~1 ~6 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 3 wet_sponge 8
replaceitem block ~5 ~1 ~6 slot.container 4 copper_ingot 13
replaceitem block ~5 ~1 ~6 slot.container 5 ink_sac 14
replaceitem block ~5 ~1 ~6 slot.container 9 emerald 11
replaceitem block ~5 ~1 ~6 slot.container 10 golden_apple 2
replaceitem block ~5 ~1 ~6 slot.container 11 sea_lantern 7
replaceitem block ~5 ~1 ~6 slot.container 12 heart_of_the_sea 3
replaceitem block ~5 ~1 ~6 slot.container 13 conduit 4
replaceitem block ~5 ~1 ~6 slot.container 14 sponge 8
loot insert ~5 ~1 ~6 loot "rsf/warm_ocean"
summon tropicalfish ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon elder_guardian ~0 ~-3 ~0
