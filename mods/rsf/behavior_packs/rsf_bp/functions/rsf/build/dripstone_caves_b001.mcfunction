# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3201/4224 | 主题内编号: b001/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·三层阶梯圣火祭坛 (dripstone_caves_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 deepslate_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 deepslate_bricks [] replace water
fill ~-5 ~1 ~-6 ~5 ~9 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 tuff []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 deepslate_tiles []
setblock ~0 ~0 ~0 raw_copper_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 cobbled_deepslate []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 spider_eye 8
replaceitem block ~2 ~-3 ~3 slot.container 1 arrow 19
replaceitem block ~2 ~-3 ~3 slot.container 2 ender_pearl 6
replaceitem block ~2 ~-3 ~3 slot.container 3 copper_ingot 21
replaceitem block ~2 ~-3 ~3 slot.container 4 rotten_flesh 18
replaceitem block ~2 ~-3 ~3 slot.container 5 bone 17
replaceitem block ~2 ~-3 ~3 slot.container 9 lava_bucket 1
replaceitem block ~2 ~-3 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~2 ~-3 ~3 slot.container 11 lantern 6
replaceitem block ~2 ~-3 ~3 slot.container 12 pointed_dripstone 13
replaceitem block ~2 ~-3 ~3 slot.container 13 dripstone_block 14
replaceitem block ~2 ~-3 ~3 slot.container 14 iron_ingot 13
loot insert ~2 ~-3 ~3 loot "rsf/dripstone_caves"
loot insert ~2 ~-3 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 deepslate_bricks []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 dripstone_block []
fill ~-2 ~5 ~-3 ~2 ~7 ~3 cobbled_deepslate []
fill ~-2 ~1 ~-3 ~2 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 deepslate_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-4 ~7 ~-5 ~-4 ~9 ~-5 polished_deepslate []
setblock ~-4 ~10 ~-5 torch []
fill ~-4 ~7 ~5 ~-4 ~9 ~5 polished_deepslate []
setblock ~-4 ~10 ~5 torch []
fill ~4 ~7 ~-5 ~4 ~9 ~-5 polished_deepslate []
setblock ~4 ~10 ~-5 torch []
fill ~4 ~7 ~5 ~4 ~9 ~5 polished_deepslate []
setblock ~4 ~10 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 deepslate_tile_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~7 ~0 ~-1 ~7 ~6 ~-1 dripstone_block []
setblock ~7 ~7 ~-1 copper_block []
setblock ~7 ~8 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 raw_copper_block []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 13
replaceitem block ~3 ~1 ~4 slot.container 1 bone 12
replaceitem block ~3 ~1 ~4 slot.container 2 gunpowder 13
replaceitem block ~3 ~1 ~4 slot.container 3 string 14
replaceitem block ~3 ~1 ~4 slot.container 4 spider_eye 11
replaceitem block ~3 ~1 ~4 slot.container 5 arrow 22
replaceitem block ~3 ~1 ~4 slot.container 9 gold_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 10 coal 19
replaceitem block ~3 ~1 ~4 slot.container 11 diamond 6
replaceitem block ~3 ~1 ~4 slot.container 12 cauldron 7
replaceitem block ~3 ~1 ~4 slot.container 13 lava_bucket 1
replaceitem block ~3 ~1 ~4 slot.container 14 iron_pickaxe 1
loot insert ~3 ~1 ~4 loot "rsf/dripstone_caves"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
