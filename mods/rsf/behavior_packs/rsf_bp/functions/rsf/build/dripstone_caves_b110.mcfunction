# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3310/4224 | 主题内编号: b110/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·双子附魔与酿造实验楼 (dripstone_caves_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cobbled_deepslate [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cobbled_deepslate [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobbled_deepslate_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_tiles []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 deepslate_tiles []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 bone 17
replaceitem block ~4 ~-2 ~3 slot.container 1 gunpowder 10
replaceitem block ~4 ~-2 ~3 slot.container 2 string 11
replaceitem block ~4 ~-2 ~3 slot.container 3 spider_eye 8
replaceitem block ~4 ~-2 ~3 slot.container 4 arrow 19
replaceitem block ~4 ~-2 ~3 slot.container 5 ender_pearl 6
replaceitem block ~4 ~-2 ~3 slot.container 9 coal 18
replaceitem block ~4 ~-2 ~3 slot.container 10 diamond 5
replaceitem block ~4 ~-2 ~3 slot.container 11 cauldron 6
replaceitem block ~4 ~-2 ~3 slot.container 12 lava_bucket 1
replaceitem block ~4 ~-2 ~3 slot.container 13 iron_pickaxe 1
replaceitem block ~4 ~-2 ~3 slot.container 14 lantern 6
loot insert ~4 ~-2 ~3 loot "rsf/dripstone_caves"
loot insert ~4 ~-2 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~9 ~5 cobbled_deepslate []
fill ~2 ~1 ~-5 ~6 ~9 ~5 cobbled_deepslate []
fill ~-5 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~5 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 dripstone_block []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 cobbled_deepslate_slab []
fill ~-5 ~9 ~-4 ~5 ~10 ~4 deepslate_tiles []
fill ~-6 ~11 ~-5 ~6 ~11 ~5 deepslate_tile_slab []
setblock ~0 ~12 ~0 iron_block []
setblock ~0 ~13 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 dripstone_block []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 campfire []
setblock ~2 ~4 ~-8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 9x7x3) ---
fill ~9 ~0 ~-2 ~9 ~5 ~-2 dripstone_block []
setblock ~9 ~6 ~-2 copper_block []
setblock ~9 ~7 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-4 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 arrow 22
replaceitem block ~-5 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 2 copper_ingot 16
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 13
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 5 gunpowder 13
replaceitem block ~-5 ~1 ~4 slot.container 9 pointed_dripstone 18
replaceitem block ~-5 ~1 ~4 slot.container 10 dripstone_block 12
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_ingot 11
replaceitem block ~-5 ~1 ~4 slot.container 12 gold_ingot 8
replaceitem block ~-5 ~1 ~4 slot.container 13 coal 19
replaceitem block ~-5 ~1 ~4 slot.container 14 diamond 6
loot insert ~-5 ~1 ~4 loot "rsf/dripstone_caves"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 copper_ingot 19
replaceitem block ~5 ~1 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~4 slot.container 2 bone 15
replaceitem block ~5 ~1 ~4 slot.container 3 gunpowder 16
replaceitem block ~5 ~1 ~4 slot.container 4 string 17
replaceitem block ~5 ~1 ~4 slot.container 5 spider_eye 6
replaceitem block ~5 ~1 ~4 slot.container 9 pointed_dripstone 16
replaceitem block ~5 ~1 ~4 slot.container 10 dripstone_block 17
replaceitem block ~5 ~1 ~4 slot.container 11 iron_ingot 16
replaceitem block ~5 ~1 ~4 slot.container 12 gold_ingot 6
replaceitem block ~5 ~1 ~4 slot.container 13 coal 17
replaceitem block ~5 ~1 ~4 slot.container 14 diamond 4
loot insert ~5 ~1 ~4 loot "rsf/dripstone_caves"
loot insert ~5 ~1 ~4 loot "chests/abandoned_mineshaft"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
