# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3226/4224 | 主题内编号: b026/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·尖顶信标引航高塔 (dripstone_caves_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 9x11 | 地上高度 12格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 cobbled_deepslate [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 cobbled_deepslate [] replace water
fill ~-4 ~1 ~-5 ~4 ~14 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobbled_deepslate_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 deepslate_tiles []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 deepslate_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-2 ~-3 ~-3 ~2 ~-1 ~3 deepslate_tiles []
fill ~-1 ~-4 ~-2 ~1 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~1 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-2 ~2 slot.container 0 arrow 19
replaceitem block ~1 ~-2 ~2 slot.container 1 ender_pearl 6
replaceitem block ~1 ~-2 ~2 slot.container 2 copper_ingot 21
replaceitem block ~1 ~-2 ~2 slot.container 3 rotten_flesh 18
replaceitem block ~1 ~-2 ~2 slot.container 4 bone 17
replaceitem block ~1 ~-2 ~2 slot.container 5 gunpowder 10
replaceitem block ~1 ~-2 ~2 slot.container 9 iron_ingot 12
replaceitem block ~1 ~-2 ~2 slot.container 10 gold_ingot 9
replaceitem block ~1 ~-2 ~2 slot.container 11 coal 20
replaceitem block ~1 ~-2 ~2 slot.container 12 diamond 7
replaceitem block ~1 ~-2 ~2 slot.container 13 cauldron 8
replaceitem block ~1 ~-2 ~2 slot.container 14 lava_bucket 1
loot insert ~1 ~-2 ~2 loot "rsf/dripstone_caves"
loot insert ~1 ~-2 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-3 ~1 ~-4 ~3 ~12 ~4 cobbled_deepslate []
fill ~-2 ~1 ~-3 ~2 ~11 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~13 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~13 ~-4 air []
fill ~-3 ~1 ~4 ~-3 ~13 ~4 air []
fill ~3 ~1 ~4 ~3 ~13 ~4 air []
fill ~-2 ~1 ~-3 ~-2 ~12 ~-3 polished_deepslate []
fill ~2 ~1 ~-3 ~2 ~12 ~-3 polished_deepslate []
fill ~-2 ~1 ~3 ~-2 ~12 ~3 polished_deepslate []
fill ~2 ~1 ~3 ~2 ~12 ~3 polished_deepslate []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~13 ~-2 ~2 ~14 ~2 dripstone_block []
fill ~-1 ~15 ~-1 ~1 ~17 ~1 cobbled_deepslate []
fill ~0 ~18 ~0 ~0 ~20 ~0 iron_block []
setblock ~0 ~21 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~11 ~-2 polished_deepslate []
fill ~-4 ~0 ~2 ~-4 ~11 ~2 polished_deepslate []
fill ~4 ~0 ~-2 ~4 ~11 ~-2 polished_deepslate []
fill ~4 ~0 ~2 ~4 ~11 ~2 polished_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 6x6x4) ---
fill ~6 ~0 ~-2 ~6 ~6 ~-2 dripstone_block []
setblock ~6 ~7 ~-2 copper_block []
setblock ~6 ~8 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~3 slot.container 0 bone 12
replaceitem block ~-2 ~1 ~3 slot.container 1 gunpowder 13
replaceitem block ~-2 ~1 ~3 slot.container 2 string 14
replaceitem block ~-2 ~1 ~3 slot.container 3 spider_eye 11
replaceitem block ~-2 ~1 ~3 slot.container 4 arrow 22
replaceitem block ~-2 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-2 ~1 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~-2 ~1 ~3 slot.container 10 lantern 6
replaceitem block ~-2 ~1 ~3 slot.container 11 pointed_dripstone 13
replaceitem block ~-2 ~1 ~3 slot.container 12 dripstone_block 14
replaceitem block ~-2 ~1 ~3 slot.container 13 iron_ingot 13
replaceitem block ~-2 ~1 ~3 slot.container 14 gold_ingot 10
loot insert ~-2 ~1 ~3 loot "rsf/dripstone_caves"
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 string 17
replaceitem block ~2 ~1 ~3 slot.container 1 spider_eye 6
replaceitem block ~2 ~1 ~3 slot.container 2 arrow 17
replaceitem block ~2 ~1 ~3 slot.container 3 ender_pearl 4
replaceitem block ~2 ~1 ~3 slot.container 4 copper_ingot 19
replaceitem block ~2 ~1 ~3 slot.container 5 rotten_flesh 16
replaceitem block ~2 ~1 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~2 ~1 ~3 slot.container 10 lantern 11
replaceitem block ~2 ~1 ~3 slot.container 11 pointed_dripstone 18
replaceitem block ~2 ~1 ~3 slot.container 12 dripstone_block 12
replaceitem block ~2 ~1 ~3 slot.container 13 iron_ingot 11
replaceitem block ~2 ~1 ~3 slot.container 14 gold_ingot 8
loot insert ~2 ~1 ~3 loot "rsf/dripstone_caves"
loot insert ~2 ~1 ~3 loot "chests/abandoned_mineshaft"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
