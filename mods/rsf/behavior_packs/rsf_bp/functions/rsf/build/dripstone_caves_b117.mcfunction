# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3317/4224 | 主题内编号: b117/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·环柱生态标本采集馆 (dripstone_caves_conservatory_rotunda_bio)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 tuff []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 deepslate_tiles []
setblock ~0 ~0 ~0 raw_copper_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 cobbled_deepslate []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 rotten_flesh 18
replaceitem block ~3 ~-3 ~4 slot.container 1 bone 17
replaceitem block ~3 ~-3 ~4 slot.container 2 gunpowder 10
replaceitem block ~3 ~-3 ~4 slot.container 3 string 11
replaceitem block ~3 ~-3 ~4 slot.container 4 spider_eye 8
replaceitem block ~3 ~-3 ~4 slot.container 5 arrow 19
replaceitem block ~3 ~-3 ~4 slot.container 9 diamond 4
replaceitem block ~3 ~-3 ~4 slot.container 10 cauldron 5
replaceitem block ~3 ~-3 ~4 slot.container 11 lava_bucket 1
replaceitem block ~3 ~-3 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~3 ~-3 ~4 slot.container 13 lantern 12
replaceitem block ~3 ~-3 ~4 slot.container 14 pointed_dripstone 12
loot insert ~3 ~-3 ~4 loot "rsf/dripstone_caves"
loot insert ~3 ~-3 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 dripstone_block []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 polished_deepslate []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 polished_deepslate []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 polished_deepslate []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 polished_deepslate []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 polished_deepslate []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 polished_deepslate []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 polished_deepslate []
fill ~1 ~1 ~6 ~1 ~7 ~6 polished_deepslate []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 polished_deepslate []
fill ~3 ~1 ~6 ~3 ~7 ~6 polished_deepslate []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 polished_deepslate []
fill ~5 ~1 ~6 ~5 ~7 ~6 polished_deepslate []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 polished_deepslate []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 polished_deepslate []
fill ~-5 ~1 ~-2 ~-5 ~7 ~-2 polished_deepslate []
fill ~5 ~1 ~-2 ~5 ~7 ~-2 polished_deepslate []
fill ~-5 ~1 ~0 ~-5 ~7 ~0 polished_deepslate []
fill ~5 ~1 ~0 ~5 ~7 ~0 polished_deepslate []
fill ~-5 ~1 ~2 ~-5 ~7 ~2 polished_deepslate []
fill ~5 ~1 ~2 ~5 ~7 ~2 polished_deepslate []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 polished_deepslate []
fill ~5 ~1 ~4 ~5 ~7 ~4 polished_deepslate []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 dripstone_block []
fill ~-4 ~9 ~-5 ~4 ~10 ~5 glass []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~5 ~-8 polished_deepslate []
setblock ~-7 ~6 ~-8 torch []
fill ~-7 ~0 ~8 ~-7 ~5 ~8 polished_deepslate []
setblock ~-7 ~6 ~8 torch []
fill ~7 ~0 ~-8 ~7 ~5 ~-8 polished_deepslate []
setblock ~7 ~6 ~-8 torch []
fill ~7 ~0 ~8 ~7 ~5 ~8 polished_deepslate []
setblock ~7 ~6 ~8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x9x5) ---
fill ~8 ~0 ~-2 ~8 ~7 ~-2 dripstone_block []
setblock ~8 ~8 ~-2 copper_block []
setblock ~8 ~9 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 11
replaceitem block ~4 ~1 ~5 slot.container 1 arrow 22
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 copper_ingot 16
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 5 bone 12
replaceitem block ~4 ~1 ~5 slot.container 9 dripstone_block 18
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 7
replaceitem block ~4 ~1 ~5 slot.container 12 coal 18
replaceitem block ~4 ~1 ~5 slot.container 13 diamond 5
replaceitem block ~4 ~1 ~5 slot.container 14 cauldron 6
loot insert ~4 ~1 ~5 loot "rsf/dripstone_caves"
summon witch ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
