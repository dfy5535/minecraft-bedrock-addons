# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3210/4224 | 主题内编号: b010/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·十字交叉深层地牢 (dripstone_caves_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 5格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobbled_deepslate [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobbled_deepslate [] replace water
fill ~-7 ~1 ~-8 ~7 ~8 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 cobbled_deepslate_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_tiles []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobbled_deepslate []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 campfire []
setblock ~4 ~-6 ~0 campfire []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 copper_ingot 21
replaceitem block ~0 ~-4 ~5 slot.container 1 rotten_flesh 18
replaceitem block ~0 ~-4 ~5 slot.container 2 bone 17
replaceitem block ~0 ~-4 ~5 slot.container 3 gunpowder 10
replaceitem block ~0 ~-4 ~5 slot.container 4 string 11
replaceitem block ~0 ~-4 ~5 slot.container 5 spider_eye 8
replaceitem block ~0 ~-4 ~5 slot.container 9 iron_ingot 13
replaceitem block ~0 ~-4 ~5 slot.container 10 gold_ingot 10
replaceitem block ~0 ~-4 ~5 slot.container 11 coal 21
replaceitem block ~0 ~-4 ~5 slot.container 12 diamond 8
replaceitem block ~0 ~-4 ~5 slot.container 13 cauldron 2
replaceitem block ~0 ~-4 ~5 slot.container 14 lava_bucket 1
loot insert ~0 ~-4 ~5 loot "rsf/dripstone_caves"
loot insert ~0 ~-4 ~5 loot "chests/abandoned_mineshaft"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 copper_ingot 19
replaceitem block ~0 ~-4 ~-5 slot.container 1 rotten_flesh 16
replaceitem block ~0 ~-4 ~-5 slot.container 2 bone 15
replaceitem block ~0 ~-4 ~-5 slot.container 3 gunpowder 16
replaceitem block ~0 ~-4 ~-5 slot.container 4 string 17
replaceitem block ~0 ~-4 ~-5 slot.container 5 spider_eye 6
replaceitem block ~0 ~-4 ~-5 slot.container 9 iron_ingot 12
replaceitem block ~0 ~-4 ~-5 slot.container 10 gold_ingot 9
replaceitem block ~0 ~-4 ~-5 slot.container 11 coal 20
replaceitem block ~0 ~-4 ~-5 slot.container 12 diamond 7
replaceitem block ~0 ~-4 ~-5 slot.container 13 cauldron 8
replaceitem block ~0 ~-4 ~-5 slot.container 14 lava_bucket 1
loot insert ~0 ~-4 ~-5 loot "rsf/dripstone_caves"
loot insert ~0 ~-4 ~-5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~6 ~7 cobbled_deepslate []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 cobbled_deepslate []
fill ~-1 ~1 ~-6 ~1 ~5 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 cobbled_deepslate_wall []
setblock ~6 ~2 ~0 cobbled_deepslate_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 cobbled_deepslate_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~5 ~-9 polished_deepslate []
setblock ~-8 ~6 ~-9 campfire []
fill ~-8 ~0 ~9 ~-8 ~5 ~9 polished_deepslate []
setblock ~-8 ~6 ~9 campfire []
fill ~8 ~0 ~-9 ~8 ~5 ~-9 polished_deepslate []
setblock ~8 ~6 ~-9 campfire []
fill ~8 ~0 ~9 ~8 ~5 ~9 polished_deepslate []
setblock ~8 ~6 ~9 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~9 ~0 ~-3 ~9 ~5 ~-3 dripstone_block []
setblock ~9 ~6 ~-3 copper_block []
setblock ~9 ~7 ~-3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~6 slot.container 1 gunpowder 13
replaceitem block ~-5 ~1 ~6 slot.container 2 string 14
replaceitem block ~-5 ~1 ~6 slot.container 3 spider_eye 11
replaceitem block ~-5 ~1 ~6 slot.container 4 arrow 22
replaceitem block ~-5 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 9 pointed_dripstone 16
replaceitem block ~-5 ~1 ~6 slot.container 10 dripstone_block 17
replaceitem block ~-5 ~1 ~6 slot.container 11 iron_ingot 16
replaceitem block ~-5 ~1 ~6 slot.container 12 gold_ingot 6
replaceitem block ~-5 ~1 ~6 slot.container 13 coal 17
replaceitem block ~-5 ~1 ~6 slot.container 14 diamond 4
loot insert ~-5 ~1 ~6 loot "rsf/dripstone_caves"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 17
replaceitem block ~5 ~1 ~6 slot.container 1 spider_eye 6
replaceitem block ~5 ~1 ~6 slot.container 2 arrow 17
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 4 copper_ingot 19
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 16
replaceitem block ~5 ~1 ~6 slot.container 9 pointed_dripstone 14
replaceitem block ~5 ~1 ~6 slot.container 10 dripstone_block 15
replaceitem block ~5 ~1 ~6 slot.container 11 iron_ingot 14
replaceitem block ~5 ~1 ~6 slot.container 12 gold_ingot 11
replaceitem block ~5 ~1 ~6 slot.container 13 coal 22
replaceitem block ~5 ~1 ~6 slot.container 14 diamond 2
loot insert ~5 ~1 ~6 loot "rsf/dripstone_caves"
loot insert ~5 ~1 ~6 loot "chests/abandoned_mineshaft"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
