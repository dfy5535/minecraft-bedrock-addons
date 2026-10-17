# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2816/4224 | 主题内编号: b128/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·U型紫禁朝堂大殿与地底金库 (warm_ocean_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 4格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 prismarine [] replace water
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 prismarine [] replace air
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 prismarine_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 dark_prismarine []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 prismarine_bricks []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~4 sea_lantern []
setblock ~3 ~-6 ~-4 sea_lantern []
setblock ~3 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~3 ~-4 ~4 slot.container 1 wet_sponge 5
replaceitem block ~3 ~-4 ~4 slot.container 2 copper_ingot 10
replaceitem block ~3 ~-4 ~4 slot.container 3 ink_sac 11
replaceitem block ~3 ~-4 ~4 slot.container 4 trident 5
replaceitem block ~3 ~-4 ~4 slot.container 5 prismarine_shard 21
replaceitem block ~3 ~-4 ~4 slot.container 9 cooked_cod 14
replaceitem block ~3 ~-4 ~4 slot.container 10 cooked_salmon 15
replaceitem block ~3 ~-4 ~4 slot.container 11 gold_ingot 14
replaceitem block ~3 ~-4 ~4 slot.container 12 iron_ingot 8
replaceitem block ~3 ~-4 ~4 slot.container 13 emerald 6
replaceitem block ~3 ~-4 ~4 slot.container 14 golden_apple 4
loot insert ~3 ~-4 ~4 loot "rsf/warm_ocean"
loot insert ~3 ~-4 ~4 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-7 ~6 ~8 ~7 prismarine []
fill ~-5 ~1 ~-6 ~5 ~7 ~6 air []
fill ~-2 ~1 ~-7 ~2 ~8 ~0 air []
fill ~-2 ~0 ~-7 ~2 ~0 ~0 prismarine []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-8 ~7 ~8 ~8 prismarine_slab []
fill ~-5 ~9 ~-6 ~5 ~10 ~6 prismarine_bricks []
fill ~-6 ~11 ~-7 ~6 ~11 ~7 prismarine_brick_slab []
setblock ~0 ~12 ~0 gold_block []
setblock ~0 ~13 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 cobblestone_wall []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~-8 ~0 ~-3 ~-8 ~4 ~-3 prismarine_bricks []
fill ~8 ~0 ~-3 ~8 ~4 ~-3 prismarine_bricks []
setblock ~-8 ~5 ~-3 sea_lantern []
setblock ~8 ~5 ~-3 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~7 ~0 sea_lantern []
setblock ~-5 ~1 ~6 blast_furnace []
setblock ~-4 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 prismarine_shard 16
replaceitem block ~-5 ~1 ~6 slot.container 1 prismarine_crystals 13
replaceitem block ~-5 ~1 ~6 slot.container 2 nautilus_shell 5
replaceitem block ~-5 ~1 ~6 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~6 slot.container 4 wet_sponge 8
replaceitem block ~-5 ~1 ~6 slot.container 5 copper_ingot 13
replaceitem block ~-5 ~1 ~6 slot.container 9 golden_apple 4
replaceitem block ~-5 ~1 ~6 slot.container 10 sea_lantern 9
replaceitem block ~-5 ~1 ~6 slot.container 11 heart_of_the_sea 5
replaceitem block ~-5 ~1 ~6 slot.container 12 conduit 6
replaceitem block ~-5 ~1 ~6 slot.container 13 sponge 10
replaceitem block ~-5 ~1 ~6 slot.container 14 cooked_cod 10
loot insert ~-5 ~1 ~6 loot "rsf/warm_ocean"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 nautilus_shell 8
replaceitem block ~5 ~1 ~6 slot.container 1 rotten_flesh 18
replaceitem block ~5 ~1 ~6 slot.container 2 wet_sponge 11
replaceitem block ~5 ~1 ~6 slot.container 3 copper_ingot 8
replaceitem block ~5 ~1 ~6 slot.container 4 ink_sac 9
replaceitem block ~5 ~1 ~6 slot.container 5 trident 3
replaceitem block ~5 ~1 ~6 slot.container 9 golden_apple 2
replaceitem block ~5 ~1 ~6 slot.container 10 sea_lantern 7
replaceitem block ~5 ~1 ~6 slot.container 11 heart_of_the_sea 3
replaceitem block ~5 ~1 ~6 slot.container 12 conduit 4
replaceitem block ~5 ~1 ~6 slot.container 13 sponge 8
replaceitem block ~5 ~1 ~6 slot.container 14 cooked_cod 15
loot insert ~5 ~1 ~6 loot "rsf/warm_ocean"
loot insert ~5 ~1 ~6 loot "chests/underwater_ruin_big"
summon elder_guardian ~0 ~1 ~-1
summon dolphin ~-1 ~1 ~1
summon pufferfish ~1 ~1 ~1
summon tropicalfish ~0 ~-3 ~0
