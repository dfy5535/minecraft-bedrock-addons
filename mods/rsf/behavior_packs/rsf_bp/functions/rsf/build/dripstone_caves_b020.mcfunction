# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3220/4224 | 主题内编号: b020/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·重甲防爆金库房间 (dripstone_caves_chamber_fortified_strongbox)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 dripstone_block [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 dripstone_block [] replace water
fill ~-5 ~1 ~-6 ~5 ~9 ~6 air []
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
replaceitem block ~2 ~-2 ~3 slot.container 0 copper_ingot 21
replaceitem block ~2 ~-2 ~3 slot.container 1 rotten_flesh 18
replaceitem block ~2 ~-2 ~3 slot.container 2 bone 17
replaceitem block ~2 ~-2 ~3 slot.container 3 gunpowder 10
replaceitem block ~2 ~-2 ~3 slot.container 4 string 11
replaceitem block ~2 ~-2 ~3 slot.container 5 spider_eye 8
replaceitem block ~2 ~-2 ~3 slot.container 9 coal 19
replaceitem block ~2 ~-2 ~3 slot.container 10 diamond 6
replaceitem block ~2 ~-2 ~3 slot.container 11 cauldron 7
replaceitem block ~2 ~-2 ~3 slot.container 12 lava_bucket 1
replaceitem block ~2 ~-2 ~3 slot.container 13 iron_pickaxe 1
replaceitem block ~2 ~-2 ~3 slot.container 14 lantern 7
loot insert ~2 ~-2 ~3 loot "rsf/dripstone_caves"
loot insert ~2 ~-2 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-4 ~1 ~-5 ~4 ~7 ~5 dripstone_block []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~-4 ~1 ~-5 ~-3 ~9 ~-4 deepslate_bricks []
setblock ~-4 ~10 ~-5 lantern []
fill ~-4 ~1 ~4 ~-3 ~9 ~5 deepslate_bricks []
setblock ~-4 ~10 ~4 lantern []
fill ~3 ~1 ~-5 ~4 ~9 ~-4 deepslate_bricks []
setblock ~3 ~10 ~-5 lantern []
fill ~3 ~1 ~4 ~4 ~9 ~5 deepslate_bricks []
setblock ~3 ~10 ~4 lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 deepslate_bricks []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 deepslate_brick_wall []
fill ~-3 ~8 ~-4 ~3 ~8 ~4 air []
setblock ~-4 ~8 ~-5 cobbled_deepslate []
setblock ~-4 ~9 ~-5 lantern []
setblock ~-4 ~8 ~5 cobbled_deepslate []
setblock ~-4 ~9 ~5 lantern []
setblock ~4 ~8 ~-5 cobbled_deepslate []
setblock ~4 ~9 ~-5 lantern []
setblock ~4 ~8 ~5 cobbled_deepslate []
setblock ~4 ~9 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~6 ~-2 cobbled_deepslate []
fill ~-5 ~0 ~2 ~-5 ~6 ~2 cobbled_deepslate []
fill ~5 ~0 ~-2 ~5 ~6 ~-2 cobbled_deepslate []
fill ~5 ~0 ~2 ~5 ~6 ~2 cobbled_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~7 ~0 ~-2 ~7 ~5 ~-2 dripstone_block []
setblock ~7 ~6 ~-2 copper_block []
setblock ~7 ~7 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 string 14
replaceitem block ~-3 ~1 ~4 slot.container 1 spider_eye 11
replaceitem block ~-3 ~1 ~4 slot.container 2 arrow 22
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 copper_ingot 16
replaceitem block ~-3 ~1 ~4 slot.container 5 rotten_flesh 13
replaceitem block ~-3 ~1 ~4 slot.container 9 pointed_dripstone 12
replaceitem block ~-3 ~1 ~4 slot.container 10 dripstone_block 13
replaceitem block ~-3 ~1 ~4 slot.container 11 iron_ingot 12
replaceitem block ~-3 ~1 ~4 slot.container 12 gold_ingot 9
replaceitem block ~-3 ~1 ~4 slot.container 13 coal 20
replaceitem block ~-3 ~1 ~4 slot.container 14 diamond 7
loot insert ~-3 ~1 ~4 loot "rsf/dripstone_caves"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 arrow 17
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 copper_ingot 19
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 4 bone 15
replaceitem block ~3 ~1 ~4 slot.container 5 gunpowder 16
replaceitem block ~3 ~1 ~4 slot.container 9 pointed_dripstone 17
replaceitem block ~3 ~1 ~4 slot.container 10 dripstone_block 18
replaceitem block ~3 ~1 ~4 slot.container 11 iron_ingot 10
replaceitem block ~3 ~1 ~4 slot.container 12 gold_ingot 7
replaceitem block ~3 ~1 ~4 slot.container 13 coal 18
replaceitem block ~3 ~1 ~4 slot.container 14 diamond 5
loot insert ~3 ~1 ~4 loot "rsf/dripstone_caves"
loot insert ~3 ~1 ~4 loot "chests/abandoned_mineshaft"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
