# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3224/4224 | 主题内编号: b024/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·半地下掩体储藏室 (dripstone_caves_chamber_sunken_bunker)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 dripstone_block [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 dripstone_block [] replace water
fill ~-5 ~1 ~-6 ~5 ~8 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_deepslate []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 tuff []
setblock ~0 ~0 ~0 copper_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 dripstone_block []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
setblock ~-2 ~-5 ~0 blast_furnace []
setblock ~2 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 string 11
replaceitem block ~2 ~-3 ~3 slot.container 1 spider_eye 8
replaceitem block ~2 ~-3 ~3 slot.container 2 arrow 19
replaceitem block ~2 ~-3 ~3 slot.container 3 ender_pearl 6
replaceitem block ~2 ~-3 ~3 slot.container 4 copper_ingot 21
replaceitem block ~2 ~-3 ~3 slot.container 5 rotten_flesh 18
replaceitem block ~2 ~-3 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~2 ~-3 ~3 slot.container 10 lantern 10
replaceitem block ~2 ~-3 ~3 slot.container 11 pointed_dripstone 17
replaceitem block ~2 ~-3 ~3 slot.container 12 dripstone_block 18
replaceitem block ~2 ~-3 ~3 slot.container 13 iron_ingot 10
replaceitem block ~2 ~-3 ~3 slot.container 14 gold_ingot 7
loot insert ~2 ~-3 ~3 loot "rsf/dripstone_caves"
loot insert ~2 ~-3 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 dripstone_block []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 deepslate_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 deepslate_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~6 ~-5 ~4 ~6 ~5 deepslate_bricks []
fill ~-4 ~7 ~-5 ~4 ~7 ~5 deepslate_brick_wall []
fill ~-3 ~7 ~-4 ~3 ~7 ~4 air []
setblock ~-4 ~7 ~-5 cobbled_deepslate []
setblock ~-4 ~8 ~-5 lantern []
setblock ~-4 ~7 ~5 cobbled_deepslate []
setblock ~-4 ~8 ~5 lantern []
setblock ~4 ~7 ~-5 cobbled_deepslate []
setblock ~4 ~8 ~-5 lantern []
setblock ~4 ~7 ~5 cobbled_deepslate []
setblock ~4 ~8 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 deepslate_brick_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~7 ~0 ~2 ~7 ~4 ~2 dripstone_block []
setblock ~7 ~5 ~2 copper_block []
setblock ~7 ~6 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 copper_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 copper_ingot 16
replaceitem block ~-3 ~1 ~4 slot.container 1 rotten_flesh 13
replaceitem block ~-3 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-3 ~1 ~4 slot.container 3 gunpowder 13
replaceitem block ~-3 ~1 ~4 slot.container 4 string 14
replaceitem block ~-3 ~1 ~4 slot.container 5 spider_eye 11
replaceitem block ~-3 ~1 ~4 slot.container 9 iron_ingot 14
replaceitem block ~-3 ~1 ~4 slot.container 10 gold_ingot 11
replaceitem block ~-3 ~1 ~4 slot.container 11 coal 22
replaceitem block ~-3 ~1 ~4 slot.container 12 diamond 2
replaceitem block ~-3 ~1 ~4 slot.container 13 cauldron 3
replaceitem block ~-3 ~1 ~4 slot.container 14 lava_bucket 1
loot insert ~-3 ~1 ~4 loot "rsf/dripstone_caves"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 15
replaceitem block ~3 ~1 ~4 slot.container 1 gunpowder 16
replaceitem block ~3 ~1 ~4 slot.container 2 string 17
replaceitem block ~3 ~1 ~4 slot.container 3 spider_eye 6
replaceitem block ~3 ~1 ~4 slot.container 4 arrow 17
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 9 iron_ingot 12
replaceitem block ~3 ~1 ~4 slot.container 10 gold_ingot 9
replaceitem block ~3 ~1 ~4 slot.container 11 coal 20
replaceitem block ~3 ~1 ~4 slot.container 12 diamond 7
replaceitem block ~3 ~1 ~4 slot.container 13 cauldron 8
replaceitem block ~3 ~1 ~4 slot.container 14 lava_bucket 1
loot insert ~3 ~1 ~4 loot "rsf/dripstone_caves"
loot insert ~3 ~1 ~4 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon witch ~0 ~-3 ~0
