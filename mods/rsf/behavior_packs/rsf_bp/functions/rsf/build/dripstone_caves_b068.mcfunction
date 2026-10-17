# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3268/4224 | 主题内编号: b068/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·断裂凯旋高架拱廊 (dripstone_caves_ruin_broken_aqueduct)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 2格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 dripstone_block [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 dripstone_block [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 tuff []
setblock ~0 ~0 ~0 copper_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 deepslate_bricks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-5 ~6 ~8 ~5 dripstone_block []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 deepslate_brick_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-6 ~7 ~-1 ~-6 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 deepslate_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 9x7x6) ---
fill ~9 ~0 ~1 ~9 ~8 ~1 dripstone_block []
setblock ~9 ~9 ~1 copper_block []
setblock ~9 ~10 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 string 14
replaceitem block ~-5 ~1 ~4 slot.container 1 spider_eye 11
replaceitem block ~-5 ~1 ~4 slot.container 2 arrow 22
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 4 copper_ingot 16
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 13
replaceitem block ~-5 ~1 ~4 slot.container 9 coal 22
replaceitem block ~-5 ~1 ~4 slot.container 10 diamond 2
replaceitem block ~-5 ~1 ~4 slot.container 11 cauldron 3
replaceitem block ~-5 ~1 ~4 slot.container 12 lava_bucket 1
replaceitem block ~-5 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~-5 ~1 ~4 slot.container 14 lantern 10
loot insert ~-5 ~1 ~4 loot "rsf/dripstone_caves"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 arrow 17
replaceitem block ~5 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~5 ~1 ~4 slot.container 2 copper_ingot 19
replaceitem block ~5 ~1 ~4 slot.container 3 rotten_flesh 16
replaceitem block ~5 ~1 ~4 slot.container 4 bone 15
replaceitem block ~5 ~1 ~4 slot.container 5 gunpowder 16
replaceitem block ~5 ~1 ~4 slot.container 9 coal 20
replaceitem block ~5 ~1 ~4 slot.container 10 diamond 7
replaceitem block ~5 ~1 ~4 slot.container 11 cauldron 8
replaceitem block ~5 ~1 ~4 slot.container 12 lava_bucket 1
replaceitem block ~5 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~5 ~1 ~4 slot.container 14 lantern 8
loot insert ~5 ~1 ~4 loot "rsf/dripstone_caves"
loot insert ~5 ~1 ~4 loot "chests/abandoned_mineshaft"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
