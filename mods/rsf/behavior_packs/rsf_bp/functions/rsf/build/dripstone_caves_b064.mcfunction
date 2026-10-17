# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3264/4224 | 主题内编号: b064/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·U型冥庭守墓人陵园 (dripstone_caves_crypt_courtyard_graveyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 dripstone_block [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 dripstone_block [] replace water
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_deepslate []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 tuff []
setblock ~0 ~0 ~0 copper_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 deepslate_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 deepslate_bricks []
setblock ~0 ~-6 ~0 raw_copper_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 bone 17
replaceitem block ~0 ~-3 ~-4 slot.container 1 gunpowder 10
replaceitem block ~0 ~-3 ~-4 slot.container 2 string 11
replaceitem block ~0 ~-3 ~-4 slot.container 3 spider_eye 8
replaceitem block ~0 ~-3 ~-4 slot.container 4 arrow 19
replaceitem block ~0 ~-3 ~-4 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 9 iron_pickaxe 1
replaceitem block ~0 ~-3 ~-4 slot.container 10 lantern 12
replaceitem block ~0 ~-3 ~-4 slot.container 11 pointed_dripstone 12
replaceitem block ~0 ~-3 ~-4 slot.container 12 dripstone_block 13
replaceitem block ~0 ~-3 ~-4 slot.container 13 iron_ingot 12
replaceitem block ~0 ~-3 ~-4 slot.container 14 gold_ingot 9
loot insert ~0 ~-3 ~-4 loot "rsf/dripstone_caves"
loot insert ~0 ~-3 ~-4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 dripstone_block []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 tuff []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-7 ~-6 ~8 ~7 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-7 ~6 ~8 ~7 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~4 ~9 ~6 deepslate_brick_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 deepslate_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 deepslate_brick_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~8 ~0 ~-1 ~8 ~4 ~-1 dripstone_block []
setblock ~8 ~5 ~-1 copper_block []
setblock ~8 ~6 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-5 ~1 ~6 blast_furnace []
setblock ~-4 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 copper_ingot 16
replaceitem block ~-4 ~1 ~5 slot.container 1 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 2 bone 12
replaceitem block ~-4 ~1 ~5 slot.container 3 gunpowder 13
replaceitem block ~-4 ~1 ~5 slot.container 4 string 14
replaceitem block ~-4 ~1 ~5 slot.container 5 spider_eye 11
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_ingot 12
replaceitem block ~-4 ~1 ~5 slot.container 10 gold_ingot 9
replaceitem block ~-4 ~1 ~5 slot.container 11 coal 20
replaceitem block ~-4 ~1 ~5 slot.container 12 diamond 7
replaceitem block ~-4 ~1 ~5 slot.container 13 cauldron 8
replaceitem block ~-4 ~1 ~5 slot.container 14 lava_bucket 1
loot insert ~-4 ~1 ~5 loot "rsf/dripstone_caves"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 15
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 16
replaceitem block ~4 ~1 ~5 slot.container 2 string 17
replaceitem block ~4 ~1 ~5 slot.container 3 spider_eye 6
replaceitem block ~4 ~1 ~5 slot.container 4 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 10 gold_ingot 7
replaceitem block ~4 ~1 ~5 slot.container 11 coal 18
replaceitem block ~4 ~1 ~5 slot.container 12 diamond 5
replaceitem block ~4 ~1 ~5 slot.container 13 cauldron 6
replaceitem block ~4 ~1 ~5 slot.container 14 lava_bucket 1
loot insert ~4 ~1 ~5 loot "rsf/dripstone_caves"
loot insert ~4 ~1 ~5 loot "chests/abandoned_mineshaft"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
