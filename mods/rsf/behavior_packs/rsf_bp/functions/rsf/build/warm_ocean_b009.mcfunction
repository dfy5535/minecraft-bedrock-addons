# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2697/4224 | 主题内编号: b009/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·铁栏双室地下死牢 (warm_ocean_dungeon_iron_prison)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 prismarine_bricks [] replace water
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 prismarine_bricks [] replace air
fill ~-6 ~1 ~-7 ~6 ~7 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 prismarine_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 prismarine []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cut_sandstone []
setblock ~0 ~0 ~0 sponge []

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

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 prismarine_bricks []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 dark_prismarine []
fill ~0 ~1 ~-6 ~0 ~2 ~6 dark_prismarine []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~5 ~-6 ~4 ~5 ~6 prismarine_bricks []
fill ~-3 ~6 ~-5 ~3 ~7 ~5 glass []
fill ~-2 ~6 ~-4 ~2 ~6 ~4 air []
setblock ~0 ~7 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 dark_prismarine []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 sea_lantern []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 sea_lantern []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 prismarine_brick_slab []
setblock ~0 ~3 ~-8 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~-7 ~0 ~2 ~-7 ~5 ~2 prismarine_bricks []
fill ~7 ~0 ~2 ~7 ~5 ~2 prismarine_bricks []
setblock ~-7 ~6 ~2 sea_lantern []
setblock ~7 ~6 ~2 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~4 ~0 sea_lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 sponge []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 prismarine_crystals 13
replaceitem block ~4 ~1 ~5 slot.container 1 nautilus_shell 5
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 3 wet_sponge 8
replaceitem block ~4 ~1 ~5 slot.container 4 copper_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 5 ink_sac 14
replaceitem block ~4 ~1 ~5 slot.container 9 conduit 3
replaceitem block ~4 ~1 ~5 slot.container 10 sponge 7
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_cod 14
replaceitem block ~4 ~1 ~5 slot.container 12 cooked_salmon 15
replaceitem block ~4 ~1 ~5 slot.container 13 gold_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 8
loot insert ~4 ~1 ~5 loot "rsf/warm_ocean"
summon dolphin ~0 ~1 ~-1
summon pufferfish ~-1 ~1 ~1
