# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2755/4224 | 主题内编号: b067/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·半掩埋下沉庭院遗迹 (warm_ocean_ruin_sunken_courtyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[ruined_skylight] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~1 ~-7 ~6 ~7 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 dark_prismarine []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 prismarine_bricks []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 sea_lantern []
setblock ~-3 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-4 ~4 slot.container 0 copper_ingot 10
replaceitem block ~-3 ~-4 ~4 slot.container 1 ink_sac 11
replaceitem block ~-3 ~-4 ~4 slot.container 2 trident 5
replaceitem block ~-3 ~-4 ~4 slot.container 3 prismarine_shard 21
replaceitem block ~-3 ~-4 ~4 slot.container 4 prismarine_crystals 18
replaceitem block ~-3 ~-4 ~4 slot.container 5 nautilus_shell 10
replaceitem block ~-3 ~-4 ~4 slot.container 9 conduit 6
replaceitem block ~-3 ~-4 ~4 slot.container 10 sponge 10
replaceitem block ~-3 ~-4 ~4 slot.container 11 cooked_cod 10
replaceitem block ~-3 ~-4 ~4 slot.container 12 cooked_salmon 11
replaceitem block ~-3 ~-4 ~4 slot.container 13 gold_ingot 10
replaceitem block ~-3 ~-4 ~4 slot.container 14 iron_ingot 11
loot insert ~-3 ~-4 ~4 loot "rsf/warm_ocean"
loot insert ~-3 ~-4 ~4 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~5 ~6 stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 dark_prismarine []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~5 ~-6 ~5 ~5 ~6 stone_brick_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-5 ~4 ~-1 ~-5 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 sea_lantern []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 sea_lantern []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 sea_lantern []
fill ~7 ~0 ~2 ~7 ~5 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x9x6) ---
fill ~-7 ~0 ~0 ~-7 ~8 ~0 prismarine_bricks []
fill ~7 ~0 ~0 ~7 ~8 ~0 prismarine_bricks []
setblock ~-7 ~9 ~0 sea_lantern []
setblock ~7 ~9 ~0 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~7 ~0 sea_lantern []
setblock ~-5 ~1 ~6 blast_furnace []
setblock ~-4 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 1 wet_sponge 8
replaceitem block ~4 ~1 ~5 slot.container 2 copper_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 3 ink_sac 14
replaceitem block ~4 ~1 ~5 slot.container 4 trident 8
replaceitem block ~4 ~1 ~5 slot.container 5 prismarine_shard 16
replaceitem block ~4 ~1 ~5 slot.container 9 gold_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 11 emerald 11
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 2
replaceitem block ~4 ~1 ~5 slot.container 13 sea_lantern 7
replaceitem block ~4 ~1 ~5 slot.container 14 heart_of_the_sea 3
loot insert ~4 ~1 ~5 loot "rsf/warm_ocean"
summon guardian ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
summon dolphin ~1 ~1 ~1
