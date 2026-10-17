# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3217/4224 | 主题内编号: b017/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·双坡顶皇家藏宝室 (dripstone_caves_chamber_gabled_treasury)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 11x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 deepslate_bricks [] replace air
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 deepslate_bricks [] replace water
fill ~-5 ~1 ~-7 ~5 ~9 ~7 air []
fill ~-5 ~0 ~-7 ~5 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 tuff []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 deepslate_tiles []
setblock ~0 ~0 ~0 raw_copper_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-5 ~3 ~-1 ~5 cobbled_deepslate []
fill ~-2 ~-5 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~4 slot.container 0 spider_eye 8
replaceitem block ~2 ~-3 ~4 slot.container 1 arrow 19
replaceitem block ~2 ~-3 ~4 slot.container 2 ender_pearl 6
replaceitem block ~2 ~-3 ~4 slot.container 3 copper_ingot 21
replaceitem block ~2 ~-3 ~4 slot.container 4 rotten_flesh 18
replaceitem block ~2 ~-3 ~4 slot.container 5 bone 17
replaceitem block ~2 ~-3 ~4 slot.container 9 diamond 2
replaceitem block ~2 ~-3 ~4 slot.container 10 cauldron 3
replaceitem block ~2 ~-3 ~4 slot.container 11 lava_bucket 1
replaceitem block ~2 ~-3 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~2 ~-3 ~4 slot.container 13 lantern 10
replaceitem block ~2 ~-3 ~4 slot.container 14 pointed_dripstone 17
loot insert ~2 ~-3 ~4 loot "rsf/dripstone_caves"
loot insert ~2 ~-3 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-6 ~4 ~7 ~6 deepslate_bricks []
fill ~-3 ~1 ~-5 ~3 ~6 ~5 air []
fill ~-4 ~1 ~-6 ~-4 ~7 ~-6 polished_deepslate []
fill ~-4 ~1 ~6 ~-4 ~7 ~6 polished_deepslate []
fill ~4 ~1 ~-6 ~4 ~7 ~-6 polished_deepslate []
fill ~4 ~1 ~6 ~4 ~7 ~6 polished_deepslate []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-4 ~2 ~0 deepslate_brick_wall []
setblock ~4 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~8 ~-7 ~-5 ~8 ~7 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-7 ~5 ~8 ~7 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~-4 ~9 ~6 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~4 ~9 ~-6 ~4 ~9 ~6 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~9 ~-6 ~3 ~9 ~6 deepslate_brick_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 dripstone_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 polished_deepslate []
setblock ~-6 ~6 ~-7 campfire []
fill ~-6 ~0 ~7 ~-6 ~5 ~7 polished_deepslate []
setblock ~-6 ~6 ~7 campfire []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 polished_deepslate []
setblock ~6 ~6 ~-7 campfire []
fill ~6 ~0 ~7 ~6 ~5 ~7 polished_deepslate []
setblock ~6 ~6 ~7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~7 ~0 ~0 ~7 ~7 ~0 dripstone_block []
setblock ~7 ~8 ~0 copper_block []
setblock ~7 ~9 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 lantern []
fill ~-3 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 raw_copper_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 rotten_flesh 13
replaceitem block ~3 ~1 ~5 slot.container 1 bone 12
replaceitem block ~3 ~1 ~5 slot.container 2 gunpowder 13
replaceitem block ~3 ~1 ~5 slot.container 3 string 14
replaceitem block ~3 ~1 ~5 slot.container 4 spider_eye 11
replaceitem block ~3 ~1 ~5 slot.container 5 arrow 22
replaceitem block ~3 ~1 ~5 slot.container 9 dripstone_block 16
replaceitem block ~3 ~1 ~5 slot.container 10 iron_ingot 15
replaceitem block ~3 ~1 ~5 slot.container 11 gold_ingot 12
replaceitem block ~3 ~1 ~5 slot.container 12 coal 16
replaceitem block ~3 ~1 ~5 slot.container 13 diamond 3
replaceitem block ~3 ~1 ~5 slot.container 14 cauldron 4
loot insert ~3 ~1 ~5 loot "rsf/dripstone_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
