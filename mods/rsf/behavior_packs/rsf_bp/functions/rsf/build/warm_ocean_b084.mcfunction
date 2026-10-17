# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2772/4224 | 主题内编号: b084/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·露天采石场与矿道库 (warm_ocean_mine_sunken_quarry)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 prismarine [] replace water
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 prismarine [] replace air
fill ~-6 ~1 ~-7 ~6 ~7 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 prismarine_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 dark_prismarine []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 prismarine_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 sea_lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 prismarine_shard 21
replaceitem block ~3 ~-3 ~4 slot.container 1 prismarine_crystals 18
replaceitem block ~3 ~-3 ~4 slot.container 2 nautilus_shell 10
replaceitem block ~3 ~-3 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~-3 ~4 slot.container 4 wet_sponge 5
replaceitem block ~3 ~-3 ~4 slot.container 5 copper_ingot 10
replaceitem block ~3 ~-3 ~4 slot.container 9 heart_of_the_sea 4
replaceitem block ~3 ~-3 ~4 slot.container 10 conduit 5
replaceitem block ~3 ~-3 ~4 slot.container 11 sponge 9
replaceitem block ~3 ~-3 ~4 slot.container 12 cooked_cod 16
replaceitem block ~3 ~-3 ~4 slot.container 13 cooked_salmon 10
replaceitem block ~3 ~-3 ~4 slot.container 14 gold_ingot 9
loot insert ~3 ~-3 ~4 loot "rsf/warm_ocean"
loot insert ~3 ~-3 ~4 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 prismarine []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 prismarine_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 prismarine_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~5 ~-6 ~-5 ~7 ~-6 sea_lantern []
setblock ~-5 ~8 ~-6 sea_lantern []
fill ~-5 ~5 ~6 ~-5 ~7 ~6 sea_lantern []
setblock ~-5 ~8 ~6 sea_lantern []
fill ~5 ~5 ~-6 ~5 ~7 ~-6 sea_lantern []
setblock ~5 ~8 ~-6 sea_lantern []
fill ~5 ~5 ~6 ~5 ~7 ~6 sea_lantern []
setblock ~5 ~8 ~6 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 dark_prismarine []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~-7 ~0 ~-1 ~-7 ~5 ~-1 prismarine_bricks []
fill ~7 ~0 ~-1 ~7 ~5 ~-1 prismarine_bricks []
setblock ~-7 ~6 ~-1 sea_lantern []
setblock ~7 ~6 ~-1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~7 ~0 sea_lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 wet_sponge 8
replaceitem block ~-4 ~1 ~5 slot.container 1 copper_ingot 13
replaceitem block ~-4 ~1 ~5 slot.container 2 ink_sac 14
replaceitem block ~-4 ~1 ~5 slot.container 3 trident 8
replaceitem block ~-4 ~1 ~5 slot.container 4 prismarine_shard 16
replaceitem block ~-4 ~1 ~5 slot.container 5 prismarine_crystals 13
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_ingot 8
replaceitem block ~-4 ~1 ~5 slot.container 10 emerald 6
replaceitem block ~-4 ~1 ~5 slot.container 11 golden_apple 4
replaceitem block ~-4 ~1 ~5 slot.container 12 sea_lantern 9
replaceitem block ~-4 ~1 ~5 slot.container 13 heart_of_the_sea 5
replaceitem block ~-4 ~1 ~5 slot.container 14 conduit 6
loot insert ~-4 ~1 ~5 loot "rsf/warm_ocean"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ink_sac 9
replaceitem block ~4 ~1 ~5 slot.container 1 trident 3
replaceitem block ~4 ~1 ~5 slot.container 2 prismarine_shard 19
replaceitem block ~4 ~1 ~5 slot.container 3 prismarine_crystals 16
replaceitem block ~4 ~1 ~5 slot.container 4 nautilus_shell 8
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 18
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 10 emerald 11
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 2
replaceitem block ~4 ~1 ~5 slot.container 12 sea_lantern 7
replaceitem block ~4 ~1 ~5 slot.container 13 heart_of_the_sea 3
replaceitem block ~4 ~1 ~5 slot.container 14 conduit 4
loot insert ~4 ~1 ~5 loot "rsf/warm_ocean"
loot insert ~4 ~1 ~5 loot "chests/underwater_ruin_big"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
