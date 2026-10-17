# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3233/4224 | 主题内编号: b033/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·太阳金顶高耸方尖碑 (dripstone_caves_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 9x11 | 地上高度 12格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 deepslate_bricks [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 deepslate_bricks [] replace water
fill ~-4 ~1 ~-5 ~4 ~14 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 tuff []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 deepslate_tiles []
setblock ~0 ~0 ~0 raw_copper_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 cobbled_deepslate []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 dripstone_block []
setblock ~0 ~-6 ~0 iron_block []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 gunpowder 10
replaceitem block ~0 ~-3 ~-2 slot.container 1 string 11
replaceitem block ~0 ~-3 ~-2 slot.container 2 spider_eye 8
replaceitem block ~0 ~-3 ~-2 slot.container 3 arrow 19
replaceitem block ~0 ~-3 ~-2 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-3 ~-2 slot.container 5 copper_ingot 21
replaceitem block ~0 ~-3 ~-2 slot.container 9 diamond 4
replaceitem block ~0 ~-3 ~-2 slot.container 10 cauldron 5
replaceitem block ~0 ~-3 ~-2 slot.container 11 lava_bucket 1
replaceitem block ~0 ~-3 ~-2 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-3 ~-2 slot.container 13 lantern 12
replaceitem block ~0 ~-3 ~-2 slot.container 14 pointed_dripstone 12
loot insert ~0 ~-3 ~-2 loot "rsf/dripstone_caves"
loot insert ~0 ~-3 ~-2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-3 ~1 ~-4 ~3 ~2 ~4 deepslate_bricks []
fill ~-2 ~3 ~-3 ~2 ~4 ~3 dripstone_block []
fill ~-1 ~5 ~-2 ~1 ~12 ~2 cobbled_deepslate []
fill ~-1 ~1 ~-2 ~1 ~11 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 deepslate_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~13 ~-2 ~2 ~14 ~2 dripstone_block []
fill ~-1 ~15 ~-1 ~1 ~17 ~1 deepslate_bricks []
fill ~0 ~18 ~0 ~0 ~20 ~0 raw_copper_block []
setblock ~0 ~21 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-5 ~0 ~-6 ~-5 ~5 ~-6 polished_deepslate []
setblock ~-5 ~6 ~-6 torch []
fill ~-5 ~0 ~6 ~-5 ~5 ~6 polished_deepslate []
setblock ~-5 ~6 ~6 torch []
fill ~5 ~0 ~-6 ~5 ~5 ~-6 polished_deepslate []
setblock ~5 ~6 ~-6 torch []
fill ~5 ~0 ~6 ~5 ~5 ~6 polished_deepslate []
setblock ~5 ~6 ~6 torch []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~6 ~0 ~1 ~6 ~8 ~1 dripstone_block []
setblock ~6 ~9 ~1 copper_block []
setblock ~6 ~10 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-3 ~1 ~0 lectern []
setblock ~3 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 rotten_flesh 13
replaceitem block ~2 ~1 ~3 slot.container 1 bone 12
replaceitem block ~2 ~1 ~3 slot.container 2 gunpowder 13
replaceitem block ~2 ~1 ~3 slot.container 3 string 14
replaceitem block ~2 ~1 ~3 slot.container 4 spider_eye 11
replaceitem block ~2 ~1 ~3 slot.container 5 arrow 22
replaceitem block ~2 ~1 ~3 slot.container 9 lantern 12
replaceitem block ~2 ~1 ~3 slot.container 10 pointed_dripstone 12
replaceitem block ~2 ~1 ~3 slot.container 11 dripstone_block 13
replaceitem block ~2 ~1 ~3 slot.container 12 iron_ingot 12
replaceitem block ~2 ~1 ~3 slot.container 13 gold_ingot 9
replaceitem block ~2 ~1 ~3 slot.container 14 coal 20
loot insert ~2 ~1 ~3 loot "rsf/dripstone_caves"
summon witch ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
