# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3304/4224 | 主题内编号: b104/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·双层指挥台卫戍堡 (dripstone_caves_bunker_terrace_command)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x15 | 地上高度 9格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 dripstone_block [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 dripstone_block [] replace water
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_deepslate []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 tuff []
setblock ~0 ~0 ~0 copper_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 dripstone_block []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 ender_pearl 6
replaceitem block ~-2 ~-4 ~3 slot.container 1 copper_ingot 21
replaceitem block ~-2 ~-4 ~3 slot.container 2 rotten_flesh 18
replaceitem block ~-2 ~-4 ~3 slot.container 3 bone 17
replaceitem block ~-2 ~-4 ~3 slot.container 4 gunpowder 10
replaceitem block ~-2 ~-4 ~3 slot.container 5 string 11
replaceitem block ~-2 ~-4 ~3 slot.container 9 dripstone_block 12
replaceitem block ~-2 ~-4 ~3 slot.container 10 iron_ingot 11
replaceitem block ~-2 ~-4 ~3 slot.container 11 gold_ingot 8
replaceitem block ~-2 ~-4 ~3 slot.container 12 coal 19
replaceitem block ~-2 ~-4 ~3 slot.container 13 diamond 6
replaceitem block ~-2 ~-4 ~3 slot.container 14 cauldron 7
loot insert ~-2 ~-4 ~3 loot "rsf/dripstone_caves"
loot insert ~-2 ~-4 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-6 ~5 ~4 ~6 dripstone_block []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-6 ~4 ~-7 ~6 ~4 ~7 deepslate_brick_slab []
fill ~-4 ~5 ~-5 ~4 ~9 ~5 deepslate_bricks []
fill ~-3 ~5 ~-4 ~3 ~8 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~5 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 deepslate_bricks []
fill ~-5 ~10 ~-6 ~5 ~10 ~6 deepslate_brick_wall []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 air []
setblock ~-5 ~10 ~-6 cobbled_deepslate []
setblock ~-5 ~11 ~-6 lantern []
setblock ~-5 ~10 ~6 cobbled_deepslate []
setblock ~-5 ~11 ~6 lantern []
setblock ~5 ~10 ~-6 cobbled_deepslate []
setblock ~5 ~11 ~-6 lantern []
setblock ~5 ~10 ~6 cobbled_deepslate []
setblock ~5 ~11 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 deepslate_brick_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~8 ~0 ~-3 ~8 ~4 ~-3 dripstone_block []
setblock ~8 ~5 ~-3 copper_block []
setblock ~8 ~6 ~-3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 copper_ingot 16
replaceitem block ~-4 ~1 ~5 slot.container 1 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 2 bone 12
replaceitem block ~-4 ~1 ~5 slot.container 3 gunpowder 13
replaceitem block ~-4 ~1 ~5 slot.container 4 string 14
replaceitem block ~-4 ~1 ~5 slot.container 5 spider_eye 11
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_ingot 10
replaceitem block ~-4 ~1 ~5 slot.container 10 gold_ingot 7
replaceitem block ~-4 ~1 ~5 slot.container 11 coal 18
replaceitem block ~-4 ~1 ~5 slot.container 12 diamond 5
replaceitem block ~-4 ~1 ~5 slot.container 13 cauldron 6
replaceitem block ~-4 ~1 ~5 slot.container 14 lava_bucket 1
loot insert ~-4 ~1 ~5 loot "rsf/dripstone_caves"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 15
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 16
replaceitem block ~4 ~1 ~5 slot.container 2 string 17
replaceitem block ~4 ~1 ~5 slot.container 3 spider_eye 6
replaceitem block ~4 ~1 ~5 slot.container 4 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 15
replaceitem block ~4 ~1 ~5 slot.container 10 gold_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 11 coal 16
replaceitem block ~4 ~1 ~5 slot.container 12 diamond 3
replaceitem block ~4 ~1 ~5 slot.container 13 cauldron 4
replaceitem block ~4 ~1 ~5 slot.container 14 lava_bucket 1
loot insert ~4 ~1 ~5 loot "rsf/dripstone_caves"
loot insert ~4 ~1 ~5 loot "chests/abandoned_mineshaft"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
