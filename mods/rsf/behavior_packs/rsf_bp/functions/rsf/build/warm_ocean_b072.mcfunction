# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2760/4224 | 主题内编号: b072/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·L型古商会废墟暗窖 (warm_ocean_ruin_l_guildhall)
# 建筑构造: 主体[l_compound] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 prismarine [] replace water
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 prismarine [] replace air
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 prismarine_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 dark_prismarine []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 prismarine_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 sea_lantern []
setblock ~3 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~4 slot.container 0 wet_sponge 5
replaceitem block ~3 ~-2 ~4 slot.container 1 copper_ingot 10
replaceitem block ~3 ~-2 ~4 slot.container 2 ink_sac 11
replaceitem block ~3 ~-2 ~4 slot.container 3 trident 5
replaceitem block ~3 ~-2 ~4 slot.container 4 prismarine_shard 21
replaceitem block ~3 ~-2 ~4 slot.container 5 prismarine_crystals 18
replaceitem block ~3 ~-2 ~4 slot.container 9 cooked_salmon 15
replaceitem block ~3 ~-2 ~4 slot.container 10 gold_ingot 14
replaceitem block ~3 ~-2 ~4 slot.container 11 iron_ingot 8
replaceitem block ~3 ~-2 ~4 slot.container 12 emerald 6
replaceitem block ~3 ~-2 ~4 slot.container 13 golden_apple 4
replaceitem block ~3 ~-2 ~4 slot.container 14 sea_lantern 9
loot insert ~3 ~-2 ~4 loot "rsf/warm_ocean"
loot insert ~3 ~-2 ~4 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~6 ~6 prismarine []
fill ~-5 ~1 ~0 ~5 ~5 ~6 prismarine_bricks []
fill ~-4 ~1 ~-5 ~-1 ~5 ~5 air []
fill ~-1 ~1 ~1 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 prismarine_bricks []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 glass []
fill ~-2 ~8 ~-3 ~2 ~8 ~3 air []
setblock ~0 ~9 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 prismarine_bricks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 sea_lantern []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 sea_lantern []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 prismarine_slab []
setblock ~0 ~3 ~-8 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~-7 ~0 ~-1 ~-7 ~8 ~-1 prismarine_bricks []
fill ~7 ~0 ~-1 ~7 ~8 ~-1 prismarine_bricks []
setblock ~-7 ~9 ~-1 sea_lantern []
setblock ~7 ~9 ~-1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 sea_lantern []
setblock ~-4 ~1 ~5 stonecutter_block []
setblock ~0 ~1 ~5 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 prismarine_shard 16
replaceitem block ~-4 ~1 ~5 slot.container 1 prismarine_crystals 13
replaceitem block ~-4 ~1 ~5 slot.container 2 nautilus_shell 5
replaceitem block ~-4 ~1 ~5 slot.container 3 rotten_flesh 15
replaceitem block ~-4 ~1 ~5 slot.container 4 wet_sponge 8
replaceitem block ~-4 ~1 ~5 slot.container 5 copper_ingot 13
replaceitem block ~-4 ~1 ~5 slot.container 9 heart_of_the_sea 3
replaceitem block ~-4 ~1 ~5 slot.container 10 conduit 4
replaceitem block ~-4 ~1 ~5 slot.container 11 sponge 8
replaceitem block ~-4 ~1 ~5 slot.container 12 cooked_cod 15
replaceitem block ~-4 ~1 ~5 slot.container 13 cooked_salmon 16
replaceitem block ~-4 ~1 ~5 slot.container 14 gold_ingot 8
loot insert ~-4 ~1 ~5 loot "rsf/warm_ocean"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 nautilus_shell 8
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 18
replaceitem block ~4 ~1 ~5 slot.container 2 wet_sponge 11
replaceitem block ~4 ~1 ~5 slot.container 3 copper_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 4 ink_sac 9
replaceitem block ~4 ~1 ~5 slot.container 5 trident 3
replaceitem block ~4 ~1 ~5 slot.container 9 heart_of_the_sea 1
replaceitem block ~4 ~1 ~5 slot.container 10 conduit 2
replaceitem block ~4 ~1 ~5 slot.container 11 sponge 6
replaceitem block ~4 ~1 ~5 slot.container 12 cooked_cod 13
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_salmon 14
replaceitem block ~4 ~1 ~5 slot.container 14 gold_ingot 13
loot insert ~4 ~1 ~5 loot "rsf/warm_ocean"
loot insert ~4 ~1 ~5 loot "chests/underwater_ruin_big"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
