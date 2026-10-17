# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3248/4224 | 主题内编号: b048/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·阶梯王座巅峰试炼台 (dripstone_caves_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 dripstone_block [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 dripstone_block [] replace water
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_deepslate []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 tuff []
setblock ~0 ~0 ~0 copper_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 deepslate_bricks []
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 deepslate_bricks []
setblock ~0 ~-5 ~0 raw_copper_block []
fill ~0 ~-4 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-5 slot.container 0 bone 17
replaceitem block ~0 ~-2 ~-5 slot.container 1 gunpowder 10
replaceitem block ~0 ~-2 ~-5 slot.container 2 string 11
replaceitem block ~0 ~-2 ~-5 slot.container 3 spider_eye 8
replaceitem block ~0 ~-2 ~-5 slot.container 4 arrow 19
replaceitem block ~0 ~-2 ~-5 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-2 ~-5 slot.container 9 pointed_dripstone 15
replaceitem block ~0 ~-2 ~-5 slot.container 10 dripstone_block 16
replaceitem block ~0 ~-2 ~-5 slot.container 11 iron_ingot 15
replaceitem block ~0 ~-2 ~-5 slot.container 12 gold_ingot 12
replaceitem block ~0 ~-2 ~-5 slot.container 13 coal 16
replaceitem block ~0 ~-2 ~-5 slot.container 14 diamond 3
loot insert ~0 ~-2 ~-5 loot "rsf/dripstone_caves"
loot insert ~0 ~-2 ~-5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 dripstone_block []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 deepslate_bricks []
fill ~-4 ~5 ~-5 ~4 ~8 ~5 deepslate_bricks []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 deepslate_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~8 ~-7 ~-6 ~10 ~-7 cobbled_deepslate []
setblock ~-6 ~11 ~-7 lantern []
fill ~-6 ~8 ~7 ~-6 ~10 ~7 cobbled_deepslate []
setblock ~-6 ~11 ~7 lantern []
fill ~6 ~8 ~-7 ~6 ~10 ~-7 cobbled_deepslate []
setblock ~6 ~11 ~-7 lantern []
fill ~6 ~8 ~7 ~6 ~10 ~7 cobbled_deepslate []
setblock ~6 ~11 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 cobbled_deepslate []
setblock ~0 ~4 ~-9 raw_copper_block []
setblock ~0 ~5 ~-9 lantern []
fill ~0 ~0 ~9 ~0 ~3 ~9 cobbled_deepslate []
setblock ~0 ~4 ~9 raw_copper_block []
setblock ~0 ~5 ~9 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 cobbled_deepslate []
setblock ~-8 ~4 ~0 raw_copper_block []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 cobbled_deepslate []
setblock ~8 ~4 ~0 raw_copper_block []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 9x10x6) ---
fill ~9 ~0 ~0 ~9 ~8 ~0 dripstone_block []
setblock ~9 ~9 ~0 copper_block []
setblock ~9 ~10 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~7 ~0 lantern []
fill ~-5 ~1 ~6 ~-1 ~2 ~6 barrel ["facing_direction"=2]
setblock ~0 ~1 ~6 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 copper_ingot 16
replaceitem block ~-5 ~1 ~6 slot.container 1 rotten_flesh 13
replaceitem block ~-5 ~1 ~6 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~6 slot.container 3 gunpowder 13
replaceitem block ~-5 ~1 ~6 slot.container 4 string 14
replaceitem block ~-5 ~1 ~6 slot.container 5 spider_eye 11
replaceitem block ~-5 ~1 ~6 slot.container 9 coal 16
replaceitem block ~-5 ~1 ~6 slot.container 10 diamond 3
replaceitem block ~-5 ~1 ~6 slot.container 11 cauldron 4
replaceitem block ~-5 ~1 ~6 slot.container 12 lava_bucket 1
replaceitem block ~-5 ~1 ~6 slot.container 13 iron_pickaxe 1
replaceitem block ~-5 ~1 ~6 slot.container 14 lantern 11
loot insert ~-5 ~1 ~6 loot "rsf/dripstone_caves"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 bone 15
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 16
replaceitem block ~5 ~1 ~6 slot.container 2 string 17
replaceitem block ~5 ~1 ~6 slot.container 3 spider_eye 6
replaceitem block ~5 ~1 ~6 slot.container 4 arrow 17
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 9 coal 21
replaceitem block ~5 ~1 ~6 slot.container 10 diamond 8
replaceitem block ~5 ~1 ~6 slot.container 11 cauldron 2
replaceitem block ~5 ~1 ~6 slot.container 12 lava_bucket 1
replaceitem block ~5 ~1 ~6 slot.container 13 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 14 lantern 9
loot insert ~5 ~1 ~6 loot "rsf/dripstone_caves"
loot insert ~5 ~1 ~6 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon witch ~0 ~-2 ~0
