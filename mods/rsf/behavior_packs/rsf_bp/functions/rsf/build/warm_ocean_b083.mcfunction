# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2771/4224 | 主题内编号: b083/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·铁砧锻造与模具工坊 (warm_ocean_mine_smithing_foundry)
# 建筑构造: 主体[l_compound] + 屋顶[dome_glass] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 dark_prismarine []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 sea_lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 trident 5
replaceitem block ~3 ~-3 ~4 slot.container 1 prismarine_shard 21
replaceitem block ~3 ~-3 ~4 slot.container 2 prismarine_crystals 18
replaceitem block ~3 ~-3 ~4 slot.container 3 nautilus_shell 10
replaceitem block ~3 ~-3 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~3 ~-3 ~4 slot.container 5 wet_sponge 5
replaceitem block ~3 ~-3 ~4 slot.container 9 sea_lantern 11
replaceitem block ~3 ~-3 ~4 slot.container 10 heart_of_the_sea 7
replaceitem block ~3 ~-3 ~4 slot.container 11 conduit 1
replaceitem block ~3 ~-3 ~4 slot.container 12 sponge 5
replaceitem block ~3 ~-3 ~4 slot.container 13 cooked_cod 12
replaceitem block ~3 ~-3 ~4 slot.container 14 cooked_salmon 13
loot insert ~3 ~-3 ~4 loot "rsf/warm_ocean"
loot insert ~3 ~-3 ~4 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~6 ~6 stone_bricks []
fill ~-5 ~1 ~0 ~5 ~5 ~6 prismarine []
fill ~-4 ~1 ~-5 ~-1 ~5 ~5 air []
fill ~-1 ~1 ~1 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 prismarine_bricks []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 glass []
fill ~-2 ~8 ~-3 ~2 ~8 ~3 air []
setblock ~0 ~9 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~5 ~-2 sea_lantern []
fill ~-6 ~0 ~2 ~-6 ~5 ~2 sea_lantern []
fill ~6 ~0 ~-2 ~6 ~5 ~-2 sea_lantern []
fill ~6 ~0 ~2 ~6 ~5 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 prismarine_bricks []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 prismarine_bricks []
setblock ~-7 ~5 ~-2 sea_lantern []
setblock ~7 ~5 ~-2 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 sea_lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 1 wet_sponge 8
replaceitem block ~4 ~1 ~5 slot.container 2 copper_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 3 ink_sac 14
replaceitem block ~4 ~1 ~5 slot.container 4 trident 8
replaceitem block ~4 ~1 ~5 slot.container 5 prismarine_shard 16
replaceitem block ~4 ~1 ~5 slot.container 9 cooked_cod 16
replaceitem block ~4 ~1 ~5 slot.container 10 cooked_salmon 10
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 13 emerald 8
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 6
loot insert ~4 ~1 ~5 loot "rsf/warm_ocean"
summon tropicalfish ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon elder_guardian ~0 ~-3 ~0
