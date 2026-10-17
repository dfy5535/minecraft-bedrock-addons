# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2732/4224 | 主题内编号: b044/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·双子祭台勇士角斗场 (warm_ocean_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 prismarine [] replace water
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 prismarine [] replace air
fill ~-7 ~1 ~-7 ~7 ~8 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 prismarine_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 dark_prismarine []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 prismarine_bricks []
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 sea_lantern []
setblock ~4 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~4 slot.container 0 prismarine_shard 21
replaceitem block ~4 ~-2 ~4 slot.container 1 prismarine_crystals 18
replaceitem block ~4 ~-2 ~4 slot.container 2 nautilus_shell 10
replaceitem block ~4 ~-2 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~-2 ~4 slot.container 4 wet_sponge 5
replaceitem block ~4 ~-2 ~4 slot.container 5 copper_ingot 10
replaceitem block ~4 ~-2 ~4 slot.container 9 heart_of_the_sea 6
replaceitem block ~4 ~-2 ~4 slot.container 10 conduit 7
replaceitem block ~4 ~-2 ~4 slot.container 11 sponge 4
replaceitem block ~4 ~-2 ~4 slot.container 12 cooked_cod 11
replaceitem block ~4 ~-2 ~4 slot.container 13 cooked_salmon 12
replaceitem block ~4 ~-2 ~4 slot.container 14 gold_ingot 11
loot insert ~4 ~-2 ~4 loot "rsf/warm_ocean"
loot insert ~4 ~-2 ~4 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~7 ~6 prismarine []
fill ~2 ~1 ~-6 ~6 ~7 ~6 prismarine []
fill ~-5 ~1 ~-5 ~-3 ~6 ~5 air []
fill ~3 ~1 ~-5 ~5 ~6 ~5 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 prismarine_bricks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-6 ~-6 ~8 ~-6 sea_lantern []
setblock ~-6 ~9 ~-6 sea_lantern []
fill ~-6 ~6 ~6 ~-6 ~8 ~6 sea_lantern []
setblock ~-6 ~9 ~6 sea_lantern []
fill ~6 ~6 ~-6 ~6 ~8 ~-6 sea_lantern []
setblock ~6 ~9 ~-6 sea_lantern []
fill ~6 ~6 ~6 ~6 ~8 ~6 sea_lantern []
setblock ~6 ~9 ~6 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 dark_prismarine []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~0 ~1 ~-8 ~5 ~1 prismarine_bricks []
fill ~8 ~0 ~1 ~8 ~5 ~1 prismarine_bricks []
setblock ~-8 ~6 ~1 sea_lantern []
setblock ~8 ~6 ~1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 sea_lantern []
setblock ~-5 ~1 ~4 smoker []
setblock ~-4 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~5 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 wet_sponge 8
replaceitem block ~-5 ~1 ~5 slot.container 1 copper_ingot 13
replaceitem block ~-5 ~1 ~5 slot.container 2 ink_sac 14
replaceitem block ~-5 ~1 ~5 slot.container 3 trident 8
replaceitem block ~-5 ~1 ~5 slot.container 4 prismarine_shard 16
replaceitem block ~-5 ~1 ~5 slot.container 5 prismarine_crystals 13
replaceitem block ~-5 ~1 ~5 slot.container 9 iron_ingot 10
replaceitem block ~-5 ~1 ~5 slot.container 10 emerald 8
replaceitem block ~-5 ~1 ~5 slot.container 11 golden_apple 6
replaceitem block ~-5 ~1 ~5 slot.container 12 sea_lantern 11
replaceitem block ~-5 ~1 ~5 slot.container 13 heart_of_the_sea 7
replaceitem block ~-5 ~1 ~5 slot.container 14 conduit 1
loot insert ~-5 ~1 ~5 loot "rsf/warm_ocean"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 ink_sac 9
replaceitem block ~5 ~1 ~5 slot.container 1 trident 3
replaceitem block ~5 ~1 ~5 slot.container 2 prismarine_shard 19
replaceitem block ~5 ~1 ~5 slot.container 3 prismarine_crystals 16
replaceitem block ~5 ~1 ~5 slot.container 4 nautilus_shell 8
replaceitem block ~5 ~1 ~5 slot.container 5 rotten_flesh 18
replaceitem block ~5 ~1 ~5 slot.container 9 iron_ingot 8
replaceitem block ~5 ~1 ~5 slot.container 10 emerald 6
replaceitem block ~5 ~1 ~5 slot.container 11 golden_apple 4
replaceitem block ~5 ~1 ~5 slot.container 12 sea_lantern 9
replaceitem block ~5 ~1 ~5 slot.container 13 heart_of_the_sea 5
replaceitem block ~5 ~1 ~5 slot.container 14 conduit 6
loot insert ~5 ~1 ~5 loot "rsf/warm_ocean"
loot insert ~5 ~1 ~5 loot "chests/underwater_ruin_big"
summon elder_guardian ~0 ~1 ~-1
summon dolphin ~-1 ~1 ~1
summon pufferfish ~1 ~1 ~1
summon tropicalfish ~0 ~-2 ~0
