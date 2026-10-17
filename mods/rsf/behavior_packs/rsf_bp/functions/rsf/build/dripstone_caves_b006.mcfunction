# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3206/4224 | 主题内编号: b006/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·重檐飞角四方神龛 (dripstone_caves_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 cobbled_deepslate [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 cobbled_deepslate [] replace water
fill ~-5 ~1 ~-6 ~5 ~11 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobbled_deepslate_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 deepslate_tiles []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 iron_block []

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

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-5 ~4 ~9 ~5 cobbled_deepslate []
fill ~-3 ~1 ~-4 ~3 ~8 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 polished_deepslate []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 polished_deepslate []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 polished_deepslate []
fill ~4 ~1 ~5 ~4 ~9 ~5 polished_deepslate []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-4 ~2 ~0 cobbled_deepslate_wall []
setblock ~4 ~2 ~0 cobbled_deepslate_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 cobbled_deepslate_slab []
fill ~-3 ~10 ~-4 ~3 ~11 ~4 deepslate_tiles []
fill ~-4 ~12 ~-5 ~4 ~12 ~5 deepslate_tile_slab []
setblock ~0 ~13 ~0 iron_block []
setblock ~0 ~14 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 polished_deepslate []
setblock ~-6 ~6 ~-7 campfire []
fill ~-6 ~0 ~7 ~-6 ~5 ~7 polished_deepslate []
setblock ~-6 ~6 ~7 campfire []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 polished_deepslate []
setblock ~6 ~6 ~-7 campfire []
fill ~6 ~0 ~7 ~6 ~5 ~7 polished_deepslate []
setblock ~6 ~6 ~7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~7 ~0 ~-1 ~7 ~6 ~-1 dripstone_block []
setblock ~7 ~7 ~-1 copper_block []
setblock ~7 ~8 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 arrow 22
replaceitem block ~-3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 2 copper_ingot 16
replaceitem block ~-3 ~1 ~4 slot.container 3 rotten_flesh 13
replaceitem block ~-3 ~1 ~4 slot.container 4 bone 12
replaceitem block ~-3 ~1 ~4 slot.container 5 gunpowder 13
replaceitem block ~-3 ~1 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~-3 ~1 ~4 slot.container 10 lantern 7
replaceitem block ~-3 ~1 ~4 slot.container 11 pointed_dripstone 14
replaceitem block ~-3 ~1 ~4 slot.container 12 dripstone_block 15
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_ingot 14
replaceitem block ~-3 ~1 ~4 slot.container 14 gold_ingot 11
loot insert ~-3 ~1 ~4 loot "rsf/dripstone_caves"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 copper_ingot 19
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 2 bone 15
replaceitem block ~3 ~1 ~4 slot.container 3 gunpowder 16
replaceitem block ~3 ~1 ~4 slot.container 4 string 17
replaceitem block ~3 ~1 ~4 slot.container 5 spider_eye 6
replaceitem block ~3 ~1 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 10 lantern 12
replaceitem block ~3 ~1 ~4 slot.container 11 pointed_dripstone 12
replaceitem block ~3 ~1 ~4 slot.container 12 dripstone_block 13
replaceitem block ~3 ~1 ~4 slot.container 13 iron_ingot 12
replaceitem block ~3 ~1 ~4 slot.container 14 gold_ingot 9
loot insert ~3 ~1 ~4 loot "rsf/dripstone_caves"
loot insert ~3 ~1 ~4 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon witch ~0 ~-2 ~0
