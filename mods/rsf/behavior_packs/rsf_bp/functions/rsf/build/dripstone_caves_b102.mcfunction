# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3302/4224 | 主题内编号: b102/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·双子箭塔联防碉楼 (dripstone_caves_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cobbled_deepslate [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cobbled_deepslate [] replace water
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobbled_deepslate_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_tiles []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 cobbled_deepslate []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-4 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-4 ~3 campfire []
setblock ~4 ~-4 ~-3 campfire []
setblock ~4 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-2 ~3 slot.container 0 copper_ingot 21
replaceitem block ~4 ~-2 ~3 slot.container 1 rotten_flesh 18
replaceitem block ~4 ~-2 ~3 slot.container 2 bone 17
replaceitem block ~4 ~-2 ~3 slot.container 3 gunpowder 10
replaceitem block ~4 ~-2 ~3 slot.container 4 string 11
replaceitem block ~4 ~-2 ~3 slot.container 5 spider_eye 8
replaceitem block ~4 ~-2 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~4 ~-2 ~3 slot.container 10 lantern 7
replaceitem block ~4 ~-2 ~3 slot.container 11 pointed_dripstone 14
replaceitem block ~4 ~-2 ~3 slot.container 12 dripstone_block 15
replaceitem block ~4 ~-2 ~3 slot.container 13 iron_ingot 14
replaceitem block ~4 ~-2 ~3 slot.container 14 gold_ingot 11
loot insert ~4 ~-2 ~3 loot "rsf/dripstone_caves"
loot insert ~4 ~-2 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~10 ~5 cobbled_deepslate []
fill ~2 ~1 ~-5 ~6 ~10 ~5 cobbled_deepslate []
fill ~-5 ~1 ~-4 ~-3 ~9 ~4 air []
fill ~3 ~1 ~-4 ~5 ~9 ~4 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 dripstone_block []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 dripstone_block []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 cobbled_deepslate_wall []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 air []
setblock ~-6 ~10 ~-5 polished_deepslate []
setblock ~-6 ~11 ~-5 campfire []
setblock ~-6 ~10 ~5 polished_deepslate []
setblock ~-6 ~11 ~5 campfire []
setblock ~6 ~10 ~-5 polished_deepslate []
setblock ~6 ~11 ~-5 campfire []
setblock ~6 ~10 ~5 polished_deepslate []
setblock ~6 ~11 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~8 ~-2 polished_deepslate []
fill ~-7 ~0 ~2 ~-7 ~8 ~2 polished_deepslate []
fill ~7 ~0 ~-2 ~7 ~8 ~-2 polished_deepslate []
fill ~7 ~0 ~2 ~7 ~8 ~2 polished_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 9x8x5) ---
fill ~9 ~0 ~0 ~9 ~7 ~0 dripstone_block []
setblock ~9 ~8 ~0 copper_block []
setblock ~9 ~9 ~0 lantern []

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
replaceitem block ~-5 ~1 ~4 slot.container 9 cauldron 7
replaceitem block ~-5 ~1 ~4 slot.container 10 lava_bucket 1
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~-5 ~1 ~4 slot.container 12 lantern 7
replaceitem block ~-5 ~1 ~4 slot.container 13 pointed_dripstone 14
replaceitem block ~-5 ~1 ~4 slot.container 14 dripstone_block 15
loot insert ~-5 ~1 ~4 loot "rsf/dripstone_caves"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 copper_ingot 19
replaceitem block ~5 ~1 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~4 slot.container 2 bone 15
replaceitem block ~5 ~1 ~4 slot.container 3 gunpowder 16
replaceitem block ~5 ~1 ~4 slot.container 4 string 17
replaceitem block ~5 ~1 ~4 slot.container 5 spider_eye 6
replaceitem block ~5 ~1 ~4 slot.container 9 cauldron 5
replaceitem block ~5 ~1 ~4 slot.container 10 lava_bucket 1
replaceitem block ~5 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~5 ~1 ~4 slot.container 12 lantern 12
replaceitem block ~5 ~1 ~4 slot.container 13 pointed_dripstone 12
replaceitem block ~5 ~1 ~4 slot.container 14 dripstone_block 13
loot insert ~5 ~1 ~4 loot "rsf/dripstone_caves"
loot insert ~5 ~1 ~4 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon witch ~0 ~-2 ~0
