# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3292/4224 | 主题内编号: b092/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·双层重檐供奉宝塔 (dripstone_caves_shrine_terrace_pagoda)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 dripstone_block [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 dripstone_block [] replace water
fill ~-5 ~1 ~-6 ~5 ~12 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_deepslate []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 tuff []
setblock ~0 ~0 ~0 copper_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobbled_deepslate []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 campfire []
setblock ~4 ~-6 ~0 campfire []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 copper_ingot 21
replaceitem block ~0 ~-4 ~5 slot.container 1 rotten_flesh 18
replaceitem block ~0 ~-4 ~5 slot.container 2 bone 17
replaceitem block ~0 ~-4 ~5 slot.container 3 gunpowder 10
replaceitem block ~0 ~-4 ~5 slot.container 4 string 11
replaceitem block ~0 ~-4 ~5 slot.container 5 spider_eye 8
replaceitem block ~0 ~-4 ~5 slot.container 9 iron_ingot 13
replaceitem block ~0 ~-4 ~5 slot.container 10 gold_ingot 10
replaceitem block ~0 ~-4 ~5 slot.container 11 coal 21
replaceitem block ~0 ~-4 ~5 slot.container 12 diamond 8
replaceitem block ~0 ~-4 ~5 slot.container 13 cauldron 2
replaceitem block ~0 ~-4 ~5 slot.container 14 lava_bucket 1
loot insert ~0 ~-4 ~5 loot "rsf/dripstone_caves"
loot insert ~0 ~-4 ~5 loot "chests/abandoned_mineshaft"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 copper_ingot 19
replaceitem block ~0 ~-4 ~-5 slot.container 1 rotten_flesh 16
replaceitem block ~0 ~-4 ~-5 slot.container 2 bone 15
replaceitem block ~0 ~-4 ~-5 slot.container 3 gunpowder 16
replaceitem block ~0 ~-4 ~-5 slot.container 4 string 17
replaceitem block ~0 ~-4 ~-5 slot.container 5 spider_eye 6
replaceitem block ~0 ~-4 ~-5 slot.container 9 iron_ingot 12
replaceitem block ~0 ~-4 ~-5 slot.container 10 gold_ingot 9
replaceitem block ~0 ~-4 ~-5 slot.container 11 coal 20
replaceitem block ~0 ~-4 ~-5 slot.container 12 diamond 7
replaceitem block ~0 ~-4 ~-5 slot.container 13 cauldron 8
replaceitem block ~0 ~-4 ~-5 slot.container 14 lava_bucket 1
loot insert ~0 ~-4 ~-5 loot "rsf/dripstone_caves"
loot insert ~0 ~-4 ~-5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~5 ~5 dripstone_block []
fill ~-3 ~1 ~-4 ~3 ~4 ~4 air []
fill ~-5 ~5 ~-6 ~5 ~5 ~6 deepslate_brick_slab []
fill ~-3 ~6 ~-4 ~3 ~10 ~4 deepslate_bricks []
fill ~-2 ~6 ~-3 ~2 ~9 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~6 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~10 ~-6 ~5 ~10 ~6 deepslate_brick_slab []
fill ~-3 ~11 ~-4 ~3 ~12 ~4 deepslate_bricks []
fill ~-4 ~13 ~-5 ~4 ~13 ~5 deepslate_brick_slab []
setblock ~0 ~14 ~0 copper_block []
setblock ~0 ~15 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 cobbled_deepslate []
setblock ~-6 ~6 ~-7 lantern []
fill ~-6 ~0 ~7 ~-6 ~5 ~7 cobbled_deepslate []
setblock ~-6 ~6 ~7 lantern []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 cobbled_deepslate []
setblock ~6 ~6 ~-7 lantern []
fill ~6 ~0 ~7 ~6 ~5 ~7 cobbled_deepslate []
setblock ~6 ~6 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~7 ~0 ~0 ~7 ~7 ~0 dripstone_block []
setblock ~7 ~8 ~0 copper_block []
setblock ~7 ~9 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 string 14
replaceitem block ~-3 ~1 ~4 slot.container 1 spider_eye 11
replaceitem block ~-3 ~1 ~4 slot.container 2 arrow 22
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 copper_ingot 16
replaceitem block ~-3 ~1 ~4 slot.container 5 rotten_flesh 13
replaceitem block ~-3 ~1 ~4 slot.container 9 cauldron 4
replaceitem block ~-3 ~1 ~4 slot.container 10 lava_bucket 1
replaceitem block ~-3 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~-3 ~1 ~4 slot.container 12 lantern 11
replaceitem block ~-3 ~1 ~4 slot.container 13 pointed_dripstone 18
replaceitem block ~-3 ~1 ~4 slot.container 14 dripstone_block 12
loot insert ~-3 ~1 ~4 loot "rsf/dripstone_caves"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 arrow 17
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 copper_ingot 19
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 4 bone 15
replaceitem block ~3 ~1 ~4 slot.container 5 gunpowder 16
replaceitem block ~3 ~1 ~4 slot.container 9 cauldron 2
replaceitem block ~3 ~1 ~4 slot.container 10 lava_bucket 1
replaceitem block ~3 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 12 lantern 9
replaceitem block ~3 ~1 ~4 slot.container 13 pointed_dripstone 16
replaceitem block ~3 ~1 ~4 slot.container 14 dripstone_block 17
loot insert ~3 ~1 ~4 loot "rsf/dripstone_caves"
loot insert ~3 ~1 ~4 loot "chests/abandoned_mineshaft"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
