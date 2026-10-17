# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3324/4224 | 主题内编号: b124/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·三层重檐帝王阁楼与秘库 (dripstone_caves_grand_pagoda_imperial)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x17 | 地上高度 11格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 dripstone_block [] replace air
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 dripstone_block [] replace water
fill ~-6 ~1 ~-8 ~6 ~13 ~8 air []
fill ~-6 ~0 ~-8 ~6 ~0 ~8 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 polished_deepslate []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 tuff []
setblock ~0 ~0 ~0 copper_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 dripstone_block []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 dripstone_block []
setblock ~0 ~-6 ~0 copper_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 spider_eye 8
replaceitem block ~0 ~-3 ~-4 slot.container 1 arrow 19
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 copper_ingot 21
replaceitem block ~0 ~-3 ~-4 slot.container 4 rotten_flesh 18
replaceitem block ~0 ~-3 ~-4 slot.container 5 bone 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 diamond 2
replaceitem block ~0 ~-3 ~-4 slot.container 10 cauldron 3
replaceitem block ~0 ~-3 ~-4 slot.container 11 lava_bucket 1
replaceitem block ~0 ~-3 ~-4 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-3 ~-4 slot.container 13 lantern 10
replaceitem block ~0 ~-3 ~-4 slot.container 14 pointed_dripstone 17
loot insert ~0 ~-3 ~-4 loot "rsf/dripstone_caves"
loot insert ~0 ~-3 ~-4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-7 ~5 ~5 ~7 dripstone_block []
fill ~-4 ~1 ~-6 ~4 ~4 ~6 air []
fill ~-6 ~5 ~-8 ~6 ~5 ~8 deepslate_brick_slab []
fill ~-4 ~6 ~-6 ~4 ~11 ~6 deepslate_bricks []
fill ~-3 ~6 ~-5 ~3 ~10 ~5 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~5 ~0 ~6 ~5 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~11 ~-8 ~6 ~11 ~8 deepslate_brick_slab []
fill ~-4 ~12 ~-6 ~4 ~13 ~6 deepslate_bricks []
fill ~-5 ~14 ~-7 ~5 ~14 ~7 deepslate_brick_slab []
setblock ~0 ~15 ~0 copper_block []
setblock ~0 ~16 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-9 ~-7 ~5 ~-9 cobbled_deepslate []
setblock ~-7 ~6 ~-9 lantern []
fill ~-7 ~0 ~9 ~-7 ~5 ~9 cobbled_deepslate []
setblock ~-7 ~6 ~9 lantern []
fill ~7 ~0 ~-9 ~7 ~5 ~-9 cobbled_deepslate []
setblock ~7 ~6 ~-9 lantern []
fill ~7 ~0 ~9 ~7 ~5 ~9 cobbled_deepslate []
setblock ~7 ~6 ~9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~8 ~0 ~-1 ~8 ~4 ~-1 dripstone_block []
setblock ~8 ~5 ~-1 copper_block []
setblock ~8 ~6 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~6 bookshelf []
setblock ~4 ~1 ~6 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~6 slot.container 0 string 14
replaceitem block ~-4 ~1 ~6 slot.container 1 spider_eye 11
replaceitem block ~-4 ~1 ~6 slot.container 2 arrow 22
replaceitem block ~-4 ~1 ~6 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~6 slot.container 4 copper_ingot 16
replaceitem block ~-4 ~1 ~6 slot.container 5 rotten_flesh 13
replaceitem block ~-4 ~1 ~6 slot.container 9 iron_ingot 16
replaceitem block ~-4 ~1 ~6 slot.container 10 gold_ingot 6
replaceitem block ~-4 ~1 ~6 slot.container 11 coal 17
replaceitem block ~-4 ~1 ~6 slot.container 12 diamond 4
replaceitem block ~-4 ~1 ~6 slot.container 13 cauldron 5
replaceitem block ~-4 ~1 ~6 slot.container 14 lava_bucket 1
loot insert ~-4 ~1 ~6 loot "rsf/dripstone_caves"
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 arrow 17
replaceitem block ~4 ~1 ~6 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~6 slot.container 2 copper_ingot 19
replaceitem block ~4 ~1 ~6 slot.container 3 rotten_flesh 16
replaceitem block ~4 ~1 ~6 slot.container 4 bone 15
replaceitem block ~4 ~1 ~6 slot.container 5 gunpowder 16
replaceitem block ~4 ~1 ~6 slot.container 9 iron_ingot 14
replaceitem block ~4 ~1 ~6 slot.container 10 gold_ingot 11
replaceitem block ~4 ~1 ~6 slot.container 11 coal 22
replaceitem block ~4 ~1 ~6 slot.container 12 diamond 2
replaceitem block ~4 ~1 ~6 slot.container 13 cauldron 3
replaceitem block ~4 ~1 ~6 slot.container 14 lava_bucket 1
loot insert ~4 ~1 ~6 loot "rsf/dripstone_caves"
loot insert ~4 ~1 ~6 loot "chests/abandoned_mineshaft"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
