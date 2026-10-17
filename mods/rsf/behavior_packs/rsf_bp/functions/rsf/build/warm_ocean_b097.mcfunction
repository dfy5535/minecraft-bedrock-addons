# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2785/4224 | 主题内编号: b097/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·八角射击孔防御棱堡 (warm_ocean_bunker_octagonal_bastion)
# 建筑构造: 主体[octagonal_keep] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 prismarine_bricks [] replace water
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 prismarine_bricks [] replace air
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 prismarine_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 prismarine []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cut_sandstone []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 prismarine_bricks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 sea_lantern []
setblock ~-2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-2 ~3 slot.container 0 wet_sponge 5
replaceitem block ~-2 ~-2 ~3 slot.container 1 copper_ingot 10
replaceitem block ~-2 ~-2 ~3 slot.container 2 ink_sac 11
replaceitem block ~-2 ~-2 ~3 slot.container 3 trident 5
replaceitem block ~-2 ~-2 ~3 slot.container 4 prismarine_shard 21
replaceitem block ~-2 ~-2 ~3 slot.container 5 prismarine_crystals 18
replaceitem block ~-2 ~-2 ~3 slot.container 9 golden_apple 4
replaceitem block ~-2 ~-2 ~3 slot.container 10 sea_lantern 9
replaceitem block ~-2 ~-2 ~3 slot.container 11 heart_of_the_sea 5
replaceitem block ~-2 ~-2 ~3 slot.container 12 conduit 6
replaceitem block ~-2 ~-2 ~3 slot.container 13 sponge 10
replaceitem block ~-2 ~-2 ~3 slot.container 14 cooked_cod 10
loot insert ~-2 ~-2 ~3 loot "rsf/warm_ocean"
loot insert ~-2 ~-2 ~3 loot "chests/underwater_ruin_big"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 prismarine_bricks []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~8 ~6 air []
fill ~5 ~1 ~6 ~5 ~8 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 sea_lantern []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 sea_lantern []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 sea_lantern []
fill ~4 ~1 ~5 ~4 ~7 ~5 sea_lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 dark_prismarine []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 cobblestone_wall []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 air []
setblock ~-5 ~8 ~-6 sea_lantern []
setblock ~-5 ~9 ~-6 sea_lantern []
setblock ~-5 ~8 ~6 sea_lantern []
setblock ~-5 ~9 ~6 sea_lantern []
setblock ~5 ~8 ~-6 sea_lantern []
setblock ~5 ~9 ~-6 sea_lantern []
setblock ~5 ~8 ~6 sea_lantern []
setblock ~5 ~9 ~6 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~6 ~-2 sea_lantern []
fill ~-6 ~0 ~2 ~-6 ~6 ~2 sea_lantern []
fill ~6 ~0 ~-2 ~6 ~6 ~-2 sea_lantern []
fill ~6 ~0 ~2 ~6 ~6 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x9x6) ---
fill ~-7 ~0 ~0 ~-7 ~8 ~0 prismarine_bricks []
fill ~7 ~0 ~0 ~7 ~8 ~0 prismarine_bricks []
setblock ~-7 ~9 ~0 sea_lantern []
setblock ~7 ~9 ~0 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~0 ~1 ~0 sponge []
setblock ~0 ~2 ~0 sea_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 prismarine_crystals 13
replaceitem block ~4 ~1 ~5 slot.container 1 nautilus_shell 5
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 3 wet_sponge 8
replaceitem block ~4 ~1 ~5 slot.container 4 copper_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 5 ink_sac 14
replaceitem block ~4 ~1 ~5 slot.container 9 gold_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 11 emerald 6
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 4
replaceitem block ~4 ~1 ~5 slot.container 13 sea_lantern 9
replaceitem block ~4 ~1 ~5 slot.container 14 heart_of_the_sea 5
loot insert ~4 ~1 ~5 loot "rsf/warm_ocean"
summon guardian ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
summon dolphin ~1 ~1 ~1
