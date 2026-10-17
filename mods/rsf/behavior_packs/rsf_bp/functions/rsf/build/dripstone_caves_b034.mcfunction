# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3234/4224 | 主题内编号: b034/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·双子对称铭文方尖碑 (dripstone_caves_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x11 | 地上高度 11格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cobbled_deepslate [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cobbled_deepslate [] replace water
fill ~-6 ~1 ~-5 ~6 ~13 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobbled_deepslate_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_tiles []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 deepslate_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 deepslate_tiles []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~2 slot.container 0 arrow 19
replaceitem block ~3 ~-2 ~2 slot.container 1 ender_pearl 6
replaceitem block ~3 ~-2 ~2 slot.container 2 copper_ingot 21
replaceitem block ~3 ~-2 ~2 slot.container 3 rotten_flesh 18
replaceitem block ~3 ~-2 ~2 slot.container 4 bone 17
replaceitem block ~3 ~-2 ~2 slot.container 5 gunpowder 10
replaceitem block ~3 ~-2 ~2 slot.container 9 cauldron 5
replaceitem block ~3 ~-2 ~2 slot.container 10 lava_bucket 1
replaceitem block ~3 ~-2 ~2 slot.container 11 iron_pickaxe 1
replaceitem block ~3 ~-2 ~2 slot.container 12 lantern 12
replaceitem block ~3 ~-2 ~2 slot.container 13 pointed_dripstone 12
replaceitem block ~3 ~-2 ~2 slot.container 14 dripstone_block 13
loot insert ~3 ~-2 ~2 loot "rsf/dripstone_caves"
loot insert ~3 ~-2 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~12 ~4 cobbled_deepslate []
fill ~2 ~1 ~-4 ~5 ~12 ~4 cobbled_deepslate []
fill ~-4 ~1 ~-3 ~-3 ~11 ~3 air []
fill ~3 ~1 ~-3 ~4 ~11 ~3 air []
fill ~-2 ~9 ~-1 ~2 ~11 ~1 dripstone_block []
fill ~-3 ~10 ~0 ~3 ~10 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 dripstone_block []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 cobbled_deepslate []
fill ~0 ~17 ~0 ~0 ~19 ~0 iron_block []
setblock ~0 ~20 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 dripstone_block []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 campfire []
setblock ~2 ~4 ~-7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x5x2) ---
fill ~8 ~0 ~-2 ~8 ~4 ~-2 dripstone_block []
setblock ~8 ~5 ~-2 copper_block []
setblock ~8 ~6 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~3 slot.container 1 gunpowder 13
replaceitem block ~-4 ~1 ~3 slot.container 2 string 14
replaceitem block ~-4 ~1 ~3 slot.container 3 spider_eye 11
replaceitem block ~-4 ~1 ~3 slot.container 4 arrow 22
replaceitem block ~-4 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~3 slot.container 9 iron_ingot 10
replaceitem block ~-4 ~1 ~3 slot.container 10 gold_ingot 7
replaceitem block ~-4 ~1 ~3 slot.container 11 coal 18
replaceitem block ~-4 ~1 ~3 slot.container 12 diamond 5
replaceitem block ~-4 ~1 ~3 slot.container 13 cauldron 6
replaceitem block ~-4 ~1 ~3 slot.container 14 lava_bucket 1
loot insert ~-4 ~1 ~3 loot "rsf/dripstone_caves"
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 string 17
replaceitem block ~4 ~1 ~3 slot.container 1 spider_eye 6
replaceitem block ~4 ~1 ~3 slot.container 2 arrow 17
replaceitem block ~4 ~1 ~3 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~3 slot.container 4 copper_ingot 19
replaceitem block ~4 ~1 ~3 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~3 slot.container 9 iron_ingot 15
replaceitem block ~4 ~1 ~3 slot.container 10 gold_ingot 12
replaceitem block ~4 ~1 ~3 slot.container 11 coal 16
replaceitem block ~4 ~1 ~3 slot.container 12 diamond 3
replaceitem block ~4 ~1 ~3 slot.container 13 cauldron 4
replaceitem block ~4 ~1 ~3 slot.container 14 lava_bucket 1
loot insert ~4 ~1 ~3 loot "rsf/dripstone_caves"
loot insert ~4 ~1 ~3 loot "chests/abandoned_mineshaft"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
