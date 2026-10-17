# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3254/4224 | 主题内编号: b054/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·切石与伐木工匠棚屋 (dripstone_caves_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 cobbled_deepslate [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 cobbled_deepslate [] replace water
fill ~-6 ~1 ~-6 ~6 ~9 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 cobbled_deepslate_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 deepslate_tiles []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 dripstone_block []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~8 ~5 cobbled_deepslate []
fill ~2 ~1 ~-5 ~5 ~8 ~5 cobbled_deepslate []
fill ~-4 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 dripstone_block []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-6 ~-6 ~8 ~6 cobbled_deepslate_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-6 ~6 ~8 ~6 cobbled_deepslate_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~-5 ~9 ~5 cobbled_deepslate_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-5 ~5 ~9 ~5 cobbled_deepslate_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-5 ~4 ~9 ~5 cobbled_deepslate_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 dripstone_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 deepslate_brick_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~8 ~0 ~2 ~8 ~4 ~2 dripstone_block []
setblock ~8 ~5 ~2 copper_block []
setblock ~8 ~6 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 arrow 22
replaceitem block ~-4 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~4 slot.container 2 copper_ingot 16
replaceitem block ~-4 ~1 ~4 slot.container 3 rotten_flesh 13
replaceitem block ~-4 ~1 ~4 slot.container 4 bone 12
replaceitem block ~-4 ~1 ~4 slot.container 5 gunpowder 13
replaceitem block ~-4 ~1 ~4 slot.container 9 iron_ingot 16
replaceitem block ~-4 ~1 ~4 slot.container 10 gold_ingot 6
replaceitem block ~-4 ~1 ~4 slot.container 11 coal 17
replaceitem block ~-4 ~1 ~4 slot.container 12 diamond 4
replaceitem block ~-4 ~1 ~4 slot.container 13 cauldron 5
replaceitem block ~-4 ~1 ~4 slot.container 14 lava_bucket 1
loot insert ~-4 ~1 ~4 loot "rsf/dripstone_caves"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 copper_ingot 19
replaceitem block ~4 ~1 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~1 ~4 slot.container 2 bone 15
replaceitem block ~4 ~1 ~4 slot.container 3 gunpowder 16
replaceitem block ~4 ~1 ~4 slot.container 4 string 17
replaceitem block ~4 ~1 ~4 slot.container 5 spider_eye 6
replaceitem block ~4 ~1 ~4 slot.container 9 iron_ingot 14
replaceitem block ~4 ~1 ~4 slot.container 10 gold_ingot 11
replaceitem block ~4 ~1 ~4 slot.container 11 coal 22
replaceitem block ~4 ~1 ~4 slot.container 12 diamond 2
replaceitem block ~4 ~1 ~4 slot.container 13 cauldron 3
replaceitem block ~4 ~1 ~4 slot.container 14 lava_bucket 1
loot insert ~4 ~1 ~4 loot "rsf/dripstone_caves"
loot insert ~4 ~1 ~4 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon witch ~0 ~2 ~0
