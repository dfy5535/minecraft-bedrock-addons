# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2696/4224 | 主题内编号: b008/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·凯旋双拱圣物祭坛 (warm_ocean_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 prismarine [] replace water
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 prismarine [] replace air
fill ~-6 ~1 ~-6 ~6 ~9 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 prismarine_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 dark_prismarine []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 prismarine_bricks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~7 ~5 prismarine []
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

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 cobblestone_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-7 ~0 ~1 ~-7 ~4 ~1 prismarine_bricks []
fill ~7 ~0 ~1 ~7 ~4 ~1 prismarine_bricks []
setblock ~-7 ~5 ~1 sea_lantern []
setblock ~7 ~5 ~1 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 sea_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 diamond_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 prismarine_shard 16
replaceitem block ~-4 ~1 ~4 slot.container 1 prismarine_crystals 13
replaceitem block ~-4 ~1 ~4 slot.container 2 nautilus_shell 5
replaceitem block ~-4 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-4 ~1 ~4 slot.container 4 wet_sponge 8
replaceitem block ~-4 ~1 ~4 slot.container 5 copper_ingot 13
replaceitem block ~-4 ~1 ~4 slot.container 9 golden_apple 3
replaceitem block ~-4 ~1 ~4 slot.container 10 sea_lantern 8
replaceitem block ~-4 ~1 ~4 slot.container 11 heart_of_the_sea 4
replaceitem block ~-4 ~1 ~4 slot.container 12 conduit 5
replaceitem block ~-4 ~1 ~4 slot.container 13 sponge 9
replaceitem block ~-4 ~1 ~4 slot.container 14 cooked_cod 16
loot insert ~-4 ~1 ~4 loot "rsf/warm_ocean"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 nautilus_shell 8
replaceitem block ~4 ~1 ~4 slot.container 1 rotten_flesh 18
replaceitem block ~4 ~1 ~4 slot.container 2 wet_sponge 11
replaceitem block ~4 ~1 ~4 slot.container 3 copper_ingot 8
replaceitem block ~4 ~1 ~4 slot.container 4 ink_sac 9
replaceitem block ~4 ~1 ~4 slot.container 5 trident 3
replaceitem block ~4 ~1 ~4 slot.container 9 golden_apple 8
replaceitem block ~4 ~1 ~4 slot.container 10 sea_lantern 6
replaceitem block ~4 ~1 ~4 slot.container 11 heart_of_the_sea 2
replaceitem block ~4 ~1 ~4 slot.container 12 conduit 3
replaceitem block ~4 ~1 ~4 slot.container 13 sponge 7
replaceitem block ~4 ~1 ~4 slot.container 14 cooked_cod 14
loot insert ~4 ~1 ~4 loot "rsf/warm_ocean"
loot insert ~4 ~1 ~4 loot "chests/underwater_ruin_big"
summon elder_guardian ~0 ~1 ~-1
summon dolphin ~-1 ~1 ~1
summon pufferfish ~1 ~1 ~1
summon tropicalfish ~0 ~2 ~0
