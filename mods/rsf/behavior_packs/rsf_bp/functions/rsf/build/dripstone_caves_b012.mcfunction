# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3212/4224 | 主题内编号: b012/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·双子暗门地底宝库 (dripstone_caves_dungeon_twin_vault)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 dripstone_block [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 dripstone_block [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 tuff []
setblock ~0 ~0 ~0 copper_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 deepslate_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 copper_ingot 21
replaceitem block ~4 ~-3 ~3 slot.container 1 rotten_flesh 18
replaceitem block ~4 ~-3 ~3 slot.container 2 bone 17
replaceitem block ~4 ~-3 ~3 slot.container 3 gunpowder 10
replaceitem block ~4 ~-3 ~3 slot.container 4 string 11
replaceitem block ~4 ~-3 ~3 slot.container 5 spider_eye 8
replaceitem block ~4 ~-3 ~3 slot.container 9 pointed_dripstone 14
replaceitem block ~4 ~-3 ~3 slot.container 10 dripstone_block 15
replaceitem block ~4 ~-3 ~3 slot.container 11 iron_ingot 14
replaceitem block ~4 ~-3 ~3 slot.container 12 gold_ingot 11
replaceitem block ~4 ~-3 ~3 slot.container 13 coal 22
replaceitem block ~4 ~-3 ~3 slot.container 14 diamond 2
loot insert ~4 ~-3 ~3 loot "rsf/dripstone_caves"
loot insert ~4 ~-3 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 dripstone_block []
fill ~2 ~1 ~-5 ~6 ~8 ~5 dripstone_block []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 deepslate_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-6 ~-7 ~8 ~6 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-6 ~7 ~8 ~6 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~5 ~9 ~5 deepslate_brick_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 deepslate_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 cobbled_deepslate []
fill ~-7 ~0 ~2 ~-7 ~6 ~2 cobbled_deepslate []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 cobbled_deepslate []
fill ~7 ~0 ~2 ~7 ~6 ~2 cobbled_deepslate []

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
replaceitem block ~-5 ~1 ~4 slot.container 0 string 14
replaceitem block ~-5 ~1 ~4 slot.container 1 spider_eye 11
replaceitem block ~-5 ~1 ~4 slot.container 2 arrow 22
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 4 copper_ingot 16
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 13
replaceitem block ~-5 ~1 ~4 slot.container 9 cauldron 8
replaceitem block ~-5 ~1 ~4 slot.container 10 lava_bucket 1
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~-5 ~1 ~4 slot.container 12 lantern 8
replaceitem block ~-5 ~1 ~4 slot.container 13 pointed_dripstone 15
replaceitem block ~-5 ~1 ~4 slot.container 14 dripstone_block 16
loot insert ~-5 ~1 ~4 loot "rsf/dripstone_caves"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 arrow 17
replaceitem block ~5 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~5 ~1 ~4 slot.container 2 copper_ingot 19
replaceitem block ~5 ~1 ~4 slot.container 3 rotten_flesh 16
replaceitem block ~5 ~1 ~4 slot.container 4 bone 15
replaceitem block ~5 ~1 ~4 slot.container 5 gunpowder 16
replaceitem block ~5 ~1 ~4 slot.container 9 cauldron 6
replaceitem block ~5 ~1 ~4 slot.container 10 lava_bucket 1
replaceitem block ~5 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~5 ~1 ~4 slot.container 12 lantern 6
replaceitem block ~5 ~1 ~4 slot.container 13 pointed_dripstone 13
replaceitem block ~5 ~1 ~4 slot.container 14 dripstone_block 14
loot insert ~5 ~1 ~4 loot "rsf/dripstone_caves"
loot insert ~5 ~1 ~4 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon witch ~0 ~-3 ~0
