# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2703/4224 | 主题内编号: b015/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·竖井阶梯深渊地牢 (warm_ocean_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[dome_glass] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 6格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-7 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~-7 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~1 ~-6 ~5 ~9 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 dark_prismarine []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-7 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-7 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-7 ~3 sea_lantern []
setblock ~2 ~-7 ~-3 sea_lantern []
setblock ~2 ~-5 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-5 ~3 slot.container 0 prismarine_crystals 18
replaceitem block ~2 ~-5 ~3 slot.container 1 nautilus_shell 10
replaceitem block ~2 ~-5 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~2 ~-5 ~3 slot.container 3 wet_sponge 5
replaceitem block ~2 ~-5 ~3 slot.container 4 copper_ingot 10
replaceitem block ~2 ~-5 ~3 slot.container 5 ink_sac 11
replaceitem block ~2 ~-5 ~3 slot.container 9 conduit 4
replaceitem block ~2 ~-5 ~3 slot.container 10 sponge 8
replaceitem block ~2 ~-5 ~3 slot.container 11 cooked_cod 15
replaceitem block ~2 ~-5 ~3 slot.container 12 cooked_salmon 16
replaceitem block ~2 ~-5 ~3 slot.container 13 gold_ingot 8
replaceitem block ~2 ~-5 ~3 slot.container 14 iron_ingot 9
loot insert ~2 ~-5 ~3 loot "rsf/warm_ocean"
loot insert ~2 ~-5 ~3 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 stone_bricks []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 prismarine_bricks []
fill ~-2 ~5 ~-3 ~2 ~7 ~3 prismarine []
fill ~-2 ~1 ~-3 ~2 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 prismarine_bricks []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 glass []
fill ~-2 ~8 ~-3 ~2 ~8 ~3 air []
setblock ~0 ~9 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~4 ~-7 sea_lantern []
setblock ~-6 ~5 ~-7 sea_lantern []
fill ~-6 ~0 ~7 ~-6 ~4 ~7 sea_lantern []
setblock ~-6 ~5 ~7 sea_lantern []
fill ~6 ~0 ~-7 ~6 ~4 ~-7 sea_lantern []
setblock ~6 ~5 ~-7 sea_lantern []
fill ~6 ~0 ~7 ~6 ~4 ~7 sea_lantern []
setblock ~6 ~5 ~7 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~-6 ~0 ~-2 ~-6 ~6 ~-2 prismarine_bricks []
fill ~6 ~0 ~-2 ~6 ~6 ~-2 prismarine_bricks []
setblock ~-6 ~7 ~-2 sea_lantern []
setblock ~6 ~7 ~-2 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~0 ~1 ~0 diamond_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 trident 8
replaceitem block ~3 ~1 ~4 slot.container 1 prismarine_shard 16
replaceitem block ~3 ~1 ~4 slot.container 2 prismarine_crystals 13
replaceitem block ~3 ~1 ~4 slot.container 3 nautilus_shell 5
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 5 wet_sponge 8
replaceitem block ~3 ~1 ~4 slot.container 9 sea_lantern 7
replaceitem block ~3 ~1 ~4 slot.container 10 heart_of_the_sea 3
replaceitem block ~3 ~1 ~4 slot.container 11 conduit 4
replaceitem block ~3 ~1 ~4 slot.container 12 sponge 8
replaceitem block ~3 ~1 ~4 slot.container 13 cooked_cod 15
replaceitem block ~3 ~1 ~4 slot.container 14 cooked_salmon 16
loot insert ~3 ~1 ~4 loot "rsf/warm_ocean"
summon dolphin ~0 ~1 ~-1
summon pufferfish ~-1 ~1 ~1
