# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2808/4224 | 主题内编号: b120/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·引水渠跨桥水培温室 (warm_ocean_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[gabled_stairs] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 prismarine [] replace water
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 prismarine [] replace air
fill ~-6 ~1 ~-6 ~6 ~8 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 prismarine_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 dark_prismarine []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-3 ~-4 ~4 ~-1 ~4 prismarine_bricks []
fill ~-3 ~-4 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 sea_lantern []
setblock ~-3 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-2 ~3 slot.container 0 nautilus_shell 10
replaceitem block ~-3 ~-2 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~-3 ~-2 ~3 slot.container 2 wet_sponge 5
replaceitem block ~-3 ~-2 ~3 slot.container 3 copper_ingot 10
replaceitem block ~-3 ~-2 ~3 slot.container 4 ink_sac 11
replaceitem block ~-3 ~-2 ~3 slot.container 5 trident 5
replaceitem block ~-3 ~-2 ~3 slot.container 9 heart_of_the_sea 3
replaceitem block ~-3 ~-2 ~3 slot.container 10 conduit 4
replaceitem block ~-3 ~-2 ~3 slot.container 11 sponge 8
replaceitem block ~-3 ~-2 ~3 slot.container 12 cooked_cod 15
replaceitem block ~-3 ~-2 ~3 slot.container 13 cooked_salmon 16
replaceitem block ~-3 ~-2 ~3 slot.container 14 gold_ingot 8
loot insert ~-3 ~-2 ~3 loot "rsf/warm_ocean"
loot insert ~-3 ~-2 ~3 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 prismarine []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-6 ~-7 ~7 ~6 prismarine_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-6 ~7 ~7 ~6 prismarine_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-5 ~-6 ~8 ~5 prismarine_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-5 ~6 ~8 ~5 prismarine_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~5 ~8 ~5 prismarine_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 prismarine_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 prismarine_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 sea_lantern []
setblock ~2 ~4 ~-8 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 prismarine_bricks []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 prismarine_bricks []
setblock ~-7 ~7 ~-2 sea_lantern []
setblock ~7 ~7 ~-2 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 sea_lantern []
setblock ~-4 ~1 ~4 crafting_table []
setblock ~-3 ~1 ~4 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 prismarine_shard 16
replaceitem block ~-4 ~1 ~4 slot.container 1 prismarine_crystals 13
replaceitem block ~-4 ~1 ~4 slot.container 2 nautilus_shell 5
replaceitem block ~-4 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-4 ~1 ~4 slot.container 4 wet_sponge 8
replaceitem block ~-4 ~1 ~4 slot.container 5 copper_ingot 13
replaceitem block ~-4 ~1 ~4 slot.container 9 cooked_salmon 11
replaceitem block ~-4 ~1 ~4 slot.container 10 gold_ingot 10
replaceitem block ~-4 ~1 ~4 slot.container 11 iron_ingot 11
replaceitem block ~-4 ~1 ~4 slot.container 12 emerald 9
replaceitem block ~-4 ~1 ~4 slot.container 13 golden_apple 7
replaceitem block ~-4 ~1 ~4 slot.container 14 sea_lantern 12
loot insert ~-4 ~1 ~4 loot "rsf/warm_ocean"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 nautilus_shell 8
replaceitem block ~4 ~1 ~4 slot.container 1 rotten_flesh 18
replaceitem block ~4 ~1 ~4 slot.container 2 wet_sponge 11
replaceitem block ~4 ~1 ~4 slot.container 3 copper_ingot 8
replaceitem block ~4 ~1 ~4 slot.container 4 ink_sac 9
replaceitem block ~4 ~1 ~4 slot.container 5 trident 3
replaceitem block ~4 ~1 ~4 slot.container 9 cooked_salmon 16
replaceitem block ~4 ~1 ~4 slot.container 10 gold_ingot 8
replaceitem block ~4 ~1 ~4 slot.container 11 iron_ingot 9
replaceitem block ~4 ~1 ~4 slot.container 12 emerald 7
replaceitem block ~4 ~1 ~4 slot.container 13 golden_apple 5
replaceitem block ~4 ~1 ~4 slot.container 14 sea_lantern 10
loot insert ~4 ~1 ~4 loot "rsf/warm_ocean"
loot insert ~4 ~1 ~4 loot "chests/underwater_ruin_big"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
