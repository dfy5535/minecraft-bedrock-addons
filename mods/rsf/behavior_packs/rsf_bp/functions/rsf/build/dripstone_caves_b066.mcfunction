# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3266/4224 | 主题内编号: b066/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·崩塌角楼古堡残垣 (dripstone_caves_ruin_shattered_keep)
# 建筑构造: 主体[fortress_citadel] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 cobbled_deepslate [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 cobbled_deepslate [] replace water
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobbled_deepslate_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_tiles []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 deepslate_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 cobbled_deepslate []
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-4 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-4 ~4 campfire []
setblock ~3 ~-4 ~-4 campfire []
setblock ~3 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-2 ~4 slot.container 0 string 11
replaceitem block ~3 ~-2 ~4 slot.container 1 spider_eye 8
replaceitem block ~3 ~-2 ~4 slot.container 2 arrow 19
replaceitem block ~3 ~-2 ~4 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-2 ~4 slot.container 4 copper_ingot 21
replaceitem block ~3 ~-2 ~4 slot.container 5 rotten_flesh 18
replaceitem block ~3 ~-2 ~4 slot.container 9 pointed_dripstone 18
replaceitem block ~3 ~-2 ~4 slot.container 10 dripstone_block 12
replaceitem block ~3 ~-2 ~4 slot.container 11 iron_ingot 11
replaceitem block ~3 ~-2 ~4 slot.container 12 gold_ingot 8
replaceitem block ~3 ~-2 ~4 slot.container 13 coal 19
replaceitem block ~3 ~-2 ~4 slot.container 14 diamond 6
loot insert ~3 ~-2 ~4 loot "rsf/dripstone_caves"
loot insert ~3 ~-2 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~8 ~6 cobbled_deepslate []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~10 ~-5 dripstone_block []
setblock ~-5 ~11 ~-6 campfire []
fill ~-5 ~1 ~5 ~-4 ~10 ~6 dripstone_block []
setblock ~-5 ~11 ~5 campfire []
fill ~4 ~1 ~-6 ~5 ~10 ~-5 dripstone_block []
setblock ~4 ~11 ~-6 campfire []
fill ~4 ~1 ~5 ~5 ~10 ~6 dripstone_block []
setblock ~4 ~11 ~5 campfire []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 cobbled_deepslate_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-5 ~7 ~-1 ~-5 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~7 ~-2 polished_deepslate []
fill ~-6 ~0 ~2 ~-6 ~7 ~2 polished_deepslate []
fill ~6 ~0 ~-2 ~6 ~7 ~-2 polished_deepslate []
fill ~6 ~0 ~2 ~6 ~7 ~2 polished_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x9x4) ---
fill ~8 ~0 ~1 ~8 ~6 ~1 dripstone_block []
setblock ~8 ~7 ~1 copper_block []
setblock ~8 ~8 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~5 slot.container 1 gunpowder 13
replaceitem block ~-4 ~1 ~5 slot.container 2 string 14
replaceitem block ~-4 ~1 ~5 slot.container 3 spider_eye 11
replaceitem block ~-4 ~1 ~5 slot.container 4 arrow 22
replaceitem block ~-4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~-4 ~1 ~5 slot.container 10 lantern 11
replaceitem block ~-4 ~1 ~5 slot.container 11 pointed_dripstone 18
replaceitem block ~-4 ~1 ~5 slot.container 12 dripstone_block 12
replaceitem block ~-4 ~1 ~5 slot.container 13 iron_ingot 11
replaceitem block ~-4 ~1 ~5 slot.container 14 gold_ingot 8
loot insert ~-4 ~1 ~5 loot "rsf/dripstone_caves"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 string 17
replaceitem block ~4 ~1 ~5 slot.container 1 spider_eye 6
replaceitem block ~4 ~1 ~5 slot.container 2 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 4 copper_ingot 19
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 10 lantern 9
replaceitem block ~4 ~1 ~5 slot.container 11 pointed_dripstone 16
replaceitem block ~4 ~1 ~5 slot.container 12 dripstone_block 17
replaceitem block ~4 ~1 ~5 slot.container 13 iron_ingot 16
replaceitem block ~4 ~1 ~5 slot.container 14 gold_ingot 6
loot insert ~4 ~1 ~5 loot "rsf/dripstone_caves"
loot insert ~4 ~1 ~5 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon witch ~0 ~-2 ~0
