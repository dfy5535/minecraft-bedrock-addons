# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3232/4224 | 主题内编号: b032/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·断顶残垣古哨塔 (dripstone_caves_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 9x13 | 地上高度 10格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 dripstone_block [] replace air
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 dripstone_block [] replace water
fill ~-4 ~1 ~-6 ~4 ~12 ~6 air []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-3 ~0 ~-5 ~3 ~0 ~5 polished_deepslate []
fill ~-2 ~0 ~-4 ~2 ~0 ~4 tuff []
setblock ~0 ~0 ~0 copper_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-3 ~-5 ~3 ~-1 ~5 deepslate_bricks []
fill ~-2 ~-4 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 deepslate_bricks []
setblock ~0 ~-5 ~0 raw_copper_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 bone 17
replaceitem block ~0 ~-2 ~-3 slot.container 1 gunpowder 10
replaceitem block ~0 ~-2 ~-3 slot.container 2 string 11
replaceitem block ~0 ~-2 ~-3 slot.container 3 spider_eye 8
replaceitem block ~0 ~-2 ~-3 slot.container 4 arrow 19
replaceitem block ~0 ~-2 ~-3 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-2 ~-3 slot.container 9 iron_ingot 11
replaceitem block ~0 ~-2 ~-3 slot.container 10 gold_ingot 8
replaceitem block ~0 ~-2 ~-3 slot.container 11 coal 19
replaceitem block ~0 ~-2 ~-3 slot.container 12 diamond 6
replaceitem block ~0 ~-2 ~-3 slot.container 13 cauldron 7
replaceitem block ~0 ~-2 ~-3 slot.container 14 lava_bucket 1
loot insert ~0 ~-2 ~-3 loot "rsf/dripstone_caves"
loot insert ~0 ~-2 ~-3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-5 ~3 ~10 ~5 dripstone_block []
fill ~-2 ~1 ~-4 ~2 ~9 ~4 air []
fill ~-3 ~1 ~-5 ~-3 ~10 ~-5 cobbled_deepslate []
fill ~-3 ~1 ~5 ~-3 ~10 ~5 cobbled_deepslate []
fill ~3 ~1 ~-5 ~3 ~10 ~-5 cobbled_deepslate []
fill ~3 ~1 ~5 ~3 ~10 ~5 cobbled_deepslate []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-3 ~2 ~0 deepslate_brick_wall []
setblock ~3 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-3 ~10 ~-5 ~3 ~10 ~5 deepslate_brick_slab []
fill ~-1 ~9 ~-1 ~2 ~10 ~2 air []
fill ~-3 ~9 ~-1 ~-3 ~10 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~9 ~-2 cobbled_deepslate []
fill ~-4 ~0 ~2 ~-4 ~9 ~2 cobbled_deepslate []
fill ~4 ~0 ~-2 ~4 ~9 ~-2 cobbled_deepslate []
fill ~4 ~0 ~2 ~4 ~9 ~2 cobbled_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~6 ~0 ~0 ~6 ~7 ~0 dripstone_block []
setblock ~6 ~8 ~0 copper_block []
setblock ~6 ~9 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~4 slot.container 0 copper_ingot 16
replaceitem block ~-2 ~1 ~4 slot.container 1 rotten_flesh 13
replaceitem block ~-2 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-2 ~1 ~4 slot.container 3 gunpowder 13
replaceitem block ~-2 ~1 ~4 slot.container 4 string 14
replaceitem block ~-2 ~1 ~4 slot.container 5 spider_eye 11
replaceitem block ~-2 ~1 ~4 slot.container 9 cauldron 7
replaceitem block ~-2 ~1 ~4 slot.container 10 lava_bucket 1
replaceitem block ~-2 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~-2 ~1 ~4 slot.container 12 lantern 7
replaceitem block ~-2 ~1 ~4 slot.container 13 pointed_dripstone 14
replaceitem block ~-2 ~1 ~4 slot.container 14 dripstone_block 15
loot insert ~-2 ~1 ~4 loot "rsf/dripstone_caves"
setblock ~2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~4 slot.container 0 bone 15
replaceitem block ~2 ~1 ~4 slot.container 1 gunpowder 16
replaceitem block ~2 ~1 ~4 slot.container 2 string 17
replaceitem block ~2 ~1 ~4 slot.container 3 spider_eye 6
replaceitem block ~2 ~1 ~4 slot.container 4 arrow 17
replaceitem block ~2 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~2 ~1 ~4 slot.container 9 cauldron 5
replaceitem block ~2 ~1 ~4 slot.container 10 lava_bucket 1
replaceitem block ~2 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~2 ~1 ~4 slot.container 12 lantern 12
replaceitem block ~2 ~1 ~4 slot.container 13 pointed_dripstone 12
replaceitem block ~2 ~1 ~4 slot.container 14 dripstone_block 13
loot insert ~2 ~1 ~4 loot "rsf/dripstone_caves"
loot insert ~2 ~1 ~4 loot "chests/abandoned_mineshaft"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
