# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2799/4224 | 主题内编号: b111/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·地下禁忌书库与炼药室 (warm_ocean_arcane_sunken_archive)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 dark_prismarine []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 prismarine []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
setblock ~-2 ~-5 ~0 blast_furnace []
setblock ~2 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 sea_lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 wet_sponge 5
replaceitem block ~2 ~-3 ~3 slot.container 1 copper_ingot 10
replaceitem block ~2 ~-3 ~3 slot.container 2 ink_sac 11
replaceitem block ~2 ~-3 ~3 slot.container 3 trident 5
replaceitem block ~2 ~-3 ~3 slot.container 4 prismarine_shard 21
replaceitem block ~2 ~-3 ~3 slot.container 5 prismarine_crystals 18
replaceitem block ~2 ~-3 ~3 slot.container 9 sponge 6
replaceitem block ~2 ~-3 ~3 slot.container 10 cooked_cod 13
replaceitem block ~2 ~-3 ~3 slot.container 11 cooked_salmon 14
replaceitem block ~2 ~-3 ~3 slot.container 12 gold_ingot 13
replaceitem block ~2 ~-3 ~3 slot.container 13 iron_ingot 14
replaceitem block ~2 ~-3 ~3 slot.container 14 emerald 5
loot insert ~2 ~-3 ~3 loot "rsf/warm_ocean"
loot insert ~2 ~-3 ~3 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 prismarine_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 prismarine_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 prismarine_bricks []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 prismarine []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 diamond_block []
setblock ~0 ~10 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 cobblestone_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~-7 ~0 ~2 ~-7 ~7 ~2 prismarine_bricks []
fill ~7 ~0 ~2 ~7 ~7 ~2 prismarine_bricks []
setblock ~-7 ~8 ~2 sea_lantern []
setblock ~7 ~8 ~2 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~5 ~0 sea_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~5 bookshelf []
setblock ~4 ~1 ~5 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 trident 8
replaceitem block ~4 ~1 ~5 slot.container 1 prismarine_shard 16
replaceitem block ~4 ~1 ~5 slot.container 2 prismarine_crystals 13
replaceitem block ~4 ~1 ~5 slot.container 3 nautilus_shell 5
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 5 wet_sponge 8
replaceitem block ~4 ~1 ~5 slot.container 9 emerald 11
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 2
replaceitem block ~4 ~1 ~5 slot.container 11 sea_lantern 7
replaceitem block ~4 ~1 ~5 slot.container 12 heart_of_the_sea 3
replaceitem block ~4 ~1 ~5 slot.container 13 conduit 4
replaceitem block ~4 ~1 ~5 slot.container 14 sponge 8
loot insert ~4 ~1 ~5 loot "rsf/warm_ocean"
summon dolphin ~0 ~1 ~-1
summon pufferfish ~-1 ~1 ~1
