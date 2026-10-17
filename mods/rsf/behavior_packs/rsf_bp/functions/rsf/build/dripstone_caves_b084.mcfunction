# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3284/4224 | 主题内编号: b084/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·露天采石场与矿道库 (dripstone_caves_mine_sunken_quarry)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 dripstone_block [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 dripstone_block [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_deepslate []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 tuff []
setblock ~0 ~0 ~0 copper_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 deepslate_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 copper_ingot 21
replaceitem block ~3 ~-3 ~4 slot.container 1 rotten_flesh 18
replaceitem block ~3 ~-3 ~4 slot.container 2 bone 17
replaceitem block ~3 ~-3 ~4 slot.container 3 gunpowder 10
replaceitem block ~3 ~-3 ~4 slot.container 4 string 11
replaceitem block ~3 ~-3 ~4 slot.container 5 spider_eye 8
replaceitem block ~3 ~-3 ~4 slot.container 9 cauldron 6
replaceitem block ~3 ~-3 ~4 slot.container 10 lava_bucket 1
replaceitem block ~3 ~-3 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~3 ~-3 ~4 slot.container 12 lantern 6
replaceitem block ~3 ~-3 ~4 slot.container 13 pointed_dripstone 13
replaceitem block ~3 ~-3 ~4 slot.container 14 dripstone_block 14
loot insert ~3 ~-3 ~4 loot "rsf/dripstone_caves"
loot insert ~3 ~-3 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 dripstone_block []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 deepslate_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 deepslate_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~6 ~-6 ~-5 ~8 ~-6 cobbled_deepslate []
setblock ~-5 ~9 ~-6 lantern []
fill ~-5 ~6 ~6 ~-5 ~8 ~6 cobbled_deepslate []
setblock ~-5 ~9 ~6 lantern []
fill ~5 ~6 ~-6 ~5 ~8 ~-6 cobbled_deepslate []
setblock ~5 ~9 ~-6 lantern []
fill ~5 ~6 ~6 ~5 ~8 ~6 cobbled_deepslate []
setblock ~5 ~9 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 deepslate_brick_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~8 ~0 ~1 ~8 ~4 ~1 dripstone_block []
setblock ~8 ~5 ~1 copper_block []
setblock ~8 ~6 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 string 14
replaceitem block ~-4 ~1 ~5 slot.container 1 spider_eye 11
replaceitem block ~-4 ~1 ~5 slot.container 2 arrow 22
replaceitem block ~-4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 4 copper_ingot 16
replaceitem block ~-4 ~1 ~5 slot.container 5 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_ingot 11
replaceitem block ~-4 ~1 ~5 slot.container 10 gold_ingot 8
replaceitem block ~-4 ~1 ~5 slot.container 11 coal 19
replaceitem block ~-4 ~1 ~5 slot.container 12 diamond 6
replaceitem block ~-4 ~1 ~5 slot.container 13 cauldron 7
replaceitem block ~-4 ~1 ~5 slot.container 14 lava_bucket 1
loot insert ~-4 ~1 ~5 loot "rsf/dripstone_caves"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 2 copper_ingot 19
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 4 bone 15
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 16
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 16
replaceitem block ~4 ~1 ~5 slot.container 10 gold_ingot 6
replaceitem block ~4 ~1 ~5 slot.container 11 coal 17
replaceitem block ~4 ~1 ~5 slot.container 12 diamond 4
replaceitem block ~4 ~1 ~5 slot.container 13 cauldron 5
replaceitem block ~4 ~1 ~5 slot.container 14 lava_bucket 1
loot insert ~4 ~1 ~5 loot "rsf/dripstone_caves"
loot insert ~4 ~1 ~5 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon witch ~0 ~-3 ~0
