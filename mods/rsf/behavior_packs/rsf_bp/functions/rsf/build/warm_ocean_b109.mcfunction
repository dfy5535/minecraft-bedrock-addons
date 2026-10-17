# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2797/4224 | 主题内编号: b109/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·环柱能量矩阵奥术厅 (warm_ocean_arcane_rotunda_nexus)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 prismarine_bricks [] replace water
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 prismarine_bricks [] replace air
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 prismarine_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 prismarine []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cut_sandstone []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 dark_prismarine []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 sea_lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 prismarine_crystals 18
replaceitem block ~3 ~-3 ~4 slot.container 1 nautilus_shell 10
replaceitem block ~3 ~-3 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~3 ~-3 ~4 slot.container 3 wet_sponge 5
replaceitem block ~3 ~-3 ~4 slot.container 4 copper_ingot 10
replaceitem block ~3 ~-3 ~4 slot.container 5 ink_sac 11
replaceitem block ~3 ~-3 ~4 slot.container 9 gold_ingot 8
replaceitem block ~3 ~-3 ~4 slot.container 10 iron_ingot 9
replaceitem block ~3 ~-3 ~4 slot.container 11 emerald 7
replaceitem block ~3 ~-3 ~4 slot.container 12 golden_apple 5
replaceitem block ~3 ~-3 ~4 slot.container 13 sea_lantern 10
replaceitem block ~3 ~-3 ~4 slot.container 14 heart_of_the_sea 6
loot insert ~3 ~-3 ~4 loot "rsf/warm_ocean"
loot insert ~3 ~-3 ~4 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 dark_prismarine []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 sea_lantern []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 sea_lantern []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 sea_lantern []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 sea_lantern []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 sea_lantern []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 sea_lantern []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 sea_lantern []
fill ~1 ~1 ~6 ~1 ~7 ~6 sea_lantern []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 sea_lantern []
fill ~3 ~1 ~6 ~3 ~7 ~6 sea_lantern []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 sea_lantern []
fill ~5 ~1 ~6 ~5 ~7 ~6 sea_lantern []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 sea_lantern []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 sea_lantern []
fill ~-5 ~1 ~-2 ~-5 ~7 ~-2 sea_lantern []
fill ~5 ~1 ~-2 ~5 ~7 ~-2 sea_lantern []
fill ~-5 ~1 ~0 ~-5 ~7 ~0 sea_lantern []
fill ~5 ~1 ~0 ~5 ~7 ~0 sea_lantern []
fill ~-5 ~1 ~2 ~-5 ~7 ~2 sea_lantern []
fill ~5 ~1 ~2 ~5 ~7 ~2 sea_lantern []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 sea_lantern []
fill ~5 ~1 ~4 ~5 ~7 ~4 sea_lantern []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 dark_prismarine []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 prismarine_bricks []
fill ~0 ~14 ~0 ~0 ~16 ~0 sponge []
setblock ~0 ~17 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 mossy_stone_bricks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x9x3) ---
fill ~-7 ~0 ~0 ~-7 ~5 ~0 prismarine_bricks []
fill ~7 ~0 ~0 ~7 ~5 ~0 prismarine_bricks []
setblock ~-7 ~6 ~0 sea_lantern []
setblock ~7 ~6 ~0 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 sea_lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 copper_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 1 ink_sac 14
replaceitem block ~4 ~1 ~5 slot.container 2 trident 8
replaceitem block ~4 ~1 ~5 slot.container 3 prismarine_shard 16
replaceitem block ~4 ~1 ~5 slot.container 4 prismarine_crystals 13
replaceitem block ~4 ~1 ~5 slot.container 5 nautilus_shell 5
replaceitem block ~4 ~1 ~5 slot.container 9 conduit 5
replaceitem block ~4 ~1 ~5 slot.container 10 sponge 9
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_cod 16
replaceitem block ~4 ~1 ~5 slot.container 12 cooked_salmon 10
replaceitem block ~4 ~1 ~5 slot.container 13 gold_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 10
loot insert ~4 ~1 ~5 loot "rsf/warm_ocean"
summon guardian ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
summon dolphin ~1 ~1 ~1
