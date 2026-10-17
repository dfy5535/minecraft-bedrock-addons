# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3308/4224 | 主题内编号: b108/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·十字四相元素秘法殿 (dripstone_caves_arcane_cross_sanctum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 dripstone_block [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 dripstone_block [] replace water
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_deepslate []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 tuff []
setblock ~0 ~0 ~0 copper_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 deepslate_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 copper_block []
setblock ~0 ~-5 ~0 lantern []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 string 11
replaceitem block ~3 ~-2 ~0 slot.container 1 spider_eye 8
replaceitem block ~3 ~-2 ~0 slot.container 2 arrow 19
replaceitem block ~3 ~-2 ~0 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-2 ~0 slot.container 4 copper_ingot 21
replaceitem block ~3 ~-2 ~0 slot.container 5 rotten_flesh 18
replaceitem block ~3 ~-2 ~0 slot.container 9 pointed_dripstone 14
replaceitem block ~3 ~-2 ~0 slot.container 10 dripstone_block 15
replaceitem block ~3 ~-2 ~0 slot.container 11 iron_ingot 14
replaceitem block ~3 ~-2 ~0 slot.container 12 gold_ingot 11
replaceitem block ~3 ~-2 ~0 slot.container 13 coal 22
replaceitem block ~3 ~-2 ~0 slot.container 14 diamond 2
loot insert ~3 ~-2 ~0 loot "rsf/dripstone_caves"
loot insert ~3 ~-2 ~0 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~8 ~6 dripstone_block []
fill ~-5 ~1 ~-2 ~5 ~8 ~2 dripstone_block []
fill ~-1 ~1 ~-5 ~1 ~7 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~7 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 deepslate_brick_wall []
setblock ~5 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 deepslate_bricks []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 deepslate_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 copper_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 cobbled_deepslate []
setblock ~0 ~4 ~-8 raw_copper_block []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 cobbled_deepslate []
setblock ~0 ~4 ~8 raw_copper_block []
setblock ~0 ~5 ~8 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 cobbled_deepslate []
setblock ~-7 ~4 ~0 raw_copper_block []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 cobbled_deepslate []
setblock ~7 ~4 ~0 raw_copper_block []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x9x6) ---
fill ~8 ~0 ~1 ~8 ~8 ~1 dripstone_block []
setblock ~8 ~9 ~1 copper_block []
setblock ~8 ~10 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~8 ~0 lantern []
fill ~-3 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 iron_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 string 14
replaceitem block ~-4 ~1 ~5 slot.container 1 spider_eye 11
replaceitem block ~-4 ~1 ~5 slot.container 2 arrow 22
replaceitem block ~-4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 4 copper_ingot 16
replaceitem block ~-4 ~1 ~5 slot.container 5 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 9 coal 20
replaceitem block ~-4 ~1 ~5 slot.container 10 diamond 7
replaceitem block ~-4 ~1 ~5 slot.container 11 cauldron 8
replaceitem block ~-4 ~1 ~5 slot.container 12 lava_bucket 1
replaceitem block ~-4 ~1 ~5 slot.container 13 iron_pickaxe 1
replaceitem block ~-4 ~1 ~5 slot.container 14 lantern 8
loot insert ~-4 ~1 ~5 loot "rsf/dripstone_caves"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 2 copper_ingot 19
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 4 bone 15
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 16
replaceitem block ~4 ~1 ~5 slot.container 9 coal 18
replaceitem block ~4 ~1 ~5 slot.container 10 diamond 5
replaceitem block ~4 ~1 ~5 slot.container 11 cauldron 6
replaceitem block ~4 ~1 ~5 slot.container 12 lava_bucket 1
replaceitem block ~4 ~1 ~5 slot.container 13 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 14 lantern 6
loot insert ~4 ~1 ~5 loot "rsf/dripstone_caves"
loot insert ~4 ~1 ~5 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon witch ~0 ~-2 ~0
