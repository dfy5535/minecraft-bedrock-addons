# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2814/4224 | 主题内编号: b126/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·双子主塔天桥宫殿与暗牢 (warm_ocean_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 dark_prismarine [] replace water
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 dark_prismarine [] replace air
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 dark_prismarine_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 cut_sandstone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 prismarine_bricks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 sea_lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 prismarine_crystals 18
replaceitem block ~3 ~-3 ~3 slot.container 1 nautilus_shell 10
replaceitem block ~3 ~-3 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~3 ~-3 ~3 slot.container 3 wet_sponge 5
replaceitem block ~3 ~-3 ~3 slot.container 4 copper_ingot 10
replaceitem block ~3 ~-3 ~3 slot.container 5 ink_sac 11
replaceitem block ~3 ~-3 ~3 slot.container 9 gold_ingot 8
replaceitem block ~3 ~-3 ~3 slot.container 10 iron_ingot 9
replaceitem block ~3 ~-3 ~3 slot.container 11 emerald 7
replaceitem block ~3 ~-3 ~3 slot.container 12 golden_apple 5
replaceitem block ~3 ~-3 ~3 slot.container 13 sea_lantern 10
replaceitem block ~3 ~-3 ~3 slot.container 14 heart_of_the_sea 6
loot insert ~3 ~-3 ~3 loot "rsf/warm_ocean"
loot insert ~3 ~-3 ~3 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~10 ~6 dark_prismarine []
fill ~2 ~1 ~-6 ~6 ~10 ~6 dark_prismarine []
fill ~-5 ~1 ~-5 ~-3 ~9 ~5 air []
fill ~3 ~1 ~-5 ~5 ~9 ~5 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 prismarine_bricks []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 prismarine_bricks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 dark_prismarine []
fill ~0 ~15 ~0 ~0 ~17 ~0 emerald_block []
setblock ~0 ~18 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 prismarine_bricks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 sea_lantern []
setblock ~2 ~4 ~-9 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~-8 ~0 ~-1 ~-8 ~7 ~-1 prismarine_bricks []
fill ~8 ~0 ~-1 ~8 ~7 ~-1 prismarine_bricks []
setblock ~-8 ~8 ~-1 sea_lantern []
setblock ~8 ~8 ~-1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~8 ~0 sea_lantern []
setblock ~-5 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 ink_sac 14
replaceitem block ~-5 ~1 ~5 slot.container 1 trident 8
replaceitem block ~-5 ~1 ~5 slot.container 2 prismarine_shard 16
replaceitem block ~-5 ~1 ~5 slot.container 3 prismarine_crystals 13
replaceitem block ~-5 ~1 ~5 slot.container 4 nautilus_shell 5
replaceitem block ~-5 ~1 ~5 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~5 slot.container 9 sponge 4
replaceitem block ~-5 ~1 ~5 slot.container 10 cooked_cod 11
replaceitem block ~-5 ~1 ~5 slot.container 11 cooked_salmon 12
replaceitem block ~-5 ~1 ~5 slot.container 12 gold_ingot 11
replaceitem block ~-5 ~1 ~5 slot.container 13 iron_ingot 12
replaceitem block ~-5 ~1 ~5 slot.container 14 emerald 10
loot insert ~-5 ~1 ~5 loot "rsf/warm_ocean"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 prismarine_shard 19
replaceitem block ~5 ~1 ~5 slot.container 1 prismarine_crystals 16
replaceitem block ~5 ~1 ~5 slot.container 2 nautilus_shell 8
replaceitem block ~5 ~1 ~5 slot.container 3 rotten_flesh 18
replaceitem block ~5 ~1 ~5 slot.container 4 wet_sponge 11
replaceitem block ~5 ~1 ~5 slot.container 5 copper_ingot 8
replaceitem block ~5 ~1 ~5 slot.container 9 sponge 9
replaceitem block ~5 ~1 ~5 slot.container 10 cooked_cod 16
replaceitem block ~5 ~1 ~5 slot.container 11 cooked_salmon 10
replaceitem block ~5 ~1 ~5 slot.container 12 gold_ingot 9
replaceitem block ~5 ~1 ~5 slot.container 13 iron_ingot 10
replaceitem block ~5 ~1 ~5 slot.container 14 emerald 8
loot insert ~5 ~1 ~5 loot "rsf/warm_ocean"
loot insert ~5 ~1 ~5 loot "chests/underwater_ruin_big"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
