# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3258/4224 | 主题内编号: b058/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·十字拱顶家族陵墓 (dripstone_caves_crypt_cross_mausoleum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobbled_deepslate [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobbled_deepslate [] replace water
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobbled_deepslate_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_tiles []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 deepslate_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 cobbled_deepslate []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 campfire []
setblock ~3 ~-5 ~0 campfire []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 copper_ingot 21
replaceitem block ~0 ~-3 ~4 slot.container 1 rotten_flesh 18
replaceitem block ~0 ~-3 ~4 slot.container 2 bone 17
replaceitem block ~0 ~-3 ~4 slot.container 3 gunpowder 10
replaceitem block ~0 ~-3 ~4 slot.container 4 string 11
replaceitem block ~0 ~-3 ~4 slot.container 5 spider_eye 8
replaceitem block ~0 ~-3 ~4 slot.container 9 cauldron 4
replaceitem block ~0 ~-3 ~4 slot.container 10 lava_bucket 1
replaceitem block ~0 ~-3 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-3 ~4 slot.container 12 lantern 11
replaceitem block ~0 ~-3 ~4 slot.container 13 pointed_dripstone 18
replaceitem block ~0 ~-3 ~4 slot.container 14 dripstone_block 12
loot insert ~0 ~-3 ~4 loot "rsf/dripstone_caves"
loot insert ~0 ~-3 ~4 loot "chests/abandoned_mineshaft"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 copper_ingot 19
replaceitem block ~0 ~-3 ~-4 slot.container 1 rotten_flesh 16
replaceitem block ~0 ~-3 ~-4 slot.container 2 bone 15
replaceitem block ~0 ~-3 ~-4 slot.container 3 gunpowder 16
replaceitem block ~0 ~-3 ~-4 slot.container 4 string 17
replaceitem block ~0 ~-3 ~-4 slot.container 5 spider_eye 6
replaceitem block ~0 ~-3 ~-4 slot.container 9 cauldron 3
replaceitem block ~0 ~-3 ~-4 slot.container 10 lava_bucket 1
replaceitem block ~0 ~-3 ~-4 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-3 ~-4 slot.container 12 lantern 10
replaceitem block ~0 ~-3 ~-4 slot.container 13 pointed_dripstone 17
replaceitem block ~0 ~-3 ~-4 slot.container 14 dripstone_block 18
loot insert ~0 ~-3 ~-4 loot "rsf/dripstone_caves"
loot insert ~0 ~-3 ~-4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~7 ~6 cobbled_deepslate []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 cobbled_deepslate []
fill ~-1 ~1 ~-5 ~1 ~6 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~6 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 cobbled_deepslate_wall []
setblock ~5 ~2 ~0 cobbled_deepslate_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-7 ~-6 ~8 ~7 cobbled_deepslate_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-7 ~6 ~8 ~7 cobbled_deepslate_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 cobbled_deepslate_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 cobbled_deepslate_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~4 ~9 ~6 cobbled_deepslate_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 dripstone_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~5 ~-8 polished_deepslate []
setblock ~-7 ~6 ~-8 campfire []
fill ~-7 ~0 ~8 ~-7 ~5 ~8 polished_deepslate []
setblock ~-7 ~6 ~8 campfire []
fill ~7 ~0 ~-8 ~7 ~5 ~-8 polished_deepslate []
setblock ~7 ~6 ~-8 campfire []
fill ~7 ~0 ~8 ~7 ~5 ~8 polished_deepslate []
setblock ~7 ~6 ~8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~8 ~0 ~-1 ~8 ~8 ~-1 dripstone_block []
setblock ~8 ~9 ~-1 copper_block []
setblock ~8 ~10 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~8 ~0 lantern []
fill ~-3 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 iron_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~5 slot.container 1 gunpowder 13
replaceitem block ~-4 ~1 ~5 slot.container 2 string 14
replaceitem block ~-4 ~1 ~5 slot.container 3 spider_eye 11
replaceitem block ~-4 ~1 ~5 slot.container 4 arrow 22
replaceitem block ~-4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 9 coal 19
replaceitem block ~-4 ~1 ~5 slot.container 10 diamond 6
replaceitem block ~-4 ~1 ~5 slot.container 11 cauldron 7
replaceitem block ~-4 ~1 ~5 slot.container 12 lava_bucket 1
replaceitem block ~-4 ~1 ~5 slot.container 13 iron_pickaxe 1
replaceitem block ~-4 ~1 ~5 slot.container 14 lantern 7
loot insert ~-4 ~1 ~5 loot "rsf/dripstone_caves"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 string 17
replaceitem block ~4 ~1 ~5 slot.container 1 spider_eye 6
replaceitem block ~4 ~1 ~5 slot.container 2 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 4 copper_ingot 19
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 9 coal 17
replaceitem block ~4 ~1 ~5 slot.container 10 diamond 4
replaceitem block ~4 ~1 ~5 slot.container 11 cauldron 5
replaceitem block ~4 ~1 ~5 slot.container 12 lava_bucket 1
replaceitem block ~4 ~1 ~5 slot.container 13 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 14 lantern 12
loot insert ~4 ~1 ~5 loot "rsf/dripstone_caves"
loot insert ~4 ~1 ~5 loot "chests/abandoned_mineshaft"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
