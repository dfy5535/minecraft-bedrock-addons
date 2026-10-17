# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3265/4224 | 主题内编号: b065/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·断柱露天古神庙废墟 (dripstone_caves_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 deepslate_bricks [] replace water
fill ~-6 ~1 ~-8 ~6 ~9 ~8 air []
fill ~-6 ~0 ~-8 ~6 ~0 ~8 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 tuff []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 deepslate_tiles []
setblock ~0 ~0 ~0 raw_copper_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 cobbled_deepslate []
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~5 slot.container 0 spider_eye 8
replaceitem block ~3 ~-3 ~5 slot.container 1 arrow 19
replaceitem block ~3 ~-3 ~5 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-3 ~5 slot.container 3 copper_ingot 21
replaceitem block ~3 ~-3 ~5 slot.container 4 rotten_flesh 18
replaceitem block ~3 ~-3 ~5 slot.container 5 bone 17
replaceitem block ~3 ~-3 ~5 slot.container 9 lantern 12
replaceitem block ~3 ~-3 ~5 slot.container 10 pointed_dripstone 12
replaceitem block ~3 ~-3 ~5 slot.container 11 dripstone_block 13
replaceitem block ~3 ~-3 ~5 slot.container 12 iron_ingot 12
replaceitem block ~3 ~-3 ~5 slot.container 13 gold_ingot 9
replaceitem block ~3 ~-3 ~5 slot.container 14 coal 20
loot insert ~3 ~-3 ~5 loot "rsf/dripstone_caves"
loot insert ~3 ~-3 ~5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~7 ~-7 ~5 ~7 ~7 dripstone_block []
fill ~-5 ~1 ~-7 ~-5 ~6 ~-7 polished_deepslate []
fill ~-5 ~1 ~7 ~-5 ~6 ~7 polished_deepslate []
fill ~-3 ~1 ~-7 ~-3 ~6 ~-7 polished_deepslate []
fill ~-3 ~1 ~7 ~-3 ~6 ~7 polished_deepslate []
fill ~-1 ~1 ~-7 ~-1 ~6 ~-7 polished_deepslate []
fill ~-1 ~1 ~7 ~-1 ~6 ~7 polished_deepslate []
fill ~1 ~1 ~-7 ~1 ~6 ~-7 polished_deepslate []
fill ~1 ~1 ~7 ~1 ~6 ~7 polished_deepslate []
fill ~3 ~1 ~-7 ~3 ~6 ~-7 polished_deepslate []
fill ~3 ~1 ~7 ~3 ~6 ~7 polished_deepslate []
fill ~5 ~1 ~-7 ~5 ~6 ~-7 polished_deepslate []
fill ~5 ~1 ~7 ~5 ~6 ~7 polished_deepslate []
fill ~-5 ~1 ~-5 ~-5 ~6 ~-5 polished_deepslate []
fill ~5 ~1 ~-5 ~5 ~6 ~-5 polished_deepslate []
fill ~-5 ~1 ~-3 ~-5 ~6 ~-3 polished_deepslate []
fill ~5 ~1 ~-3 ~5 ~6 ~-3 polished_deepslate []
fill ~-5 ~1 ~-1 ~-5 ~6 ~-1 polished_deepslate []
fill ~5 ~1 ~-1 ~5 ~6 ~-1 polished_deepslate []
fill ~-5 ~1 ~1 ~-5 ~6 ~1 polished_deepslate []
fill ~5 ~1 ~1 ~5 ~6 ~1 polished_deepslate []
fill ~-5 ~1 ~3 ~-5 ~6 ~3 polished_deepslate []
fill ~5 ~1 ~3 ~5 ~6 ~3 polished_deepslate []
fill ~-5 ~1 ~5 ~-5 ~6 ~5 polished_deepslate []
fill ~5 ~1 ~5 ~5 ~6 ~5 polished_deepslate []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~7 ~-7 ~5 ~7 ~7 deepslate_brick_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-5 ~6 ~-1 ~-5 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-9 ~-7 ~5 ~-9 polished_deepslate []
setblock ~-7 ~6 ~-9 torch []
fill ~-7 ~0 ~9 ~-7 ~5 ~9 polished_deepslate []
setblock ~-7 ~6 ~9 torch []
fill ~7 ~0 ~-9 ~7 ~5 ~-9 polished_deepslate []
setblock ~7 ~6 ~-9 torch []
fill ~7 ~0 ~9 ~7 ~5 ~9 polished_deepslate []
setblock ~7 ~6 ~9 torch []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x9x3) ---
fill ~8 ~0 ~3 ~8 ~5 ~3 dripstone_block []
setblock ~8 ~6 ~3 copper_block []
setblock ~8 ~7 ~3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~6 ~2 ~2 ~6 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 rotten_flesh 13
replaceitem block ~4 ~1 ~6 slot.container 1 bone 12
replaceitem block ~4 ~1 ~6 slot.container 2 gunpowder 13
replaceitem block ~4 ~1 ~6 slot.container 3 string 14
replaceitem block ~4 ~1 ~6 slot.container 4 spider_eye 11
replaceitem block ~4 ~1 ~6 slot.container 5 arrow 22
replaceitem block ~4 ~1 ~6 slot.container 9 diamond 5
replaceitem block ~4 ~1 ~6 slot.container 10 cauldron 6
replaceitem block ~4 ~1 ~6 slot.container 11 lava_bucket 1
replaceitem block ~4 ~1 ~6 slot.container 12 iron_pickaxe 1
replaceitem block ~4 ~1 ~6 slot.container 13 lantern 6
replaceitem block ~4 ~1 ~6 slot.container 14 pointed_dripstone 13
loot insert ~4 ~1 ~6 loot "rsf/dripstone_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
