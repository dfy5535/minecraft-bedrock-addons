# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3261/4224 | 主题内编号: b061/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·双子封土古墓地宫 (dripstone_caves_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 tuff []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_tiles []
setblock ~0 ~0 ~0 raw_copper_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobbled_deepslate []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 dripstone_block []
setblock ~0 ~-7 ~0 iron_block []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 torch []
setblock ~2 ~-6 ~0 torch []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~-3 slot.container 1 copper_ingot 21
replaceitem block ~0 ~-4 ~-3 slot.container 2 rotten_flesh 18
replaceitem block ~0 ~-4 ~-3 slot.container 3 bone 17
replaceitem block ~0 ~-4 ~-3 slot.container 4 gunpowder 10
replaceitem block ~0 ~-4 ~-3 slot.container 5 string 11
replaceitem block ~0 ~-4 ~-3 slot.container 9 lantern 8
replaceitem block ~0 ~-4 ~-3 slot.container 10 pointed_dripstone 15
replaceitem block ~0 ~-4 ~-3 slot.container 11 dripstone_block 16
replaceitem block ~0 ~-4 ~-3 slot.container 12 iron_ingot 15
replaceitem block ~0 ~-4 ~-3 slot.container 13 gold_ingot 12
replaceitem block ~0 ~-4 ~-3 slot.container 14 coal 16
loot insert ~0 ~-4 ~-3 loot "rsf/dripstone_caves"
loot insert ~0 ~-4 ~-3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 deepslate_bricks []
fill ~2 ~1 ~-5 ~6 ~8 ~5 deepslate_bricks []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 dripstone_block []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 dripstone_block []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 cobbled_deepslate []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 raw_copper_block []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 dripstone_block []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 9x6x4) ---
fill ~9 ~0 ~-1 ~9 ~6 ~-1 dripstone_block []
setblock ~9 ~7 ~-1 copper_block []
setblock ~9 ~8 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-4 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 spider_eye 11
replaceitem block ~5 ~1 ~4 slot.container 1 arrow 22
replaceitem block ~5 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~4 slot.container 3 copper_ingot 16
replaceitem block ~5 ~1 ~4 slot.container 4 rotten_flesh 13
replaceitem block ~5 ~1 ~4 slot.container 5 bone 12
replaceitem block ~5 ~1 ~4 slot.container 9 gold_ingot 12
replaceitem block ~5 ~1 ~4 slot.container 10 coal 16
replaceitem block ~5 ~1 ~4 slot.container 11 diamond 3
replaceitem block ~5 ~1 ~4 slot.container 12 cauldron 4
replaceitem block ~5 ~1 ~4 slot.container 13 lava_bucket 1
replaceitem block ~5 ~1 ~4 slot.container 14 iron_pickaxe 1
loot insert ~5 ~1 ~4 loot "rsf/dripstone_caves"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
