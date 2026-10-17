# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2788/4224 | 主题内编号: b100/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·半地下暗堡火力点 (warm_ocean_bunker_sunken_pillbox)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 11x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 prismarine [] replace water
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 prismarine [] replace air
fill ~-5 ~1 ~-6 ~5 ~7 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 prismarine_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 dark_prismarine []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 prismarine []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
setblock ~-2 ~-5 ~0 blast_furnace []
setblock ~2 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 sea_lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 prismarine_shard 21
replaceitem block ~2 ~-3 ~3 slot.container 1 prismarine_crystals 18
replaceitem block ~2 ~-3 ~3 slot.container 2 nautilus_shell 10
replaceitem block ~2 ~-3 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~2 ~-3 ~3 slot.container 4 wet_sponge 5
replaceitem block ~2 ~-3 ~3 slot.container 5 copper_ingot 10
replaceitem block ~2 ~-3 ~3 slot.container 9 heart_of_the_sea 2
replaceitem block ~2 ~-3 ~3 slot.container 10 conduit 3
replaceitem block ~2 ~-3 ~3 slot.container 11 sponge 7
replaceitem block ~2 ~-3 ~3 slot.container 12 cooked_cod 14
replaceitem block ~2 ~-3 ~3 slot.container 13 cooked_salmon 15
replaceitem block ~2 ~-3 ~3 slot.container 14 gold_ingot 14
loot insert ~2 ~-3 ~3 loot "rsf/warm_ocean"
loot insert ~2 ~-3 ~3 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 prismarine []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 prismarine_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 prismarine_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~5 ~-5 ~4 ~5 ~5 prismarine_bricks []
fill ~-4 ~6 ~-5 ~4 ~6 ~5 cobblestone_wall []
fill ~-3 ~6 ~-4 ~3 ~6 ~4 air []
setblock ~-4 ~6 ~-5 sea_lantern []
setblock ~-4 ~7 ~-5 sea_lantern []
setblock ~-4 ~6 ~5 sea_lantern []
setblock ~-4 ~7 ~5 sea_lantern []
setblock ~4 ~6 ~-5 sea_lantern []
setblock ~4 ~7 ~-5 sea_lantern []
setblock ~4 ~6 ~5 sea_lantern []
setblock ~4 ~7 ~5 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 prismarine []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 6x8x4) ---
fill ~-6 ~0 ~-2 ~-6 ~6 ~-2 prismarine_bricks []
fill ~6 ~0 ~-2 ~6 ~6 ~-2 prismarine_bricks []
setblock ~-6 ~7 ~-2 sea_lantern []
setblock ~6 ~7 ~-2 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 wet_sponge 8
replaceitem block ~-3 ~1 ~4 slot.container 1 copper_ingot 13
replaceitem block ~-3 ~1 ~4 slot.container 2 ink_sac 14
replaceitem block ~-3 ~1 ~4 slot.container 3 trident 8
replaceitem block ~-3 ~1 ~4 slot.container 4 prismarine_shard 16
replaceitem block ~-3 ~1 ~4 slot.container 5 prismarine_crystals 13
replaceitem block ~-3 ~1 ~4 slot.container 9 cooked_salmon 12
replaceitem block ~-3 ~1 ~4 slot.container 10 gold_ingot 11
replaceitem block ~-3 ~1 ~4 slot.container 11 iron_ingot 12
replaceitem block ~-3 ~1 ~4 slot.container 12 emerald 10
replaceitem block ~-3 ~1 ~4 slot.container 13 golden_apple 8
replaceitem block ~-3 ~1 ~4 slot.container 14 sea_lantern 6
loot insert ~-3 ~1 ~4 loot "rsf/warm_ocean"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ink_sac 9
replaceitem block ~3 ~1 ~4 slot.container 1 trident 3
replaceitem block ~3 ~1 ~4 slot.container 2 prismarine_shard 19
replaceitem block ~3 ~1 ~4 slot.container 3 prismarine_crystals 16
replaceitem block ~3 ~1 ~4 slot.container 4 nautilus_shell 8
replaceitem block ~3 ~1 ~4 slot.container 5 rotten_flesh 18
replaceitem block ~3 ~1 ~4 slot.container 9 cooked_salmon 10
replaceitem block ~3 ~1 ~4 slot.container 10 gold_ingot 9
replaceitem block ~3 ~1 ~4 slot.container 11 iron_ingot 10
replaceitem block ~3 ~1 ~4 slot.container 12 emerald 8
replaceitem block ~3 ~1 ~4 slot.container 13 golden_apple 6
replaceitem block ~3 ~1 ~4 slot.container 14 sea_lantern 11
loot insert ~3 ~1 ~4 loot "rsf/warm_ocean"
loot insert ~3 ~1 ~4 loot "chests/underwater_ruin_big"
summon pufferfish ~0 ~1 ~-1
summon tropicalfish ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
