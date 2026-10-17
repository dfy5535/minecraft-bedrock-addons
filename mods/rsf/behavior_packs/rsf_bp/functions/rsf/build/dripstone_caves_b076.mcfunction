# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3276/4224 | 主题内编号: b076/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·阶梯高台图腾战阵 (dripstone_caves_totem_stepped_altar_ring)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x15 | 地上高度 9格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 dripstone_block [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 dripstone_block [] replace water
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_deepslate []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 tuff []
setblock ~0 ~0 ~0 copper_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 dripstone_block []
fill ~-4 ~-4 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 copper_block []
setblock ~-3 ~-4 ~-4 lantern []
setblock ~3 ~-4 ~4 lantern []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 string 11
replaceitem block ~0 ~-2 ~4 slot.container 1 spider_eye 8
replaceitem block ~0 ~-2 ~4 slot.container 2 arrow 19
replaceitem block ~0 ~-2 ~4 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-2 ~4 slot.container 4 copper_ingot 21
replaceitem block ~0 ~-2 ~4 slot.container 5 rotten_flesh 18
replaceitem block ~0 ~-2 ~4 slot.container 9 pointed_dripstone 16
replaceitem block ~0 ~-2 ~4 slot.container 10 dripstone_block 17
replaceitem block ~0 ~-2 ~4 slot.container 11 iron_ingot 16
replaceitem block ~0 ~-2 ~4 slot.container 12 gold_ingot 6
replaceitem block ~0 ~-2 ~4 slot.container 13 coal 17
replaceitem block ~0 ~-2 ~4 slot.container 14 diamond 4
loot insert ~0 ~-2 ~4 loot "rsf/dripstone_caves"
loot insert ~0 ~-2 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 dripstone_block []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 deepslate_bricks []
fill ~-3 ~5 ~-4 ~3 ~9 ~4 deepslate_bricks []
fill ~-3 ~1 ~-4 ~3 ~8 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 deepslate_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 deepslate_bricks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 dripstone_block []
fill ~0 ~15 ~0 ~0 ~17 ~0 copper_block []
setblock ~0 ~18 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 cobbled_deepslate []
setblock ~0 ~4 ~-8 raw_copper_block []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 cobbled_deepslate []
setblock ~0 ~4 ~8 raw_copper_block []
setblock ~0 ~5 ~8 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 cobbled_deepslate []
setblock ~-7 ~4 ~0 raw_copper_block []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 cobbled_deepslate []
setblock ~7 ~4 ~0 raw_copper_block []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~8 ~0 ~-1 ~8 ~6 ~-1 dripstone_block []
setblock ~8 ~7 ~-1 copper_block []
setblock ~8 ~8 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 string 14
replaceitem block ~-4 ~1 ~5 slot.container 1 spider_eye 11
replaceitem block ~-4 ~1 ~5 slot.container 2 arrow 22
replaceitem block ~-4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 4 copper_ingot 16
replaceitem block ~-4 ~1 ~5 slot.container 5 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~-4 ~1 ~5 slot.container 10 lantern 7
replaceitem block ~-4 ~1 ~5 slot.container 11 pointed_dripstone 14
replaceitem block ~-4 ~1 ~5 slot.container 12 dripstone_block 15
replaceitem block ~-4 ~1 ~5 slot.container 13 iron_ingot 14
replaceitem block ~-4 ~1 ~5 slot.container 14 gold_ingot 11
loot insert ~-4 ~1 ~5 loot "rsf/dripstone_caves"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 2 copper_ingot 19
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 4 bone 15
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 16
replaceitem block ~4 ~1 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 10 lantern 12
replaceitem block ~4 ~1 ~5 slot.container 11 pointed_dripstone 12
replaceitem block ~4 ~1 ~5 slot.container 12 dripstone_block 13
replaceitem block ~4 ~1 ~5 slot.container 13 iron_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 14 gold_ingot 9
loot insert ~4 ~1 ~5 loot "rsf/dripstone_caves"
loot insert ~4 ~1 ~5 loot "chests/abandoned_mineshaft"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
