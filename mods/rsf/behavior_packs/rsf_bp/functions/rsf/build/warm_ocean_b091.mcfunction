# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2779/4224 | 主题内编号: b091/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·跨水拱桥水神小祠 (warm_ocean_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 dark_prismarine []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 prismarine_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 sea_lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 copper_ingot 10
replaceitem block ~-3 ~-3 ~2 slot.container 1 ink_sac 11
replaceitem block ~-3 ~-3 ~2 slot.container 2 trident 5
replaceitem block ~-3 ~-3 ~2 slot.container 3 prismarine_shard 21
replaceitem block ~-3 ~-3 ~2 slot.container 4 prismarine_crystals 18
replaceitem block ~-3 ~-3 ~2 slot.container 5 nautilus_shell 10
replaceitem block ~-3 ~-3 ~2 slot.container 9 cooked_cod 11
replaceitem block ~-3 ~-3 ~2 slot.container 10 cooked_salmon 12
replaceitem block ~-3 ~-3 ~2 slot.container 11 gold_ingot 11
replaceitem block ~-3 ~-3 ~2 slot.container 12 iron_ingot 12
replaceitem block ~-3 ~-3 ~2 slot.container 13 emerald 10
replaceitem block ~-3 ~-3 ~2 slot.container 14 golden_apple 8
loot insert ~-3 ~-3 ~2 loot "rsf/warm_ocean"
loot insert ~-3 ~-3 ~2 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 stone_brick_slab []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 prismarine []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 prismarine_slab []
setblock ~0 ~11 ~0 diamond_block []
setblock ~0 ~12 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 sea_lantern []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 sea_lantern []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 sea_lantern []
fill ~7 ~0 ~2 ~7 ~5 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~-7 ~0 ~-1 ~-7 ~7 ~-1 prismarine_bricks []
fill ~7 ~0 ~-1 ~7 ~7 ~-1 prismarine_bricks []
setblock ~-7 ~8 ~-1 sea_lantern []
setblock ~7 ~8 ~-1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 sea_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 diamond_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~3 slot.container 1 wet_sponge 8
replaceitem block ~4 ~1 ~3 slot.container 2 copper_ingot 13
replaceitem block ~4 ~1 ~3 slot.container 3 ink_sac 14
replaceitem block ~4 ~1 ~3 slot.container 4 trident 8
replaceitem block ~4 ~1 ~3 slot.container 5 prismarine_shard 16
replaceitem block ~4 ~1 ~3 slot.container 9 emerald 5
replaceitem block ~4 ~1 ~3 slot.container 10 golden_apple 3
replaceitem block ~4 ~1 ~3 slot.container 11 sea_lantern 8
replaceitem block ~4 ~1 ~3 slot.container 12 heart_of_the_sea 4
replaceitem block ~4 ~1 ~3 slot.container 13 conduit 5
replaceitem block ~4 ~1 ~3 slot.container 14 sponge 9
loot insert ~4 ~1 ~3 loot "rsf/warm_ocean"
summon guardian ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
summon dolphin ~1 ~1 ~1
