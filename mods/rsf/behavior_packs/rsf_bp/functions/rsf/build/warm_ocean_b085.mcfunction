# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2773/4224 | 主题内编号: b085/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·双子烟囱砖石窑厂 (warm_ocean_mine_twin_kiln)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 prismarine_bricks [] replace water
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 prismarine_bricks [] replace air
fill ~-6 ~1 ~-6 ~6 ~10 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 prismarine_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 prismarine []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 cut_sandstone []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 dark_prismarine []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-4 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-4 ~3 sea_lantern []
setblock ~4 ~-4 ~-3 sea_lantern []
setblock ~4 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-2 ~3 slot.container 0 prismarine_shard 21
replaceitem block ~4 ~-2 ~3 slot.container 1 prismarine_crystals 18
replaceitem block ~4 ~-2 ~3 slot.container 2 nautilus_shell 10
replaceitem block ~4 ~-2 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~-2 ~3 slot.container 4 wet_sponge 5
replaceitem block ~4 ~-2 ~3 slot.container 5 copper_ingot 10
replaceitem block ~4 ~-2 ~3 slot.container 9 sponge 10
replaceitem block ~4 ~-2 ~3 slot.container 10 cooked_cod 10
replaceitem block ~4 ~-2 ~3 slot.container 11 cooked_salmon 11
replaceitem block ~4 ~-2 ~3 slot.container 12 gold_ingot 10
replaceitem block ~4 ~-2 ~3 slot.container 13 iron_ingot 11
replaceitem block ~4 ~-2 ~3 slot.container 14 emerald 9
loot insert ~4 ~-2 ~3 loot "rsf/warm_ocean"
loot insert ~4 ~-2 ~3 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~9 ~5 prismarine_bricks []
fill ~2 ~1 ~-5 ~5 ~9 ~5 prismarine_bricks []
fill ~-4 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~4 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 dark_prismarine []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 dark_prismarine []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 prismarine_bricks []
fill ~0 ~14 ~0 ~0 ~16 ~0 sponge []
setblock ~0 ~17 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 dark_prismarine []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 sea_lantern []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 sea_lantern []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 prismarine_brick_slab []
setblock ~0 ~3 ~-7 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 prismarine_bricks []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 prismarine_bricks []
setblock ~-7 ~7 ~-2 sea_lantern []
setblock ~7 ~7 ~-2 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~7 ~0 sea_lantern []
setblock ~-4 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 copper_ingot 13
replaceitem block ~4 ~1 ~4 slot.container 1 ink_sac 14
replaceitem block ~4 ~1 ~4 slot.container 2 trident 8
replaceitem block ~4 ~1 ~4 slot.container 3 prismarine_shard 16
replaceitem block ~4 ~1 ~4 slot.container 4 prismarine_crystals 13
replaceitem block ~4 ~1 ~4 slot.container 5 nautilus_shell 5
replaceitem block ~4 ~1 ~4 slot.container 9 sea_lantern 7
replaceitem block ~4 ~1 ~4 slot.container 10 heart_of_the_sea 3
replaceitem block ~4 ~1 ~4 slot.container 11 conduit 4
replaceitem block ~4 ~1 ~4 slot.container 12 sponge 8
replaceitem block ~4 ~1 ~4 slot.container 13 cooked_cod 15
replaceitem block ~4 ~1 ~4 slot.container 14 cooked_salmon 16
loot insert ~4 ~1 ~4 loot "rsf/warm_ocean"
summon guardian ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
summon dolphin ~1 ~1 ~1
