# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3214/4224 | 主题内编号: b014/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·暗渠蓄水池秘境地牢 (dripstone_caves_dungeon_flooded_cistern)
# 建筑构造: 主体[u_courtyard] + 屋顶[ruined_skylight] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 cobbled_deepslate [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 cobbled_deepslate [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobbled_deepslate_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_tiles []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 deepslate_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 dripstone_block []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-4 ~4 slot.container 0 copper_ingot 21
replaceitem block ~-3 ~-4 ~4 slot.container 1 rotten_flesh 18
replaceitem block ~-3 ~-4 ~4 slot.container 2 bone 17
replaceitem block ~-3 ~-4 ~4 slot.container 3 gunpowder 10
replaceitem block ~-3 ~-4 ~4 slot.container 4 string 11
replaceitem block ~-3 ~-4 ~4 slot.container 5 spider_eye 8
replaceitem block ~-3 ~-4 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~-3 ~-4 ~4 slot.container 10 lantern 9
replaceitem block ~-3 ~-4 ~4 slot.container 11 pointed_dripstone 16
replaceitem block ~-3 ~-4 ~4 slot.container 12 dripstone_block 17
replaceitem block ~-3 ~-4 ~4 slot.container 13 iron_ingot 16
replaceitem block ~-3 ~-4 ~4 slot.container 14 gold_ingot 6
loot insert ~-3 ~-4 ~4 loot "rsf/dripstone_caves"
loot insert ~-3 ~-4 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 cobbled_deepslate []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 deepslate_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 cobbled_deepslate_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-5 ~5 ~-1 ~-5 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 dripstone_block []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 campfire []
setblock ~2 ~4 ~-9 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~8 ~0 ~-3 ~8 ~4 ~-3 dripstone_block []
setblock ~8 ~5 ~-3 copper_block []
setblock ~8 ~6 ~-3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 arrow 22
replaceitem block ~-4 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 2 copper_ingot 16
replaceitem block ~-4 ~1 ~5 slot.container 3 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 4 bone 12
replaceitem block ~-4 ~1 ~5 slot.container 5 gunpowder 13
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_ingot 11
replaceitem block ~-4 ~1 ~5 slot.container 10 gold_ingot 8
replaceitem block ~-4 ~1 ~5 slot.container 11 coal 19
replaceitem block ~-4 ~1 ~5 slot.container 12 diamond 6
replaceitem block ~-4 ~1 ~5 slot.container 13 cauldron 7
replaceitem block ~-4 ~1 ~5 slot.container 14 lava_bucket 1
loot insert ~-4 ~1 ~5 loot "rsf/dripstone_caves"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 copper_ingot 19
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 2 bone 15
replaceitem block ~4 ~1 ~5 slot.container 3 gunpowder 16
replaceitem block ~4 ~1 ~5 slot.container 4 string 17
replaceitem block ~4 ~1 ~5 slot.container 5 spider_eye 6
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 16
replaceitem block ~4 ~1 ~5 slot.container 10 gold_ingot 6
replaceitem block ~4 ~1 ~5 slot.container 11 coal 17
replaceitem block ~4 ~1 ~5 slot.container 12 diamond 4
replaceitem block ~4 ~1 ~5 slot.container 13 cauldron 5
replaceitem block ~4 ~1 ~5 slot.container 14 lava_bucket 1
loot insert ~4 ~1 ~5 loot "rsf/dripstone_caves"
loot insert ~4 ~1 ~5 loot "chests/abandoned_mineshaft"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
