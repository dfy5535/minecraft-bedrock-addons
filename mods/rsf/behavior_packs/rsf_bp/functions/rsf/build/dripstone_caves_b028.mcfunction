# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3228/4224 | 主题内编号: b028/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·重檐挑角古钟楼 (dripstone_caves_tower_pagoda_bell)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 11x13 | 地上高度 11格 | 地下深度 2格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 dripstone_block [] replace air
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 dripstone_block [] replace water
fill ~-5 ~1 ~-6 ~5 ~13 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_deepslate []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 tuff []
setblock ~0 ~0 ~0 copper_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-5 ~4 ~-1 ~5 deepslate_bricks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~5 ~5 dripstone_block []
fill ~-3 ~1 ~-4 ~3 ~4 ~4 air []
fill ~-5 ~5 ~-6 ~5 ~5 ~6 deepslate_brick_slab []
fill ~-3 ~6 ~-4 ~3 ~11 ~4 deepslate_bricks []
fill ~-2 ~6 ~-3 ~2 ~10 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~6 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~11 ~-6 ~5 ~11 ~6 deepslate_brick_slab []
fill ~-3 ~12 ~-4 ~3 ~13 ~4 deepslate_bricks []
fill ~-4 ~14 ~-5 ~4 ~14 ~5 deepslate_brick_slab []
setblock ~0 ~15 ~0 copper_block []
setblock ~0 ~16 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 cobbled_deepslate []
setblock ~-6 ~6 ~-7 lantern []
fill ~-6 ~0 ~7 ~-6 ~5 ~7 cobbled_deepslate []
setblock ~-6 ~6 ~7 lantern []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 cobbled_deepslate []
setblock ~6 ~6 ~-7 lantern []
fill ~6 ~0 ~7 ~6 ~5 ~7 cobbled_deepslate []
setblock ~6 ~6 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~7 ~0 ~1 ~7 ~8 ~1 dripstone_block []
setblock ~7 ~9 ~1 copper_block []
setblock ~7 ~10 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 copper_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 string 14
replaceitem block ~-3 ~1 ~4 slot.container 1 spider_eye 11
replaceitem block ~-3 ~1 ~4 slot.container 2 arrow 22
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 copper_ingot 16
replaceitem block ~-3 ~1 ~4 slot.container 5 rotten_flesh 13
replaceitem block ~-3 ~1 ~4 slot.container 9 coal 17
replaceitem block ~-3 ~1 ~4 slot.container 10 diamond 4
replaceitem block ~-3 ~1 ~4 slot.container 11 cauldron 5
replaceitem block ~-3 ~1 ~4 slot.container 12 lava_bucket 1
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~-3 ~1 ~4 slot.container 14 lantern 12
loot insert ~-3 ~1 ~4 loot "rsf/dripstone_caves"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 arrow 17
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 copper_ingot 19
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 4 bone 15
replaceitem block ~3 ~1 ~4 slot.container 5 gunpowder 16
replaceitem block ~3 ~1 ~4 slot.container 9 coal 22
replaceitem block ~3 ~1 ~4 slot.container 10 diamond 2
replaceitem block ~3 ~1 ~4 slot.container 11 cauldron 3
replaceitem block ~3 ~1 ~4 slot.container 12 lava_bucket 1
replaceitem block ~3 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 14 lantern 10
loot insert ~3 ~1 ~4 loot "rsf/dripstone_caves"
loot insert ~3 ~1 ~4 loot "chests/abandoned_mineshaft"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
