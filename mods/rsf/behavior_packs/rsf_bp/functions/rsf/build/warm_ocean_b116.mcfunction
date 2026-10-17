# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2804/4224 | 主题内编号: b116/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·U型围合秘密花园驿站 (warm_ocean_conservatory_u_garden)
# 建筑构造: 主体[u_courtyard] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 2格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 prismarine [] replace water
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 prismarine [] replace air
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 prismarine_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 dark_prismarine []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-6 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 diamond_block []
setblock ~-3 ~-6 ~-4 sea_lantern []
setblock ~3 ~-6 ~4 sea_lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~0 ~-4 ~4 slot.container 1 wet_sponge 5
replaceitem block ~0 ~-4 ~4 slot.container 2 copper_ingot 10
replaceitem block ~0 ~-4 ~4 slot.container 3 ink_sac 11
replaceitem block ~0 ~-4 ~4 slot.container 4 trident 5
replaceitem block ~0 ~-4 ~4 slot.container 5 prismarine_shard 21
replaceitem block ~0 ~-4 ~4 slot.container 9 sea_lantern 7
replaceitem block ~0 ~-4 ~4 slot.container 10 heart_of_the_sea 3
replaceitem block ~0 ~-4 ~4 slot.container 11 conduit 4
replaceitem block ~0 ~-4 ~4 slot.container 12 sponge 8
replaceitem block ~0 ~-4 ~4 slot.container 13 cooked_cod 15
replaceitem block ~0 ~-4 ~4 slot.container 14 cooked_salmon 16
loot insert ~0 ~-4 ~4 loot "rsf/warm_ocean"
loot insert ~0 ~-4 ~4 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 prismarine []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 prismarine []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 prismarine_bricks []
fill ~-4 ~7 ~-5 ~4 ~8 ~5 glass []
fill ~-3 ~7 ~-4 ~3 ~7 ~4 air []
setblock ~0 ~8 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 prismarine_bricks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 sea_lantern []
setblock ~2 ~4 ~-9 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~-7 ~0 ~1 ~-7 ~7 ~1 prismarine_bricks []
fill ~7 ~0 ~1 ~7 ~7 ~1 prismarine_bricks []
setblock ~-7 ~8 ~1 sea_lantern []
setblock ~7 ~8 ~1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~5 ~0 sea_lantern []
setblock ~-4 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 wet_sponge 8
replaceitem block ~-4 ~1 ~5 slot.container 1 copper_ingot 13
replaceitem block ~-4 ~1 ~5 slot.container 2 ink_sac 14
replaceitem block ~-4 ~1 ~5 slot.container 3 trident 8
replaceitem block ~-4 ~1 ~5 slot.container 4 prismarine_shard 16
replaceitem block ~-4 ~1 ~5 slot.container 5 prismarine_crystals 13
replaceitem block ~-4 ~1 ~5 slot.container 9 sponge 8
replaceitem block ~-4 ~1 ~5 slot.container 10 cooked_cod 15
replaceitem block ~-4 ~1 ~5 slot.container 11 cooked_salmon 16
replaceitem block ~-4 ~1 ~5 slot.container 12 gold_ingot 8
replaceitem block ~-4 ~1 ~5 slot.container 13 iron_ingot 9
replaceitem block ~-4 ~1 ~5 slot.container 14 emerald 7
loot insert ~-4 ~1 ~5 loot "rsf/warm_ocean"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ink_sac 9
replaceitem block ~4 ~1 ~5 slot.container 1 trident 3
replaceitem block ~4 ~1 ~5 slot.container 2 prismarine_shard 19
replaceitem block ~4 ~1 ~5 slot.container 3 prismarine_crystals 16
replaceitem block ~4 ~1 ~5 slot.container 4 nautilus_shell 8
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 18
replaceitem block ~4 ~1 ~5 slot.container 9 sponge 6
replaceitem block ~4 ~1 ~5 slot.container 10 cooked_cod 13
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_salmon 14
replaceitem block ~4 ~1 ~5 slot.container 12 gold_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 13 iron_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 14 emerald 5
loot insert ~4 ~1 ~5 loot "rsf/warm_ocean"
loot insert ~4 ~1 ~5 loot "chests/underwater_ruin_big"
summon elder_guardian ~0 ~1 ~-1
summon dolphin ~-1 ~1 ~1
summon pufferfish ~1 ~1 ~1
summon tropicalfish ~0 ~2 ~0
