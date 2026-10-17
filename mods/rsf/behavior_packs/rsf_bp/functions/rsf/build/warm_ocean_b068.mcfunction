# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2756/4224 | 主题内编号: b068/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·断裂凯旋高架拱廊 (warm_ocean_ruin_broken_aqueduct)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[ruined_skylight] + 地宫[underground_forge] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 prismarine [] replace water
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 prismarine [] replace air
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 prismarine_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 dark_prismarine []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 prismarine_bricks []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 sea_lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 prismarine_crystals 18
replaceitem block ~3 ~-4 ~5 slot.container 1 nautilus_shell 10
replaceitem block ~3 ~-4 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~3 ~-4 ~5 slot.container 3 wet_sponge 5
replaceitem block ~3 ~-4 ~5 slot.container 4 copper_ingot 10
replaceitem block ~3 ~-4 ~5 slot.container 5 ink_sac 11
replaceitem block ~3 ~-4 ~5 slot.container 9 sea_lantern 11
replaceitem block ~3 ~-4 ~5 slot.container 10 heart_of_the_sea 7
replaceitem block ~3 ~-4 ~5 slot.container 11 conduit 1
replaceitem block ~3 ~-4 ~5 slot.container 12 sponge 5
replaceitem block ~3 ~-4 ~5 slot.container 13 cooked_cod 12
replaceitem block ~3 ~-4 ~5 slot.container 14 cooked_salmon 13
loot insert ~3 ~-4 ~5 loot "rsf/warm_ocean"
loot insert ~3 ~-4 ~5 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 prismarine []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 prismarine_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 prismarine_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 sea_lantern []
setblock ~2 ~4 ~-8 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 8x6x2) ---
fill ~-8 ~0 ~1 ~-8 ~4 ~1 prismarine_bricks []
fill ~8 ~0 ~1 ~8 ~4 ~1 prismarine_bricks []
setblock ~-8 ~5 ~1 sea_lantern []
setblock ~8 ~5 ~1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 wet_sponge 8
replaceitem block ~-5 ~1 ~4 slot.container 1 copper_ingot 13
replaceitem block ~-5 ~1 ~4 slot.container 2 ink_sac 14
replaceitem block ~-5 ~1 ~4 slot.container 3 trident 8
replaceitem block ~-5 ~1 ~4 slot.container 4 prismarine_shard 16
replaceitem block ~-5 ~1 ~4 slot.container 5 prismarine_crystals 13
replaceitem block ~-5 ~1 ~4 slot.container 9 golden_apple 7
replaceitem block ~-5 ~1 ~4 slot.container 10 sea_lantern 12
replaceitem block ~-5 ~1 ~4 slot.container 11 heart_of_the_sea 1
replaceitem block ~-5 ~1 ~4 slot.container 12 conduit 2
replaceitem block ~-5 ~1 ~4 slot.container 13 sponge 6
replaceitem block ~-5 ~1 ~4 slot.container 14 cooked_cod 13
loot insert ~-5 ~1 ~4 loot "rsf/warm_ocean"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ink_sac 9
replaceitem block ~5 ~1 ~4 slot.container 1 trident 3
replaceitem block ~5 ~1 ~4 slot.container 2 prismarine_shard 19
replaceitem block ~5 ~1 ~4 slot.container 3 prismarine_crystals 16
replaceitem block ~5 ~1 ~4 slot.container 4 nautilus_shell 8
replaceitem block ~5 ~1 ~4 slot.container 5 rotten_flesh 18
replaceitem block ~5 ~1 ~4 slot.container 9 golden_apple 5
replaceitem block ~5 ~1 ~4 slot.container 10 sea_lantern 10
replaceitem block ~5 ~1 ~4 slot.container 11 heart_of_the_sea 6
replaceitem block ~5 ~1 ~4 slot.container 12 conduit 7
replaceitem block ~5 ~1 ~4 slot.container 13 sponge 4
replaceitem block ~5 ~1 ~4 slot.container 14 cooked_cod 11
loot insert ~5 ~1 ~4 loot "rsf/warm_ocean"
loot insert ~5 ~1 ~4 loot "chests/underwater_ruin_big"
summon elder_guardian ~0 ~1 ~-1
summon dolphin ~-1 ~1 ~1
summon pufferfish ~1 ~1 ~1
summon tropicalfish ~0 ~2 ~0
