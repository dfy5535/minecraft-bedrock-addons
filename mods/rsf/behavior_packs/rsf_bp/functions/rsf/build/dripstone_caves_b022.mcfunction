# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3222/4224 | 主题内编号: b022/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·廊柱书库秘藏室 (dripstone_caves_chamber_pillared_archive)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 cobbled_deepslate [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 cobbled_deepslate [] replace water
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobbled_deepslate_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_tiles []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 deepslate_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 deepslate_tiles []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~4 slot.container 0 bone 17
replaceitem block ~3 ~-2 ~4 slot.container 1 gunpowder 10
replaceitem block ~3 ~-2 ~4 slot.container 2 string 11
replaceitem block ~3 ~-2 ~4 slot.container 3 spider_eye 8
replaceitem block ~3 ~-2 ~4 slot.container 4 arrow 19
replaceitem block ~3 ~-2 ~4 slot.container 5 ender_pearl 6
replaceitem block ~3 ~-2 ~4 slot.container 9 pointed_dripstone 17
replaceitem block ~3 ~-2 ~4 slot.container 10 dripstone_block 18
replaceitem block ~3 ~-2 ~4 slot.container 11 iron_ingot 10
replaceitem block ~3 ~-2 ~4 slot.container 12 gold_ingot 7
replaceitem block ~3 ~-2 ~4 slot.container 13 coal 18
replaceitem block ~3 ~-2 ~4 slot.container 14 diamond 5
loot insert ~3 ~-2 ~4 loot "rsf/dripstone_caves"
loot insert ~3 ~-2 ~4 loot "chests/abandoned_mineshaft"

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

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 dripstone_block []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 deepslate_tiles []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 iron_block []
setblock ~0 ~12 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 dripstone_block []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 polished_deepslate []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 polished_deepslate []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 cobbled_deepslate_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~8 ~0 ~-1 ~8 ~7 ~-1 dripstone_block []
setblock ~8 ~8 ~-1 copper_block []
setblock ~8 ~9 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 copper_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 arrow 22
replaceitem block ~-4 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 2 copper_ingot 16
replaceitem block ~-4 ~1 ~5 slot.container 3 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 4 bone 12
replaceitem block ~-4 ~1 ~5 slot.container 5 gunpowder 13
replaceitem block ~-4 ~1 ~5 slot.container 9 cauldron 4
replaceitem block ~-4 ~1 ~5 slot.container 10 lava_bucket 1
replaceitem block ~-4 ~1 ~5 slot.container 11 iron_pickaxe 1
replaceitem block ~-4 ~1 ~5 slot.container 12 lantern 11
replaceitem block ~-4 ~1 ~5 slot.container 13 pointed_dripstone 18
replaceitem block ~-4 ~1 ~5 slot.container 14 dripstone_block 12
loot insert ~-4 ~1 ~5 loot "rsf/dripstone_caves"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 copper_ingot 19
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 2 bone 15
replaceitem block ~4 ~1 ~5 slot.container 3 gunpowder 16
replaceitem block ~4 ~1 ~5 slot.container 4 string 17
replaceitem block ~4 ~1 ~5 slot.container 5 spider_eye 6
replaceitem block ~4 ~1 ~5 slot.container 9 cauldron 2
replaceitem block ~4 ~1 ~5 slot.container 10 lava_bucket 1
replaceitem block ~4 ~1 ~5 slot.container 11 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 12 lantern 9
replaceitem block ~4 ~1 ~5 slot.container 13 pointed_dripstone 16
replaceitem block ~4 ~1 ~5 slot.container 14 dripstone_block 17
loot insert ~4 ~1 ~5 loot "rsf/dripstone_caves"
loot insert ~4 ~1 ~5 loot "chests/abandoned_mineshaft"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
