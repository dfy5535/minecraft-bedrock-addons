# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3205/4224 | 主题内编号: b005/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·下沉圣泉秘宝祭坛 (dripstone_caves_altar_sunken_well)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 deepslate_bricks [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 deepslate_bricks [] replace water
fill ~-5 ~1 ~-6 ~5 ~8 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 tuff []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 deepslate_tiles []
setblock ~0 ~0 ~0 raw_copper_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 dripstone_block []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 ender_pearl 6
replaceitem block ~-2 ~-4 ~3 slot.container 1 copper_ingot 21
replaceitem block ~-2 ~-4 ~3 slot.container 2 rotten_flesh 18
replaceitem block ~-2 ~-4 ~3 slot.container 3 bone 17
replaceitem block ~-2 ~-4 ~3 slot.container 4 gunpowder 10
replaceitem block ~-2 ~-4 ~3 slot.container 5 string 11
replaceitem block ~-2 ~-4 ~3 slot.container 9 dripstone_block 12
replaceitem block ~-2 ~-4 ~3 slot.container 10 iron_ingot 11
replaceitem block ~-2 ~-4 ~3 slot.container 11 gold_ingot 8
replaceitem block ~-2 ~-4 ~3 slot.container 12 coal 19
replaceitem block ~-2 ~-4 ~3 slot.container 13 diamond 6
replaceitem block ~-2 ~-4 ~3 slot.container 14 cauldron 7
loot insert ~-2 ~-4 ~3 loot "rsf/dripstone_caves"
loot insert ~-2 ~-4 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 deepslate_bricks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 dripstone_block []
fill ~0 ~1 ~-5 ~0 ~2 ~5 dripstone_block []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-4 ~6 ~-5 ~-4 ~8 ~-5 polished_deepslate []
setblock ~-4 ~9 ~-5 torch []
fill ~-4 ~6 ~5 ~-4 ~8 ~5 polished_deepslate []
setblock ~-4 ~9 ~5 torch []
fill ~4 ~6 ~-5 ~4 ~8 ~-5 polished_deepslate []
setblock ~4 ~9 ~-5 torch []
fill ~4 ~6 ~5 ~4 ~8 ~5 polished_deepslate []
setblock ~4 ~9 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 deepslate_brick_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~7 ~0 ~-2 ~7 ~5 ~-2 dripstone_block []
setblock ~7 ~6 ~-2 copper_block []
setblock ~7 ~7 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 copper_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 spider_eye 11
replaceitem block ~3 ~1 ~4 slot.container 1 arrow 22
replaceitem block ~3 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 3 copper_ingot 16
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 13
replaceitem block ~3 ~1 ~4 slot.container 5 bone 12
replaceitem block ~3 ~1 ~4 slot.container 9 diamond 8
replaceitem block ~3 ~1 ~4 slot.container 10 cauldron 2
replaceitem block ~3 ~1 ~4 slot.container 11 lava_bucket 1
replaceitem block ~3 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 13 lantern 9
replaceitem block ~3 ~1 ~4 slot.container 14 pointed_dripstone 16
loot insert ~3 ~1 ~4 loot "rsf/dripstone_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
