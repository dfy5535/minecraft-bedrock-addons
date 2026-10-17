# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2767/4224 | 主题内编号: b079/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·四角结界守护柱阵 (warm_ocean_totem_citadel_ward)
# 建筑构造: 主体[fortress_citadel] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 dark_prismarine []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 prismarine []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 sea_lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~3 ~-3 ~4 slot.container 1 wet_sponge 5
replaceitem block ~3 ~-3 ~4 slot.container 2 copper_ingot 10
replaceitem block ~3 ~-3 ~4 slot.container 3 ink_sac 11
replaceitem block ~3 ~-3 ~4 slot.container 4 trident 5
replaceitem block ~3 ~-3 ~4 slot.container 5 prismarine_shard 21
replaceitem block ~3 ~-3 ~4 slot.container 9 gold_ingot 13
replaceitem block ~3 ~-3 ~4 slot.container 10 iron_ingot 14
replaceitem block ~3 ~-3 ~4 slot.container 11 emerald 5
replaceitem block ~3 ~-3 ~4 slot.container 12 golden_apple 3
replaceitem block ~3 ~-3 ~4 slot.container 13 sea_lantern 8
replaceitem block ~3 ~-3 ~4 slot.container 14 heart_of_the_sea 4
loot insert ~3 ~-3 ~4 loot "rsf/warm_ocean"
loot insert ~3 ~-3 ~4 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~9 ~-5 prismarine_bricks []
setblock ~-5 ~10 ~-6 sea_lantern []
fill ~-5 ~1 ~5 ~-4 ~9 ~6 prismarine_bricks []
setblock ~-5 ~10 ~5 sea_lantern []
fill ~4 ~1 ~-6 ~5 ~9 ~-5 prismarine_bricks []
setblock ~4 ~10 ~-6 sea_lantern []
fill ~4 ~1 ~5 ~5 ~9 ~6 prismarine_bricks []
setblock ~4 ~10 ~5 sea_lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~7 ~-6 ~-5 ~9 ~-6 sea_lantern []
setblock ~-5 ~10 ~-6 sea_lantern []
fill ~-5 ~7 ~6 ~-5 ~9 ~6 sea_lantern []
setblock ~-5 ~10 ~6 sea_lantern []
fill ~5 ~7 ~-6 ~5 ~9 ~-6 sea_lantern []
setblock ~5 ~10 ~-6 sea_lantern []
fill ~5 ~7 ~6 ~5 ~9 ~6 sea_lantern []
setblock ~5 ~10 ~6 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 stone_bricks []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x9x3) ---
fill ~-7 ~0 ~0 ~-7 ~5 ~0 prismarine_bricks []
fill ~7 ~0 ~0 ~7 ~5 ~0 prismarine_bricks []
setblock ~-7 ~6 ~0 sea_lantern []
setblock ~7 ~6 ~0 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~5 ~0 sea_lantern []
fill ~-4 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 emerald_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 trident 8
replaceitem block ~4 ~1 ~5 slot.container 1 prismarine_shard 16
replaceitem block ~4 ~1 ~5 slot.container 2 prismarine_crystals 13
replaceitem block ~4 ~1 ~5 slot.container 3 nautilus_shell 5
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 5 wet_sponge 8
replaceitem block ~4 ~1 ~5 slot.container 9 conduit 3
replaceitem block ~4 ~1 ~5 slot.container 10 sponge 7
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_cod 14
replaceitem block ~4 ~1 ~5 slot.container 12 cooked_salmon 15
replaceitem block ~4 ~1 ~5 slot.container 13 gold_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 8
loot insert ~4 ~1 ~5 loot "rsf/warm_ocean"
summon guardian ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
summon dolphin ~1 ~1 ~1
