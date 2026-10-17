# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2787/4224 | 主题内编号: b099/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·铁闸门瓮城防御堡 (warm_ocean_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 stone_bricks [] replace water
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 stone_bricks [] replace air
fill ~-6 ~1 ~-6 ~6 ~9 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 dark_prismarine []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 prismarine_bricks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 sea_lantern []
setblock ~-4 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-4 ~3 slot.container 0 prismarine_crystals 18
replaceitem block ~-4 ~-4 ~3 slot.container 1 nautilus_shell 10
replaceitem block ~-4 ~-4 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~-4 ~3 slot.container 3 wet_sponge 5
replaceitem block ~-4 ~-4 ~3 slot.container 4 copper_ingot 10
replaceitem block ~-4 ~-4 ~3 slot.container 5 ink_sac 11
replaceitem block ~-4 ~-4 ~3 slot.container 9 conduit 7
replaceitem block ~-4 ~-4 ~3 slot.container 10 sponge 4
replaceitem block ~-4 ~-4 ~3 slot.container 11 cooked_cod 11
replaceitem block ~-4 ~-4 ~3 slot.container 12 cooked_salmon 12
replaceitem block ~-4 ~-4 ~3 slot.container 13 gold_ingot 11
replaceitem block ~-4 ~-4 ~3 slot.container 14 iron_ingot 12
loot insert ~-4 ~-4 ~3 loot "rsf/warm_ocean"
loot insert ~-4 ~-4 ~3 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~7 ~5 stone_bricks []
fill ~-4 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-5 ~5 ~7 ~5 prismarine_bricks []
fill ~-5 ~8 ~-5 ~5 ~8 ~5 cobblestone_wall []
fill ~-4 ~8 ~-4 ~4 ~8 ~4 air []
setblock ~-5 ~8 ~-5 sea_lantern []
setblock ~-5 ~9 ~-5 sea_lantern []
setblock ~-5 ~8 ~5 sea_lantern []
setblock ~-5 ~9 ~5 sea_lantern []
setblock ~5 ~8 ~-5 sea_lantern []
setblock ~5 ~9 ~-5 sea_lantern []
setblock ~5 ~8 ~5 sea_lantern []
setblock ~5 ~9 ~5 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 prismarine_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 sea_lantern []
setblock ~2 ~4 ~-8 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~-7 ~0 ~2 ~-7 ~5 ~2 prismarine_bricks []
fill ~7 ~0 ~2 ~7 ~5 ~2 prismarine_bricks []
setblock ~-7 ~6 ~2 sea_lantern []
setblock ~7 ~6 ~2 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~4 slot.container 1 wet_sponge 8
replaceitem block ~4 ~1 ~4 slot.container 2 copper_ingot 13
replaceitem block ~4 ~1 ~4 slot.container 3 ink_sac 14
replaceitem block ~4 ~1 ~4 slot.container 4 trident 8
replaceitem block ~4 ~1 ~4 slot.container 5 prismarine_shard 16
replaceitem block ~4 ~1 ~4 slot.container 9 conduit 2
replaceitem block ~4 ~1 ~4 slot.container 10 sponge 6
replaceitem block ~4 ~1 ~4 slot.container 11 cooked_cod 13
replaceitem block ~4 ~1 ~4 slot.container 12 cooked_salmon 14
replaceitem block ~4 ~1 ~4 slot.container 13 gold_ingot 13
replaceitem block ~4 ~1 ~4 slot.container 14 iron_ingot 14
loot insert ~4 ~1 ~4 loot "rsf/warm_ocean"
summon dolphin ~0 ~1 ~-1
summon pufferfish ~-1 ~1 ~1
