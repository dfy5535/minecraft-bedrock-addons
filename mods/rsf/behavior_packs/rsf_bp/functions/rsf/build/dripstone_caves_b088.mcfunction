# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3288/4224 | 主题内编号: b088/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·矿车铁轨转运仓库 (dripstone_caves_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 11x17 | 地上高度 7格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 dripstone_block [] replace air
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 dripstone_block [] replace water
fill ~-5 ~1 ~-8 ~5 ~9 ~8 air []
fill ~-5 ~0 ~-8 ~5 ~0 ~8 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-7 ~4 ~0 ~7 polished_deepslate []
fill ~-3 ~0 ~-6 ~3 ~0 ~6 tuff []
setblock ~0 ~0 ~0 copper_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-6 ~3 ~-1 ~6 deepslate_bricks []
fill ~-2 ~-4 ~-5 ~2 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~5 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~5 slot.container 0 string 11
replaceitem block ~2 ~-2 ~5 slot.container 1 spider_eye 8
replaceitem block ~2 ~-2 ~5 slot.container 2 arrow 19
replaceitem block ~2 ~-2 ~5 slot.container 3 ender_pearl 6
replaceitem block ~2 ~-2 ~5 slot.container 4 copper_ingot 21
replaceitem block ~2 ~-2 ~5 slot.container 5 rotten_flesh 18
replaceitem block ~2 ~-2 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~2 ~-2 ~5 slot.container 10 lantern 8
replaceitem block ~2 ~-2 ~5 slot.container 11 pointed_dripstone 15
replaceitem block ~2 ~-2 ~5 slot.container 12 dripstone_block 16
replaceitem block ~2 ~-2 ~5 slot.container 13 iron_ingot 15
replaceitem block ~2 ~-2 ~5 slot.container 14 gold_ingot 12
loot insert ~2 ~-2 ~5 loot "rsf/dripstone_caves"
loot insert ~2 ~-2 ~5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-7 ~4 ~7 ~7 dripstone_block []
fill ~-3 ~1 ~-6 ~3 ~6 ~6 air []
fill ~-4 ~1 ~-7 ~-4 ~7 ~-7 cobbled_deepslate []
fill ~-4 ~1 ~7 ~-4 ~7 ~7 cobbled_deepslate []
fill ~4 ~1 ~-7 ~4 ~7 ~-7 cobbled_deepslate []
fill ~4 ~1 ~7 ~4 ~7 ~7 cobbled_deepslate []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-4 ~2 ~0 deepslate_brick_wall []
setblock ~4 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~8 ~-8 ~-5 ~8 ~8 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-8 ~5 ~8 ~8 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-7 ~-4 ~9 ~7 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~4 ~9 ~-7 ~4 ~9 ~7 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~9 ~-7 ~3 ~9 ~7 deepslate_brick_slab []
fill ~0 ~10 ~-8 ~0 ~10 ~8 deepslate_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 deepslate_bricks []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 lantern []
setblock ~2 ~4 ~-10 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~7 ~0 ~-2 ~7 ~8 ~-2 dripstone_block []
setblock ~7 ~9 ~-2 copper_block []
setblock ~7 ~10 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~6 slot.container 0 copper_ingot 16
replaceitem block ~-3 ~1 ~6 slot.container 1 rotten_flesh 13
replaceitem block ~-3 ~1 ~6 slot.container 2 bone 12
replaceitem block ~-3 ~1 ~6 slot.container 3 gunpowder 13
replaceitem block ~-3 ~1 ~6 slot.container 4 string 14
replaceitem block ~-3 ~1 ~6 slot.container 5 spider_eye 11
replaceitem block ~-3 ~1 ~6 slot.container 9 coal 21
replaceitem block ~-3 ~1 ~6 slot.container 10 diamond 8
replaceitem block ~-3 ~1 ~6 slot.container 11 cauldron 2
replaceitem block ~-3 ~1 ~6 slot.container 12 lava_bucket 1
replaceitem block ~-3 ~1 ~6 slot.container 13 iron_pickaxe 1
replaceitem block ~-3 ~1 ~6 slot.container 14 lantern 9
loot insert ~-3 ~1 ~6 loot "rsf/dripstone_caves"
setblock ~3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~6 slot.container 0 bone 15
replaceitem block ~3 ~1 ~6 slot.container 1 gunpowder 16
replaceitem block ~3 ~1 ~6 slot.container 2 string 17
replaceitem block ~3 ~1 ~6 slot.container 3 spider_eye 6
replaceitem block ~3 ~1 ~6 slot.container 4 arrow 17
replaceitem block ~3 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~6 slot.container 9 coal 19
replaceitem block ~3 ~1 ~6 slot.container 10 diamond 6
replaceitem block ~3 ~1 ~6 slot.container 11 cauldron 7
replaceitem block ~3 ~1 ~6 slot.container 12 lava_bucket 1
replaceitem block ~3 ~1 ~6 slot.container 13 iron_pickaxe 1
replaceitem block ~3 ~1 ~6 slot.container 14 lantern 7
loot insert ~3 ~1 ~6 loot "rsf/dripstone_caves"
loot insert ~3 ~1 ~6 loot "chests/abandoned_mineshaft"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
