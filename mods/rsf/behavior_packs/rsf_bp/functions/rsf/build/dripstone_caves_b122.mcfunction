# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3322/4224 | 主题内编号: b122/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·十字穹顶宏伟圣堂与墓窟 (dripstone_caves_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x17 | 地上高度 10格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 cobbled_deepslate [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 cobbled_deepslate [] replace water
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 cobbled_deepslate_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_tiles []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 deepslate_tiles []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 dripstone_block []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 campfire []
setblock ~2 ~-5 ~0 campfire []
setblock ~0 ~-3 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-5 slot.container 0 string 11
replaceitem block ~0 ~-3 ~-5 slot.container 1 spider_eye 8
replaceitem block ~0 ~-3 ~-5 slot.container 2 arrow 19
replaceitem block ~0 ~-3 ~-5 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-3 ~-5 slot.container 4 copper_ingot 21
replaceitem block ~0 ~-3 ~-5 slot.container 5 rotten_flesh 18
replaceitem block ~0 ~-3 ~-5 slot.container 9 iron_ingot 10
replaceitem block ~0 ~-3 ~-5 slot.container 10 gold_ingot 7
replaceitem block ~0 ~-3 ~-5 slot.container 11 coal 18
replaceitem block ~0 ~-3 ~-5 slot.container 12 diamond 5
replaceitem block ~0 ~-3 ~-5 slot.container 13 cauldron 6
replaceitem block ~0 ~-3 ~-5 slot.container 14 lava_bucket 1
loot insert ~0 ~-3 ~-5 loot "rsf/dripstone_caves"
loot insert ~0 ~-3 ~-5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~10 ~7 cobbled_deepslate []
fill ~-6 ~1 ~-2 ~6 ~10 ~2 cobbled_deepslate []
fill ~-1 ~1 ~-6 ~1 ~9 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~9 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 cobbled_deepslate_wall []
setblock ~6 ~2 ~0 cobbled_deepslate_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 dripstone_block []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 cobbled_deepslate []
fill ~0 ~16 ~0 ~0 ~18 ~0 iron_block []
setblock ~0 ~19 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~9 ~-2 polished_deepslate []
fill ~-7 ~0 ~2 ~-7 ~9 ~2 polished_deepslate []
fill ~7 ~0 ~-2 ~7 ~9 ~-2 polished_deepslate []
fill ~7 ~0 ~2 ~7 ~9 ~2 polished_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 9x9x5) ---
fill ~9 ~0 ~-3 ~9 ~7 ~-3 dripstone_block []
setblock ~9 ~8 ~-3 copper_block []
setblock ~9 ~9 ~-3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 blast_furnace []
setblock ~-3 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~6 slot.container 1 gunpowder 13
replaceitem block ~-5 ~1 ~6 slot.container 2 string 14
replaceitem block ~-5 ~1 ~6 slot.container 3 spider_eye 11
replaceitem block ~-5 ~1 ~6 slot.container 4 arrow 22
replaceitem block ~-5 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 9 cauldron 6
replaceitem block ~-5 ~1 ~6 slot.container 10 lava_bucket 1
replaceitem block ~-5 ~1 ~6 slot.container 11 iron_pickaxe 1
replaceitem block ~-5 ~1 ~6 slot.container 12 lantern 6
replaceitem block ~-5 ~1 ~6 slot.container 13 pointed_dripstone 13
replaceitem block ~-5 ~1 ~6 slot.container 14 dripstone_block 14
loot insert ~-5 ~1 ~6 loot "rsf/dripstone_caves"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 17
replaceitem block ~5 ~1 ~6 slot.container 1 spider_eye 6
replaceitem block ~5 ~1 ~6 slot.container 2 arrow 17
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 4 copper_ingot 19
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 16
replaceitem block ~5 ~1 ~6 slot.container 9 cauldron 4
replaceitem block ~5 ~1 ~6 slot.container 10 lava_bucket 1
replaceitem block ~5 ~1 ~6 slot.container 11 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 12 lantern 11
replaceitem block ~5 ~1 ~6 slot.container 13 pointed_dripstone 18
replaceitem block ~5 ~1 ~6 slot.container 14 dripstone_block 12
loot insert ~5 ~1 ~6 loot "rsf/dripstone_caves"
loot insert ~5 ~1 ~6 loot "chests/abandoned_mineshaft"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
