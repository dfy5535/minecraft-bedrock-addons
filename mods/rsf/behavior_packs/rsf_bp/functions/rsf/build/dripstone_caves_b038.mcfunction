# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3238/4224 | 主题内编号: b038/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·四方凯旋衣冠冢 (dripstone_caves_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 cobbled_deepslate [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 cobbled_deepslate [] replace water
fill ~-5 ~1 ~-6 ~5 ~11 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobbled_deepslate_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 deepslate_tiles []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 deepslate_tiles []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 dripstone_block []
setblock ~0 ~-5 ~0 gold_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 campfire []
setblock ~2 ~-4 ~0 campfire []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 copper_ingot 21
replaceitem block ~0 ~-2 ~-3 slot.container 1 rotten_flesh 18
replaceitem block ~0 ~-2 ~-3 slot.container 2 bone 17
replaceitem block ~0 ~-2 ~-3 slot.container 3 gunpowder 10
replaceitem block ~0 ~-2 ~-3 slot.container 4 string 11
replaceitem block ~0 ~-2 ~-3 slot.container 5 spider_eye 8
replaceitem block ~0 ~-2 ~-3 slot.container 9 pointed_dripstone 12
replaceitem block ~0 ~-2 ~-3 slot.container 10 dripstone_block 13
replaceitem block ~0 ~-2 ~-3 slot.container 11 iron_ingot 12
replaceitem block ~0 ~-2 ~-3 slot.container 12 gold_ingot 9
replaceitem block ~0 ~-2 ~-3 slot.container 13 coal 20
replaceitem block ~0 ~-2 ~-3 slot.container 14 diamond 7
loot insert ~0 ~-2 ~-3 loot "rsf/dripstone_caves"
loot insert ~0 ~-2 ~-3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~9 ~5 cobbled_deepslate []
fill ~-4 ~1 ~-2 ~4 ~9 ~2 cobbled_deepslate []
fill ~-1 ~1 ~-4 ~1 ~8 ~4 air []
fill ~-3 ~1 ~-1 ~3 ~8 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-4 ~2 ~0 cobbled_deepslate_wall []
setblock ~4 ~2 ~0 cobbled_deepslate_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~10 ~-5 ~4 ~10 ~5 dripstone_block []
fill ~-3 ~11 ~-4 ~3 ~11 ~4 deepslate_tiles []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 iron_block []
setblock ~0 ~13 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 dripstone_block []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 polished_deepslate []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 polished_deepslate []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 cobbled_deepslate_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~7 ~0 ~1 ~7 ~8 ~1 dripstone_block []
setblock ~7 ~9 ~1 copper_block []
setblock ~7 ~10 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 arrow 22
replaceitem block ~-3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 2 copper_ingot 16
replaceitem block ~-3 ~1 ~4 slot.container 3 rotten_flesh 13
replaceitem block ~-3 ~1 ~4 slot.container 4 bone 12
replaceitem block ~-3 ~1 ~4 slot.container 5 gunpowder 13
replaceitem block ~-3 ~1 ~4 slot.container 9 coal 20
replaceitem block ~-3 ~1 ~4 slot.container 10 diamond 7
replaceitem block ~-3 ~1 ~4 slot.container 11 cauldron 8
replaceitem block ~-3 ~1 ~4 slot.container 12 lava_bucket 1
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~-3 ~1 ~4 slot.container 14 lantern 8
loot insert ~-3 ~1 ~4 loot "rsf/dripstone_caves"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 copper_ingot 19
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 2 bone 15
replaceitem block ~3 ~1 ~4 slot.container 3 gunpowder 16
replaceitem block ~3 ~1 ~4 slot.container 4 string 17
replaceitem block ~3 ~1 ~4 slot.container 5 spider_eye 6
replaceitem block ~3 ~1 ~4 slot.container 9 coal 18
replaceitem block ~3 ~1 ~4 slot.container 10 diamond 5
replaceitem block ~3 ~1 ~4 slot.container 11 cauldron 6
replaceitem block ~3 ~1 ~4 slot.container 12 lava_bucket 1
replaceitem block ~3 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 14 lantern 6
loot insert ~3 ~1 ~4 loot "rsf/dripstone_caves"
loot insert ~3 ~1 ~4 loot "chests/abandoned_mineshaft"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
