# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3260/4224 | 主题内编号: b060/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·圆形穹顶万骨祠堂 (dripstone_caves_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 dripstone_block [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 dripstone_block [] replace water
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_deepslate []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 tuff []
setblock ~0 ~0 ~0 copper_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 dripstone_block []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 lantern []
setblock ~3 ~-5 ~0 lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 bone 17
replaceitem block ~0 ~-3 ~4 slot.container 1 gunpowder 10
replaceitem block ~0 ~-3 ~4 slot.container 2 string 11
replaceitem block ~0 ~-3 ~4 slot.container 3 spider_eye 8
replaceitem block ~0 ~-3 ~4 slot.container 4 arrow 19
replaceitem block ~0 ~-3 ~4 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-3 ~4 slot.container 9 iron_ingot 14
replaceitem block ~0 ~-3 ~4 slot.container 10 gold_ingot 11
replaceitem block ~0 ~-3 ~4 slot.container 11 coal 22
replaceitem block ~0 ~-3 ~4 slot.container 12 diamond 2
replaceitem block ~0 ~-3 ~4 slot.container 13 cauldron 3
replaceitem block ~0 ~-3 ~4 slot.container 14 lava_bucket 1
loot insert ~0 ~-3 ~4 loot "rsf/dripstone_caves"
loot insert ~0 ~-3 ~4 loot "chests/abandoned_mineshaft"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 bone 15
replaceitem block ~0 ~-3 ~-4 slot.container 1 gunpowder 16
replaceitem block ~0 ~-3 ~-4 slot.container 2 string 17
replaceitem block ~0 ~-3 ~-4 slot.container 3 spider_eye 6
replaceitem block ~0 ~-3 ~-4 slot.container 4 arrow 17
replaceitem block ~0 ~-3 ~-4 slot.container 5 ender_pearl 4
replaceitem block ~0 ~-3 ~-4 slot.container 9 iron_ingot 13
replaceitem block ~0 ~-3 ~-4 slot.container 10 gold_ingot 10
replaceitem block ~0 ~-3 ~-4 slot.container 11 coal 21
replaceitem block ~0 ~-3 ~-4 slot.container 12 diamond 8
replaceitem block ~0 ~-3 ~-4 slot.container 13 cauldron 2
replaceitem block ~0 ~-3 ~-4 slot.container 14 lava_bucket 1
loot insert ~0 ~-3 ~-4 loot "rsf/dripstone_caves"
loot insert ~0 ~-3 ~-4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 deepslate_bricks []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 cobbled_deepslate []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 cobbled_deepslate []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 cobbled_deepslate []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 cobbled_deepslate []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 cobbled_deepslate []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 cobbled_deepslate []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 cobbled_deepslate []
fill ~1 ~1 ~6 ~1 ~7 ~6 cobbled_deepslate []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 cobbled_deepslate []
fill ~3 ~1 ~6 ~3 ~7 ~6 cobbled_deepslate []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 cobbled_deepslate []
fill ~5 ~1 ~6 ~5 ~7 ~6 cobbled_deepslate []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 cobbled_deepslate []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 cobbled_deepslate []
fill ~-5 ~1 ~-2 ~-5 ~7 ~-2 cobbled_deepslate []
fill ~5 ~1 ~-2 ~5 ~7 ~-2 cobbled_deepslate []
fill ~-5 ~1 ~0 ~-5 ~7 ~0 cobbled_deepslate []
fill ~5 ~1 ~0 ~5 ~7 ~0 cobbled_deepslate []
fill ~-5 ~1 ~2 ~-5 ~7 ~2 cobbled_deepslate []
fill ~5 ~1 ~2 ~5 ~7 ~2 cobbled_deepslate []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 cobbled_deepslate []
fill ~5 ~1 ~4 ~5 ~7 ~4 cobbled_deepslate []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 deepslate_bricks []
fill ~-4 ~9 ~-5 ~4 ~10 ~5 glass []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 air []
setblock ~0 ~10 ~0 lantern []

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

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x9x3) ---
fill ~8 ~0 ~1 ~8 ~5 ~1 dripstone_block []
setblock ~8 ~6 ~1 copper_block []
setblock ~8 ~7 ~1 lantern []

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
replaceitem block ~-4 ~1 ~5 slot.container 9 pointed_dripstone 17
replaceitem block ~-4 ~1 ~5 slot.container 10 dripstone_block 18
replaceitem block ~-4 ~1 ~5 slot.container 11 iron_ingot 10
replaceitem block ~-4 ~1 ~5 slot.container 12 gold_ingot 7
replaceitem block ~-4 ~1 ~5 slot.container 13 coal 18
replaceitem block ~-4 ~1 ~5 slot.container 14 diamond 5
loot insert ~-4 ~1 ~5 loot "rsf/dripstone_caves"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 2 copper_ingot 19
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 4 bone 15
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 16
replaceitem block ~4 ~1 ~5 slot.container 9 pointed_dripstone 15
replaceitem block ~4 ~1 ~5 slot.container 10 dripstone_block 16
replaceitem block ~4 ~1 ~5 slot.container 11 iron_ingot 15
replaceitem block ~4 ~1 ~5 slot.container 12 gold_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 13 coal 16
replaceitem block ~4 ~1 ~5 slot.container 14 diamond 3
loot insert ~4 ~1 ~5 loot "rsf/dripstone_caves"
loot insert ~4 ~1 ~5 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon witch ~0 ~-3 ~0
