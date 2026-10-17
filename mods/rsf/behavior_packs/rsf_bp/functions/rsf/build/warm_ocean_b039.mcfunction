# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2727/4224 | 主题内编号: b039/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·永恒圣火图腾方尖塔 (warm_ocean_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[dome_glass] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 9x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 stone_bricks [] replace water
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 stone_bricks [] replace air
fill ~-4 ~1 ~-5 ~4 ~12 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_stone_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 dark_prismarine []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 stone_bricks []
fill ~-1 ~-5 ~-2 ~1 ~-1 ~2 air []
setblock ~-1 ~-5 ~0 blast_furnace []
setblock ~1 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~2 anvil []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 sea_lantern []
setblock ~1 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-3 ~2 slot.container 0 rotten_flesh 12
replaceitem block ~1 ~-3 ~2 slot.container 1 wet_sponge 5
replaceitem block ~1 ~-3 ~2 slot.container 2 copper_ingot 10
replaceitem block ~1 ~-3 ~2 slot.container 3 ink_sac 11
replaceitem block ~1 ~-3 ~2 slot.container 4 trident 5
replaceitem block ~1 ~-3 ~2 slot.container 5 prismarine_shard 21
replaceitem block ~1 ~-3 ~2 slot.container 9 emerald 8
replaceitem block ~1 ~-3 ~2 slot.container 10 golden_apple 6
replaceitem block ~1 ~-3 ~2 slot.container 11 sea_lantern 11
replaceitem block ~1 ~-3 ~2 slot.container 12 heart_of_the_sea 7
replaceitem block ~1 ~-3 ~2 slot.container 13 conduit 1
replaceitem block ~1 ~-3 ~2 slot.container 14 sponge 5
loot insert ~1 ~-3 ~2 loot "rsf/warm_ocean"
loot insert ~1 ~-3 ~2 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~10 ~4 stone_bricks []
fill ~-2 ~1 ~-3 ~2 ~9 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~10 ~-4 sea_lantern []
fill ~-3 ~1 ~4 ~-3 ~10 ~4 sea_lantern []
fill ~3 ~1 ~-4 ~3 ~10 ~-4 sea_lantern []
fill ~3 ~1 ~4 ~3 ~10 ~4 sea_lantern []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 prismarine_bricks []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 glass []
fill ~-2 ~8 ~-3 ~2 ~8 ~3 air []
setblock ~0 ~9 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 sea_lantern []
setblock ~0 ~4 ~-6 gold_block []
setblock ~0 ~5 ~-6 sea_lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 sea_lantern []
setblock ~0 ~4 ~6 gold_block []
setblock ~0 ~5 ~6 sea_lantern []
fill ~-5 ~0 ~0 ~-5 ~3 ~0 sea_lantern []
setblock ~-5 ~4 ~0 gold_block []
setblock ~-5 ~5 ~0 sea_lantern []
fill ~5 ~0 ~0 ~5 ~3 ~0 sea_lantern []
setblock ~5 ~4 ~0 gold_block []
setblock ~5 ~5 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 5x6x3) ---
fill ~-5 ~0 ~-1 ~-5 ~5 ~-1 prismarine_bricks []
fill ~5 ~0 ~-1 ~5 ~5 ~-1 prismarine_bricks []
setblock ~-5 ~6 ~-1 sea_lantern []
setblock ~5 ~6 ~-1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~9 ~0 sea_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-2 ~1 ~3 smoker []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 trident 8
replaceitem block ~2 ~1 ~3 slot.container 1 prismarine_shard 16
replaceitem block ~2 ~1 ~3 slot.container 2 prismarine_crystals 13
replaceitem block ~2 ~1 ~3 slot.container 3 nautilus_shell 5
replaceitem block ~2 ~1 ~3 slot.container 4 rotten_flesh 15
replaceitem block ~2 ~1 ~3 slot.container 5 wet_sponge 8
replaceitem block ~2 ~1 ~3 slot.container 9 conduit 5
replaceitem block ~2 ~1 ~3 slot.container 10 sponge 9
replaceitem block ~2 ~1 ~3 slot.container 11 cooked_cod 16
replaceitem block ~2 ~1 ~3 slot.container 12 cooked_salmon 10
replaceitem block ~2 ~1 ~3 slot.container 13 gold_ingot 9
replaceitem block ~2 ~1 ~3 slot.container 14 iron_ingot 10
loot insert ~2 ~1 ~3 loot "rsf/warm_ocean"
summon dolphin ~0 ~1 ~-1
summon pufferfish ~-1 ~1 ~1
