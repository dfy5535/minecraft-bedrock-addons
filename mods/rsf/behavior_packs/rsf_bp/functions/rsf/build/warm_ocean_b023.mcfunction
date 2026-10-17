# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2711/4224 | 主题内编号: b023/128
# 地形主题 #22: 暖水、温水与常规海洋 (warm_ocean) —— 带海晶石防水气闸舱与潮涌海晶灯柱
# 建筑名称: 暖海亚特兰蒂斯系·双层露台阁楼宝室 (warm_ocean_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 11x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: warm_ocean, deep_warm_ocean, lukewarm_ocean, deep_lukewarm_ocean, ocean, deep_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 stone_bricks [] replace water
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 stone_bricks [] replace air
fill ~-5 ~1 ~-7 ~5 ~10 ~7 air []
fill ~-5 ~0 ~-7 ~5 ~0 ~7 stone_brick_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 mossy_stone_bricks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 dark_prismarine []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-3 ~-6 ~4 ~-1 ~6 prismarine_bricks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-6 ~4 ~4 ~6 stone_bricks []
fill ~-3 ~1 ~-5 ~3 ~3 ~5 air []
fill ~-5 ~4 ~-7 ~5 ~4 ~7 stone_brick_slab []
fill ~-3 ~5 ~-5 ~3 ~8 ~5 prismarine []
fill ~-2 ~5 ~-4 ~2 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~5 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-6 ~-7 ~7 ~6 prismarine_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-6 ~7 ~7 ~6 prismarine_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-5 ~-6 ~8 ~5 prismarine_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-5 ~6 ~8 ~5 prismarine_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~5 ~8 ~5 prismarine_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 prismarine_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~10 ~2 prismarine []
fill ~5 ~1 ~-1 ~6 ~9 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~11 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (warm_ocean 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~-6 ~0 ~-2 ~-6 ~4 ~-2 prismarine_bricks []
fill ~6 ~0 ~-2 ~6 ~4 ~-2 prismarine_bricks []
setblock ~-6 ~5 ~-2 sea_lantern []
setblock ~6 ~5 ~-2 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~7 ~0 sea_lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 trident 8
replaceitem block ~3 ~1 ~5 slot.container 1 prismarine_shard 16
replaceitem block ~3 ~1 ~5 slot.container 2 prismarine_crystals 13
replaceitem block ~3 ~1 ~5 slot.container 3 nautilus_shell 5
replaceitem block ~3 ~1 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~3 ~1 ~5 slot.container 5 wet_sponge 8
replaceitem block ~3 ~1 ~5 slot.container 9 cooked_cod 12
replaceitem block ~3 ~1 ~5 slot.container 10 cooked_salmon 13
replaceitem block ~3 ~1 ~5 slot.container 11 gold_ingot 12
replaceitem block ~3 ~1 ~5 slot.container 12 iron_ingot 13
replaceitem block ~3 ~1 ~5 slot.container 13 emerald 11
replaceitem block ~3 ~1 ~5 slot.container 14 golden_apple 2
loot insert ~3 ~1 ~5 loot "rsf/warm_ocean"
summon tropicalfish ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon elder_guardian ~0 ~2 ~0
