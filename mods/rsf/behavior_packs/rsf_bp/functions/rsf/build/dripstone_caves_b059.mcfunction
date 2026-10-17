# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3259/4224 | 主题内编号: b059/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·阶梯金字塔法老墓室 (dripstone_caves_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 5格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 deepslate_tiles [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 deepslate_tiles [] replace water
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 deepslate_tile_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_deepslate []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 dripstone_block []
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 dripstone_block []
setblock ~0 ~-7 ~0 copper_block []
fill ~0 ~-6 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 lantern []
setblock ~2 ~-6 ~0 lantern []
setblock ~0 ~-4 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-5 slot.container 0 spider_eye 8
replaceitem block ~0 ~-4 ~-5 slot.container 1 arrow 19
replaceitem block ~0 ~-4 ~-5 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-4 ~-5 slot.container 3 copper_ingot 21
replaceitem block ~0 ~-4 ~-5 slot.container 4 rotten_flesh 18
replaceitem block ~0 ~-4 ~-5 slot.container 5 bone 17
replaceitem block ~0 ~-4 ~-5 slot.container 9 gold_ingot 6
replaceitem block ~0 ~-4 ~-5 slot.container 10 coal 17
replaceitem block ~0 ~-4 ~-5 slot.container 11 diamond 4
replaceitem block ~0 ~-4 ~-5 slot.container 12 cauldron 5
replaceitem block ~0 ~-4 ~-5 slot.container 13 lava_bucket 1
replaceitem block ~0 ~-4 ~-5 slot.container 14 iron_pickaxe 1
loot insert ~0 ~-4 ~-5 loot "rsf/dripstone_caves"
loot insert ~0 ~-4 ~-5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 deepslate_tiles []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 dripstone_block []
fill ~-4 ~5 ~-5 ~4 ~8 ~5 dripstone_block []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 deepslate_tile_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~9 ~-7 ~6 ~9 ~7 dripstone_block []
fill ~-5 ~10 ~-6 ~5 ~10 ~6 dripstone_block []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 gold_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~5 ~-9 chiseled_deepslate []
setblock ~-8 ~6 ~-9 lantern []
fill ~-8 ~0 ~9 ~-8 ~5 ~9 chiseled_deepslate []
setblock ~-8 ~6 ~9 lantern []
fill ~8 ~0 ~-9 ~8 ~5 ~-9 chiseled_deepslate []
setblock ~8 ~6 ~-9 lantern []
fill ~8 ~0 ~9 ~8 ~5 ~9 chiseled_deepslate []
setblock ~8 ~6 ~9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 9x9x2) ---
fill ~9 ~0 ~-3 ~9 ~4 ~-3 dripstone_block []
setblock ~9 ~5 ~-3 copper_block []
setblock ~9 ~6 ~-3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-3 ~1 ~0 lectern []
setblock ~3 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 13
replaceitem block ~5 ~1 ~6 slot.container 1 string 14
replaceitem block ~5 ~1 ~6 slot.container 2 spider_eye 11
replaceitem block ~5 ~1 ~6 slot.container 3 arrow 22
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 copper_ingot 16
replaceitem block ~5 ~1 ~6 slot.container 9 lava_bucket 1
replaceitem block ~5 ~1 ~6 slot.container 10 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 11 lantern 12
replaceitem block ~5 ~1 ~6 slot.container 12 pointed_dripstone 12
replaceitem block ~5 ~1 ~6 slot.container 13 dripstone_block 13
replaceitem block ~5 ~1 ~6 slot.container 14 iron_ingot 12
loot insert ~5 ~1 ~6 loot "rsf/dripstone_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
