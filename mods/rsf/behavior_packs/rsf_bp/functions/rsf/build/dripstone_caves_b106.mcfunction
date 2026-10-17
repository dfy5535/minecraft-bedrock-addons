# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3306/4224 | 主题内编号: b106/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·琉璃穹顶魔药炼金室 (dripstone_caves_arcane_alchemy_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 cobbled_deepslate [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 cobbled_deepslate [] replace water
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobbled_deepslate_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 deepslate_tiles []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 dripstone_block []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-2 ~3 slot.container 0 string 11
replaceitem block ~-2 ~-2 ~3 slot.container 1 spider_eye 8
replaceitem block ~-2 ~-2 ~3 slot.container 2 arrow 19
replaceitem block ~-2 ~-2 ~3 slot.container 3 ender_pearl 6
replaceitem block ~-2 ~-2 ~3 slot.container 4 copper_ingot 21
replaceitem block ~-2 ~-2 ~3 slot.container 5 rotten_flesh 18
replaceitem block ~-2 ~-2 ~3 slot.container 9 coal 19
replaceitem block ~-2 ~-2 ~3 slot.container 10 diamond 6
replaceitem block ~-2 ~-2 ~3 slot.container 11 cauldron 7
replaceitem block ~-2 ~-2 ~3 slot.container 12 lava_bucket 1
replaceitem block ~-2 ~-2 ~3 slot.container 13 iron_pickaxe 1
replaceitem block ~-2 ~-2 ~3 slot.container 14 lantern 7
loot insert ~-2 ~-2 ~3 loot "rsf/dripstone_caves"
loot insert ~-2 ~-2 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 cobbled_deepslate []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 air []
fill ~4 ~1 ~5 ~4 ~9 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~8 ~-4 polished_deepslate []
fill ~3 ~1 ~-4 ~3 ~8 ~-4 polished_deepslate []
fill ~-3 ~1 ~4 ~-3 ~8 ~4 polished_deepslate []
fill ~3 ~1 ~4 ~3 ~8 ~4 polished_deepslate []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 dripstone_block []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 glass []
fill ~-2 ~9 ~-3 ~2 ~9 ~3 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 polished_deepslate []
setblock ~-6 ~6 ~-7 campfire []
fill ~-6 ~0 ~7 ~-6 ~5 ~7 polished_deepslate []
setblock ~-6 ~6 ~7 campfire []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 polished_deepslate []
setblock ~6 ~6 ~-7 campfire []
fill ~6 ~0 ~7 ~6 ~5 ~7 polished_deepslate []
setblock ~6 ~6 ~7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~7 ~0 ~-1 ~7 ~6 ~-1 dripstone_block []
setblock ~7 ~7 ~-1 copper_block []
setblock ~7 ~8 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-3 ~1 ~4 slot.container 1 gunpowder 13
replaceitem block ~-3 ~1 ~4 slot.container 2 string 14
replaceitem block ~-3 ~1 ~4 slot.container 3 spider_eye 11
replaceitem block ~-3 ~1 ~4 slot.container 4 arrow 22
replaceitem block ~-3 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~-3 ~1 ~4 slot.container 10 lantern 9
replaceitem block ~-3 ~1 ~4 slot.container 11 pointed_dripstone 16
replaceitem block ~-3 ~1 ~4 slot.container 12 dripstone_block 17
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_ingot 16
replaceitem block ~-3 ~1 ~4 slot.container 14 gold_ingot 6
loot insert ~-3 ~1 ~4 loot "rsf/dripstone_caves"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 string 17
replaceitem block ~3 ~1 ~4 slot.container 1 spider_eye 6
replaceitem block ~3 ~1 ~4 slot.container 2 arrow 17
replaceitem block ~3 ~1 ~4 slot.container 3 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 4 copper_ingot 19
replaceitem block ~3 ~1 ~4 slot.container 5 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 10 lantern 7
replaceitem block ~3 ~1 ~4 slot.container 11 pointed_dripstone 14
replaceitem block ~3 ~1 ~4 slot.container 12 dripstone_block 15
replaceitem block ~3 ~1 ~4 slot.container 13 iron_ingot 14
replaceitem block ~3 ~1 ~4 slot.container 14 gold_ingot 11
loot insert ~3 ~1 ~4 loot "rsf/dripstone_caves"
loot insert ~3 ~1 ~4 loot "chests/abandoned_mineshaft"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
