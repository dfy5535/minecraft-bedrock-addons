# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3296/4224 | 主题内编号: b096/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·高台三阶献祭神祠 (dripstone_caves_shrine_stepped_offering)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 dripstone_block [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 dripstone_block [] replace water
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_deepslate []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 tuff []
setblock ~0 ~0 ~0 copper_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 deepslate_bricks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 string 11
replaceitem block ~2 ~-2 ~3 slot.container 1 spider_eye 8
replaceitem block ~2 ~-2 ~3 slot.container 2 arrow 19
replaceitem block ~2 ~-2 ~3 slot.container 3 ender_pearl 6
replaceitem block ~2 ~-2 ~3 slot.container 4 copper_ingot 21
replaceitem block ~2 ~-2 ~3 slot.container 5 rotten_flesh 18
replaceitem block ~2 ~-2 ~3 slot.container 9 iron_ingot 12
replaceitem block ~2 ~-2 ~3 slot.container 10 gold_ingot 9
replaceitem block ~2 ~-2 ~3 slot.container 11 coal 20
replaceitem block ~2 ~-2 ~3 slot.container 12 diamond 7
replaceitem block ~2 ~-2 ~3 slot.container 13 cauldron 8
replaceitem block ~2 ~-2 ~3 slot.container 14 lava_bucket 1
loot insert ~2 ~-2 ~3 loot "rsf/dripstone_caves"
loot insert ~2 ~-2 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 dripstone_block []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 deepslate_bricks []
fill ~-2 ~5 ~-3 ~2 ~8 ~3 deepslate_bricks []
fill ~-2 ~1 ~-3 ~2 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 deepslate_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~9 ~-5 ~4 ~9 ~5 deepslate_bricks []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 deepslate_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 copper_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 deepslate_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 cobbled_deepslate []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 cobbled_deepslate []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 deepslate_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~7 ~0 ~-1 ~7 ~6 ~-1 dripstone_block []
setblock ~7 ~7 ~-1 copper_block []
setblock ~7 ~8 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 copper_ingot 16
replaceitem block ~-3 ~1 ~4 slot.container 1 rotten_flesh 13
replaceitem block ~-3 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-3 ~1 ~4 slot.container 3 gunpowder 13
replaceitem block ~-3 ~1 ~4 slot.container 4 string 14
replaceitem block ~-3 ~1 ~4 slot.container 5 spider_eye 11
replaceitem block ~-3 ~1 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~-3 ~1 ~4 slot.container 10 lantern 6
replaceitem block ~-3 ~1 ~4 slot.container 11 pointed_dripstone 13
replaceitem block ~-3 ~1 ~4 slot.container 12 dripstone_block 14
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_ingot 13
replaceitem block ~-3 ~1 ~4 slot.container 14 gold_ingot 10
loot insert ~-3 ~1 ~4 loot "rsf/dripstone_caves"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 15
replaceitem block ~3 ~1 ~4 slot.container 1 gunpowder 16
replaceitem block ~3 ~1 ~4 slot.container 2 string 17
replaceitem block ~3 ~1 ~4 slot.container 3 spider_eye 6
replaceitem block ~3 ~1 ~4 slot.container 4 arrow 17
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 10 lantern 11
replaceitem block ~3 ~1 ~4 slot.container 11 pointed_dripstone 18
replaceitem block ~3 ~1 ~4 slot.container 12 dripstone_block 12
replaceitem block ~3 ~1 ~4 slot.container 13 iron_ingot 11
replaceitem block ~3 ~1 ~4 slot.container 14 gold_ingot 8
loot insert ~3 ~1 ~4 loot "rsf/dripstone_caves"
loot insert ~3 ~1 ~4 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon witch ~0 ~-2 ~0
