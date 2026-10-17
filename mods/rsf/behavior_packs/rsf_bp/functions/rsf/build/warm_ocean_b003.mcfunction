# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2691/4224 | 主题内编号: b003/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·环柱巨石方尖祭坛 (warm_ocean_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pagoda_double] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 dark_prismarine []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 prismarine []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 prismarine_bricks []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 sea_lantern []
setblock ~2 ~-5 ~0 sea_lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 copper_ingot 10
replaceitem block ~0 ~-3 ~-4 slot.container 1 ink_sac 11
replaceitem block ~0 ~-3 ~-4 slot.container 2 trident 5
replaceitem block ~0 ~-3 ~-4 slot.container 3 prismarine_shard 21
replaceitem block ~0 ~-3 ~-4 slot.container 4 prismarine_crystals 18
replaceitem block ~0 ~-3 ~-4 slot.container 5 nautilus_shell 10
replaceitem block ~0 ~-3 ~-4 slot.container 9 sea_lantern 12
replaceitem block ~0 ~-3 ~-4 slot.container 10 heart_of_the_sea 1
replaceitem block ~0 ~-3 ~-4 slot.container 11 conduit 2
replaceitem block ~0 ~-3 ~-4 slot.container 12 sponge 6
replaceitem block ~0 ~-3 ~-4 slot.container 13 cooked_cod 13
replaceitem block ~0 ~-3 ~-4 slot.container 14 cooked_salmon 14
loot insert ~0 ~-3 ~-4 loot "rsf/warm_ocean"
loot insert ~0 ~-3 ~-4 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 prismarine_bricks []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 sea_lantern []
fill ~-5 ~1 ~6 ~-5 ~8 ~6 sea_lantern []
fill ~-3 ~1 ~-6 ~-3 ~8 ~-6 sea_lantern []
fill ~-3 ~1 ~6 ~-3 ~8 ~6 sea_lantern []
fill ~-1 ~1 ~-6 ~-1 ~8 ~-6 sea_lantern []
fill ~-1 ~1 ~6 ~-1 ~8 ~6 sea_lantern []
fill ~1 ~1 ~-6 ~1 ~8 ~-6 sea_lantern []
fill ~1 ~1 ~6 ~1 ~8 ~6 sea_lantern []
fill ~3 ~1 ~-6 ~3 ~8 ~-6 sea_lantern []
fill ~3 ~1 ~6 ~3 ~8 ~6 sea_lantern []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 sea_lantern []
fill ~5 ~1 ~6 ~5 ~8 ~6 sea_lantern []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 sea_lantern []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 sea_lantern []
fill ~-5 ~1 ~-2 ~-5 ~8 ~-2 sea_lantern []
fill ~5 ~1 ~-2 ~5 ~8 ~-2 sea_lantern []
fill ~-5 ~1 ~0 ~-5 ~8 ~0 sea_lantern []
fill ~5 ~1 ~0 ~5 ~8 ~0 sea_lantern []
fill ~-5 ~1 ~2 ~-5 ~8 ~2 sea_lantern []
fill ~5 ~1 ~2 ~5 ~8 ~2 sea_lantern []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 sea_lantern []
fill ~5 ~1 ~4 ~5 ~8 ~4 sea_lantern []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 dark_prismarine_slab []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 stone_bricks []
fill ~-4 ~11 ~-5 ~4 ~11 ~5 stone_brick_slab []
setblock ~0 ~12 ~0 emerald_block []
setblock ~0 ~13 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 sea_lantern []
setblock ~0 ~4 ~-8 gold_block []
setblock ~0 ~5 ~-8 sea_lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 sea_lantern []
setblock ~0 ~4 ~8 gold_block []
setblock ~0 ~5 ~8 sea_lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 sea_lantern []
setblock ~-7 ~4 ~0 gold_block []
setblock ~-7 ~5 ~0 sea_lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 sea_lantern []
setblock ~7 ~4 ~0 gold_block []
setblock ~7 ~5 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~-7 ~0 ~2 ~-7 ~4 ~2 prismarine_bricks []
fill ~7 ~0 ~2 ~7 ~4 ~2 prismarine_bricks []
setblock ~-7 ~5 ~2 sea_lantern []
setblock ~7 ~5 ~2 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 sea_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 diamond_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 1 wet_sponge 8
replaceitem block ~4 ~1 ~5 slot.container 2 copper_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 3 ink_sac 14
replaceitem block ~4 ~1 ~5 slot.container 4 trident 8
replaceitem block ~4 ~1 ~5 slot.container 5 prismarine_shard 16
replaceitem block ~4 ~1 ~5 slot.container 9 cooked_cod 13
replaceitem block ~4 ~1 ~5 slot.container 10 cooked_salmon 14
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 13 emerald 5
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 3
loot insert ~4 ~1 ~5 loot "rsf/warm_ocean"
summon dolphin ~0 ~1 ~-1
summon pufferfish ~-1 ~1 ~1
