# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3237/4224 | 主题内编号: b037/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·环廊聖柱纪念碑 (dripstone_caves_obelisk_rotunda_pillar)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 tuff []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 deepslate_tiles []
setblock ~0 ~0 ~0 raw_copper_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 cobbled_deepslate []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 raw_copper_block []
setblock ~0 ~-6 ~0 torch []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 spider_eye 8
replaceitem block ~3 ~-3 ~0 slot.container 1 arrow 19
replaceitem block ~3 ~-3 ~0 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-3 ~0 slot.container 3 copper_ingot 21
replaceitem block ~3 ~-3 ~0 slot.container 4 rotten_flesh 18
replaceitem block ~3 ~-3 ~0 slot.container 5 bone 17
replaceitem block ~3 ~-3 ~0 slot.container 9 lava_bucket 1
replaceitem block ~3 ~-3 ~0 slot.container 10 iron_pickaxe 1
replaceitem block ~3 ~-3 ~0 slot.container 11 lantern 9
replaceitem block ~3 ~-3 ~0 slot.container 12 pointed_dripstone 16
replaceitem block ~3 ~-3 ~0 slot.container 13 dripstone_block 17
replaceitem block ~3 ~-3 ~0 slot.container 14 iron_ingot 16
loot insert ~3 ~-3 ~0 loot "rsf/dripstone_caves"
loot insert ~3 ~-3 ~0 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 dripstone_block []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 polished_deepslate []
fill ~-5 ~1 ~6 ~-5 ~8 ~6 polished_deepslate []
fill ~-3 ~1 ~-6 ~-3 ~8 ~-6 polished_deepslate []
fill ~-3 ~1 ~6 ~-3 ~8 ~6 polished_deepslate []
fill ~-1 ~1 ~-6 ~-1 ~8 ~-6 polished_deepslate []
fill ~-1 ~1 ~6 ~-1 ~8 ~6 polished_deepslate []
fill ~1 ~1 ~-6 ~1 ~8 ~-6 polished_deepslate []
fill ~1 ~1 ~6 ~1 ~8 ~6 polished_deepslate []
fill ~3 ~1 ~-6 ~3 ~8 ~-6 polished_deepslate []
fill ~3 ~1 ~6 ~3 ~8 ~6 polished_deepslate []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 polished_deepslate []
fill ~5 ~1 ~6 ~5 ~8 ~6 polished_deepslate []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 polished_deepslate []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 polished_deepslate []
fill ~-5 ~1 ~-2 ~-5 ~8 ~-2 polished_deepslate []
fill ~5 ~1 ~-2 ~5 ~8 ~-2 polished_deepslate []
fill ~-5 ~1 ~0 ~-5 ~8 ~0 polished_deepslate []
fill ~5 ~1 ~0 ~5 ~8 ~0 polished_deepslate []
fill ~-5 ~1 ~2 ~-5 ~8 ~2 polished_deepslate []
fill ~5 ~1 ~2 ~5 ~8 ~2 polished_deepslate []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 polished_deepslate []
fill ~5 ~1 ~4 ~5 ~8 ~4 polished_deepslate []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~9 ~-6 ~-5 ~11 ~-6 polished_deepslate []
setblock ~-5 ~12 ~-6 torch []
fill ~-5 ~9 ~6 ~-5 ~11 ~6 polished_deepslate []
setblock ~-5 ~12 ~6 torch []
fill ~5 ~9 ~-6 ~5 ~11 ~-6 polished_deepslate []
setblock ~5 ~12 ~-6 torch []
fill ~5 ~9 ~6 ~5 ~11 ~6 polished_deepslate []
setblock ~5 ~12 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~5 ~-8 polished_deepslate []
setblock ~-7 ~6 ~-8 torch []
fill ~-7 ~0 ~8 ~-7 ~5 ~8 polished_deepslate []
setblock ~-7 ~6 ~8 torch []
fill ~7 ~0 ~-8 ~7 ~5 ~-8 polished_deepslate []
setblock ~7 ~6 ~-8 torch []
fill ~7 ~0 ~8 ~7 ~5 ~8 polished_deepslate []
setblock ~7 ~6 ~8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~8 ~0 ~2 ~8 ~7 ~2 dripstone_block []
setblock ~8 ~8 ~2 copper_block []
setblock ~8 ~9 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 copper_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 11
replaceitem block ~4 ~1 ~5 slot.container 1 arrow 22
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 copper_ingot 16
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 5 bone 12
replaceitem block ~4 ~1 ~5 slot.container 9 dripstone_block 15
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 12 coal 22
replaceitem block ~4 ~1 ~5 slot.container 13 diamond 2
replaceitem block ~4 ~1 ~5 slot.container 14 cauldron 3
loot insert ~4 ~1 ~5 loot "rsf/dripstone_caves"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
