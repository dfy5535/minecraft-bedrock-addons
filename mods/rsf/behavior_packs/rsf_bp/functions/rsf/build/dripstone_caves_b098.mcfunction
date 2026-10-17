# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3298/4224 | 主题内编号: b098/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·四角炮楼重装要塞 (dripstone_caves_bunker_corner_citadel)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 cobbled_deepslate [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 cobbled_deepslate [] replace water
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 cobbled_deepslate_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_tiles []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 cobbled_deepslate []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-6 ~0 ~0 ~-6 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~5 campfire []
setblock ~4 ~-5 ~-5 campfire []
setblock ~4 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~5 slot.container 0 string 11
replaceitem block ~4 ~-3 ~5 slot.container 1 spider_eye 8
replaceitem block ~4 ~-3 ~5 slot.container 2 arrow 19
replaceitem block ~4 ~-3 ~5 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-3 ~5 slot.container 4 copper_ingot 21
replaceitem block ~4 ~-3 ~5 slot.container 5 rotten_flesh 18
replaceitem block ~4 ~-3 ~5 slot.container 9 cauldron 5
replaceitem block ~4 ~-3 ~5 slot.container 10 lava_bucket 1
replaceitem block ~4 ~-3 ~5 slot.container 11 iron_pickaxe 1
replaceitem block ~4 ~-3 ~5 slot.container 12 lantern 12
replaceitem block ~4 ~-3 ~5 slot.container 13 pointed_dripstone 12
replaceitem block ~4 ~-3 ~5 slot.container 14 dripstone_block 13
loot insert ~4 ~-3 ~5 loot "rsf/dripstone_caves"
loot insert ~4 ~-3 ~5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~8 ~7 cobbled_deepslate []
fill ~-5 ~1 ~-6 ~5 ~7 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~10 ~-6 dripstone_block []
setblock ~-6 ~11 ~-7 campfire []
fill ~-6 ~1 ~6 ~-5 ~10 ~7 dripstone_block []
setblock ~-6 ~11 ~6 campfire []
fill ~5 ~1 ~-7 ~6 ~10 ~-6 dripstone_block []
setblock ~5 ~11 ~-7 campfire []
fill ~5 ~1 ~6 ~6 ~10 ~7 dripstone_block []
setblock ~5 ~11 ~6 campfire []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 dripstone_block []
fill ~-6 ~9 ~-7 ~6 ~9 ~7 cobbled_deepslate_wall []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 air []
setblock ~-6 ~9 ~-7 polished_deepslate []
setblock ~-6 ~10 ~-7 campfire []
setblock ~-6 ~9 ~7 polished_deepslate []
setblock ~-6 ~10 ~7 campfire []
setblock ~6 ~9 ~-7 polished_deepslate []
setblock ~6 ~10 ~-7 campfire []
setblock ~6 ~9 ~7 polished_deepslate []
setblock ~6 ~10 ~7 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 cobbled_deepslate_wall []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 9x9x6) ---
fill ~9 ~0 ~1 ~9 ~8 ~1 dripstone_block []
setblock ~9 ~9 ~1 copper_block []
setblock ~9 ~10 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 lantern []
fill ~-4 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 iron_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~6 slot.container 1 gunpowder 13
replaceitem block ~-5 ~1 ~6 slot.container 2 string 14
replaceitem block ~-5 ~1 ~6 slot.container 3 spider_eye 11
replaceitem block ~-5 ~1 ~6 slot.container 4 arrow 22
replaceitem block ~-5 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 9 coal 17
replaceitem block ~-5 ~1 ~6 slot.container 10 diamond 4
replaceitem block ~-5 ~1 ~6 slot.container 11 cauldron 5
replaceitem block ~-5 ~1 ~6 slot.container 12 lava_bucket 1
replaceitem block ~-5 ~1 ~6 slot.container 13 iron_pickaxe 1
replaceitem block ~-5 ~1 ~6 slot.container 14 lantern 12
loot insert ~-5 ~1 ~6 loot "rsf/dripstone_caves"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 17
replaceitem block ~5 ~1 ~6 slot.container 1 spider_eye 6
replaceitem block ~5 ~1 ~6 slot.container 2 arrow 17
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 4 copper_ingot 19
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 16
replaceitem block ~5 ~1 ~6 slot.container 9 coal 22
replaceitem block ~5 ~1 ~6 slot.container 10 diamond 2
replaceitem block ~5 ~1 ~6 slot.container 11 cauldron 3
replaceitem block ~5 ~1 ~6 slot.container 12 lava_bucket 1
replaceitem block ~5 ~1 ~6 slot.container 13 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 14 lantern 10
loot insert ~5 ~1 ~6 loot "rsf/dripstone_caves"
loot insert ~5 ~1 ~6 loot "chests/abandoned_mineshaft"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
