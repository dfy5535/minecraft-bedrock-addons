# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2701/4224 | 主题内编号: b013/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·地底熔炉苦工地牢 (warm_ocean_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x17 | 地上高度 6格 | 地下深度 5格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 prismarine_bricks [] replace water
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 prismarine_bricks [] replace air
fill ~-6 ~1 ~-8 ~6 ~8 ~8 air []
fill ~-6 ~0 ~-8 ~6 ~0 ~8 prismarine_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 prismarine []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 cut_sandstone []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 prismarine_bricks []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 sea_lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 prismarine_crystals 18
replaceitem block ~3 ~-4 ~5 slot.container 1 nautilus_shell 10
replaceitem block ~3 ~-4 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~3 ~-4 ~5 slot.container 3 wet_sponge 5
replaceitem block ~3 ~-4 ~5 slot.container 4 copper_ingot 10
replaceitem block ~3 ~-4 ~5 slot.container 5 ink_sac 11
replaceitem block ~3 ~-4 ~5 slot.container 9 sea_lantern 11
replaceitem block ~3 ~-4 ~5 slot.container 10 heart_of_the_sea 7
replaceitem block ~3 ~-4 ~5 slot.container 11 conduit 1
replaceitem block ~3 ~-4 ~5 slot.container 12 sponge 5
replaceitem block ~3 ~-4 ~5 slot.container 13 cooked_cod 12
replaceitem block ~3 ~-4 ~5 slot.container 14 cooked_salmon 13
loot insert ~3 ~-4 ~5 loot "rsf/warm_ocean"
loot insert ~3 ~-4 ~5 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-7 ~5 ~6 ~7 prismarine_bricks []
fill ~-4 ~1 ~-6 ~4 ~5 ~6 air []
fill ~-5 ~1 ~-7 ~-5 ~6 ~-7 sea_lantern []
fill ~-5 ~1 ~7 ~-5 ~6 ~7 sea_lantern []
fill ~5 ~1 ~-7 ~5 ~6 ~-7 sea_lantern []
fill ~5 ~1 ~7 ~5 ~6 ~7 sea_lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-7 ~5 ~6 ~7 dark_prismarine []
fill ~-5 ~7 ~-7 ~5 ~7 ~7 cobblestone_wall []
fill ~-4 ~7 ~-6 ~4 ~7 ~6 air []
setblock ~-5 ~7 ~-7 sea_lantern []
setblock ~-5 ~8 ~-7 sea_lantern []
setblock ~-5 ~7 ~7 sea_lantern []
setblock ~-5 ~8 ~7 sea_lantern []
setblock ~5 ~7 ~-7 sea_lantern []
setblock ~5 ~8 ~-7 sea_lantern []
setblock ~5 ~7 ~7 sea_lantern []
setblock ~5 ~8 ~7 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 cut_sandstone []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x10x2) ---
fill ~-7 ~0 ~1 ~-7 ~4 ~1 prismarine_bricks []
fill ~7 ~0 ~1 ~7 ~4 ~1 prismarine_bricks []
setblock ~-7 ~5 ~1 sea_lantern []
setblock ~7 ~5 ~1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~9 ~0 sea_lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 copper_ingot 13
replaceitem block ~4 ~1 ~6 slot.container 1 ink_sac 14
replaceitem block ~4 ~1 ~6 slot.container 2 trident 8
replaceitem block ~4 ~1 ~6 slot.container 3 prismarine_shard 16
replaceitem block ~4 ~1 ~6 slot.container 4 prismarine_crystals 13
replaceitem block ~4 ~1 ~6 slot.container 5 nautilus_shell 5
replaceitem block ~4 ~1 ~6 slot.container 9 cooked_cod 16
replaceitem block ~4 ~1 ~6 slot.container 10 cooked_salmon 10
replaceitem block ~4 ~1 ~6 slot.container 11 gold_ingot 9
replaceitem block ~4 ~1 ~6 slot.container 12 iron_ingot 10
replaceitem block ~4 ~1 ~6 slot.container 13 emerald 8
replaceitem block ~4 ~1 ~6 slot.container 14 golden_apple 6
loot insert ~4 ~1 ~6 loot "rsf/warm_ocean"
summon guardian ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
summon dolphin ~1 ~1 ~1
