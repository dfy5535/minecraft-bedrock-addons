# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3244/4224 | 主题内编号: b044/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·双子祭台勇士角斗场 (dripstone_caves_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 dripstone_block [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 dripstone_block [] replace water
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 polished_deepslate []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 tuff []
setblock ~0 ~0 ~0 copper_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 deepslate_bricks []
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~4 slot.container 0 copper_ingot 21
replaceitem block ~4 ~-2 ~4 slot.container 1 rotten_flesh 18
replaceitem block ~4 ~-2 ~4 slot.container 2 bone 17
replaceitem block ~4 ~-2 ~4 slot.container 3 gunpowder 10
replaceitem block ~4 ~-2 ~4 slot.container 4 string 11
replaceitem block ~4 ~-2 ~4 slot.container 5 spider_eye 8
replaceitem block ~4 ~-2 ~4 slot.container 9 cauldron 8
replaceitem block ~4 ~-2 ~4 slot.container 10 lava_bucket 1
replaceitem block ~4 ~-2 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~4 ~-2 ~4 slot.container 12 lantern 8
replaceitem block ~4 ~-2 ~4 slot.container 13 pointed_dripstone 15
replaceitem block ~4 ~-2 ~4 slot.container 14 dripstone_block 16
loot insert ~4 ~-2 ~4 loot "rsf/dripstone_caves"
loot insert ~4 ~-2 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~8 ~6 dripstone_block []
fill ~2 ~1 ~-6 ~6 ~8 ~6 dripstone_block []
fill ~-5 ~1 ~-5 ~-3 ~7 ~5 air []
fill ~3 ~1 ~-5 ~5 ~7 ~5 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 deepslate_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-6 ~-6 ~9 ~-6 cobbled_deepslate []
setblock ~-6 ~10 ~-6 lantern []
fill ~-6 ~7 ~6 ~-6 ~9 ~6 cobbled_deepslate []
setblock ~-6 ~10 ~6 lantern []
fill ~6 ~7 ~-6 ~6 ~9 ~-6 cobbled_deepslate []
setblock ~6 ~10 ~-6 lantern []
fill ~6 ~7 ~6 ~6 ~9 ~6 cobbled_deepslate []
setblock ~6 ~10 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 deepslate_brick_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~9 ~0 ~-3 ~9 ~4 ~-3 dripstone_block []
setblock ~9 ~5 ~-3 copper_block []
setblock ~9 ~6 ~-3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 string 14
replaceitem block ~-5 ~1 ~5 slot.container 1 spider_eye 11
replaceitem block ~-5 ~1 ~5 slot.container 2 arrow 22
replaceitem block ~-5 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~5 slot.container 4 copper_ingot 16
replaceitem block ~-5 ~1 ~5 slot.container 5 rotten_flesh 13
replaceitem block ~-5 ~1 ~5 slot.container 9 iron_ingot 13
replaceitem block ~-5 ~1 ~5 slot.container 10 gold_ingot 10
replaceitem block ~-5 ~1 ~5 slot.container 11 coal 21
replaceitem block ~-5 ~1 ~5 slot.container 12 diamond 8
replaceitem block ~-5 ~1 ~5 slot.container 13 cauldron 2
replaceitem block ~-5 ~1 ~5 slot.container 14 lava_bucket 1
loot insert ~-5 ~1 ~5 loot "rsf/dripstone_caves"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 arrow 17
replaceitem block ~5 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~5 ~1 ~5 slot.container 2 copper_ingot 19
replaceitem block ~5 ~1 ~5 slot.container 3 rotten_flesh 16
replaceitem block ~5 ~1 ~5 slot.container 4 bone 15
replaceitem block ~5 ~1 ~5 slot.container 5 gunpowder 16
replaceitem block ~5 ~1 ~5 slot.container 9 iron_ingot 11
replaceitem block ~5 ~1 ~5 slot.container 10 gold_ingot 8
replaceitem block ~5 ~1 ~5 slot.container 11 coal 19
replaceitem block ~5 ~1 ~5 slot.container 12 diamond 6
replaceitem block ~5 ~1 ~5 slot.container 13 cauldron 7
replaceitem block ~5 ~1 ~5 slot.container 14 lava_bucket 1
loot insert ~5 ~1 ~5 loot "rsf/dripstone_caves"
loot insert ~5 ~1 ~5 loot "chests/abandoned_mineshaft"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
