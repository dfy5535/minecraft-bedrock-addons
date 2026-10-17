# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3240/4224 | 主题内编号: b040/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·崩裂远古符文石碑 (dripstone_caves_obelisk_fractured_relic)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 dripstone_block [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 dripstone_block [] replace water
fill ~-5 ~1 ~-6 ~5 ~11 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_deepslate []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 tuff []
setblock ~0 ~0 ~0 copper_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 deepslate_bricks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 string 11
replaceitem block ~2 ~-2 ~3 slot.container 1 spider_eye 8
replaceitem block ~2 ~-2 ~3 slot.container 2 arrow 19
replaceitem block ~2 ~-2 ~3 slot.container 3 ender_pearl 6
replaceitem block ~2 ~-2 ~3 slot.container 4 copper_ingot 21
replaceitem block ~2 ~-2 ~3 slot.container 5 rotten_flesh 18
replaceitem block ~2 ~-2 ~3 slot.container 9 coal 18
replaceitem block ~2 ~-2 ~3 slot.container 10 diamond 5
replaceitem block ~2 ~-2 ~3 slot.container 11 cauldron 6
replaceitem block ~2 ~-2 ~3 slot.container 12 lava_bucket 1
replaceitem block ~2 ~-2 ~3 slot.container 13 iron_pickaxe 1
replaceitem block ~2 ~-2 ~3 slot.container 14 lantern 6
loot insert ~2 ~-2 ~3 loot "rsf/dripstone_caves"
loot insert ~2 ~-2 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 dripstone_block []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 deepslate_bricks []
fill ~-2 ~5 ~-3 ~2 ~9 ~3 deepslate_bricks []
fill ~-2 ~1 ~-3 ~2 ~8 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 deepslate_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~9 ~-5 ~4 ~9 ~5 deepslate_brick_slab []
fill ~-1 ~8 ~-1 ~2 ~9 ~2 air []
fill ~-4 ~8 ~-1 ~-4 ~9 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~8 ~-2 cobbled_deepslate []
fill ~-5 ~0 ~2 ~-5 ~8 ~2 cobbled_deepslate []
fill ~5 ~0 ~-2 ~5 ~8 ~-2 cobbled_deepslate []
fill ~5 ~0 ~2 ~5 ~8 ~2 cobbled_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~7 ~0 ~-2 ~7 ~5 ~-2 dripstone_block []
setblock ~7 ~6 ~-2 copper_block []
setblock ~7 ~7 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 copper_ingot 16
replaceitem block ~-3 ~1 ~4 slot.container 1 rotten_flesh 13
replaceitem block ~-3 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-3 ~1 ~4 slot.container 3 gunpowder 13
replaceitem block ~-3 ~1 ~4 slot.container 4 string 14
replaceitem block ~-3 ~1 ~4 slot.container 5 spider_eye 11
replaceitem block ~-3 ~1 ~4 slot.container 9 pointed_dripstone 18
replaceitem block ~-3 ~1 ~4 slot.container 10 dripstone_block 12
replaceitem block ~-3 ~1 ~4 slot.container 11 iron_ingot 11
replaceitem block ~-3 ~1 ~4 slot.container 12 gold_ingot 8
replaceitem block ~-3 ~1 ~4 slot.container 13 coal 19
replaceitem block ~-3 ~1 ~4 slot.container 14 diamond 6
loot insert ~-3 ~1 ~4 loot "rsf/dripstone_caves"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 15
replaceitem block ~3 ~1 ~4 slot.container 1 gunpowder 16
replaceitem block ~3 ~1 ~4 slot.container 2 string 17
replaceitem block ~3 ~1 ~4 slot.container 3 spider_eye 6
replaceitem block ~3 ~1 ~4 slot.container 4 arrow 17
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 9 pointed_dripstone 16
replaceitem block ~3 ~1 ~4 slot.container 10 dripstone_block 17
replaceitem block ~3 ~1 ~4 slot.container 11 iron_ingot 16
replaceitem block ~3 ~1 ~4 slot.container 12 gold_ingot 6
replaceitem block ~3 ~1 ~4 slot.container 13 coal 17
replaceitem block ~3 ~1 ~4 slot.container 14 diamond 4
loot insert ~3 ~1 ~4 loot "rsf/dripstone_caves"
loot insert ~3 ~1 ~4 loot "chests/abandoned_mineshaft"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
