# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2811/4224 | 主题内编号: b123/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·四角塔楼领主城堡复合体 (warm_ocean_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 5格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 dark_prismarine []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 air []
fill ~-5 ~-6 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-6 ~0 ~0 ~-6 ladder ["facing_direction"=3]
setblock ~-4 ~-6 ~5 sea_lantern []
setblock ~4 ~-6 ~-5 sea_lantern []
setblock ~4 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~-4 ~5 slot.container 0 copper_ingot 10
replaceitem block ~4 ~-4 ~5 slot.container 1 ink_sac 11
replaceitem block ~4 ~-4 ~5 slot.container 2 trident 5
replaceitem block ~4 ~-4 ~5 slot.container 3 prismarine_shard 21
replaceitem block ~4 ~-4 ~5 slot.container 4 prismarine_crystals 18
replaceitem block ~4 ~-4 ~5 slot.container 5 nautilus_shell 10
replaceitem block ~4 ~-4 ~5 slot.container 9 gold_ingot 14
replaceitem block ~4 ~-4 ~5 slot.container 10 iron_ingot 8
replaceitem block ~4 ~-4 ~5 slot.container 11 emerald 6
replaceitem block ~4 ~-4 ~5 slot.container 12 golden_apple 4
replaceitem block ~4 ~-4 ~5 slot.container 13 sea_lantern 9
replaceitem block ~4 ~-4 ~5 slot.container 14 heart_of_the_sea 5
loot insert ~4 ~-4 ~5 loot "rsf/warm_ocean"
loot insert ~4 ~-4 ~5 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~8 ~7 stone_bricks []
fill ~-5 ~1 ~-6 ~5 ~7 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~10 ~-6 prismarine_bricks []
setblock ~-6 ~11 ~-7 sea_lantern []
fill ~-6 ~1 ~6 ~-5 ~10 ~7 prismarine_bricks []
setblock ~-6 ~11 ~6 sea_lantern []
fill ~5 ~1 ~-7 ~6 ~10 ~-6 prismarine_bricks []
setblock ~5 ~11 ~-7 sea_lantern []
fill ~5 ~1 ~6 ~6 ~10 ~7 prismarine_bricks []
setblock ~5 ~11 ~6 sea_lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 prismarine_bricks []
fill ~-6 ~9 ~-7 ~6 ~9 ~7 cobblestone_wall []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 air []
setblock ~-6 ~9 ~-7 sea_lantern []
setblock ~-6 ~10 ~-7 sea_lantern []
setblock ~-6 ~9 ~7 sea_lantern []
setblock ~-6 ~10 ~7 sea_lantern []
setblock ~6 ~9 ~-7 sea_lantern []
setblock ~6 ~10 ~-7 sea_lantern []
setblock ~6 ~9 ~7 sea_lantern []
setblock ~6 ~10 ~7 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 mossy_stone_bricks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~-8 ~0 ~-1 ~-8 ~4 ~-1 prismarine_bricks []
fill ~8 ~0 ~-1 ~8 ~4 ~-1 prismarine_bricks []
setblock ~-8 ~5 ~-1 sea_lantern []
setblock ~8 ~5 ~-1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 sea_lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 1 wet_sponge 8
replaceitem block ~5 ~1 ~6 slot.container 2 copper_ingot 13
replaceitem block ~5 ~1 ~6 slot.container 3 ink_sac 14
replaceitem block ~5 ~1 ~6 slot.container 4 trident 8
replaceitem block ~5 ~1 ~6 slot.container 5 prismarine_shard 16
replaceitem block ~5 ~1 ~6 slot.container 9 cooked_cod 14
replaceitem block ~5 ~1 ~6 slot.container 10 cooked_salmon 15
replaceitem block ~5 ~1 ~6 slot.container 11 gold_ingot 14
replaceitem block ~5 ~1 ~6 slot.container 12 iron_ingot 8
replaceitem block ~5 ~1 ~6 slot.container 13 emerald 6
replaceitem block ~5 ~1 ~6 slot.container 14 golden_apple 4
loot insert ~5 ~1 ~6 loot "rsf/warm_ocean"
summon dolphin ~0 ~1 ~-1
summon pufferfish ~-1 ~1 ~1
