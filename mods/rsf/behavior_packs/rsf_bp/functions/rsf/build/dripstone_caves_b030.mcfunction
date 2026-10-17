# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3230/4224 | 主题内编号: b030/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·双坡顶驻军卫戍塔 (dripstone_caves_tower_gabled_keep)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 cobbled_deepslate [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 cobbled_deepslate [] replace water
fill ~-5 ~1 ~-6 ~5 ~12 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobbled_deepslate_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 deepslate_tiles []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 cobbled_deepslate []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-4 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-4 ~3 campfire []
setblock ~2 ~-4 ~-3 campfire []
setblock ~2 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-2 ~3 slot.container 0 copper_ingot 21
replaceitem block ~2 ~-2 ~3 slot.container 1 rotten_flesh 18
replaceitem block ~2 ~-2 ~3 slot.container 2 bone 17
replaceitem block ~2 ~-2 ~3 slot.container 3 gunpowder 10
replaceitem block ~2 ~-2 ~3 slot.container 4 string 11
replaceitem block ~2 ~-2 ~3 slot.container 5 spider_eye 8
replaceitem block ~2 ~-2 ~3 slot.container 9 iron_ingot 15
replaceitem block ~2 ~-2 ~3 slot.container 10 gold_ingot 12
replaceitem block ~2 ~-2 ~3 slot.container 11 coal 16
replaceitem block ~2 ~-2 ~3 slot.container 12 diamond 3
replaceitem block ~2 ~-2 ~3 slot.container 13 cauldron 4
replaceitem block ~2 ~-2 ~3 slot.container 14 lava_bucket 1
loot insert ~2 ~-2 ~3 loot "rsf/dripstone_caves"
loot insert ~2 ~-2 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-4 ~1 ~-5 ~0 ~10 ~5 cobbled_deepslate []
fill ~-4 ~1 ~0 ~4 ~9 ~5 deepslate_tiles []
fill ~-3 ~1 ~-4 ~-1 ~9 ~4 air []
fill ~-1 ~1 ~1 ~3 ~8 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~11 ~-6 ~-5 ~11 ~6 cobbled_deepslate_stairs ["weirdo_direction"=0]
fill ~5 ~11 ~-6 ~5 ~11 ~6 cobbled_deepslate_stairs ["weirdo_direction"=1]
fill ~-4 ~12 ~-5 ~-4 ~12 ~5 cobbled_deepslate_stairs ["weirdo_direction"=0]
fill ~4 ~12 ~-5 ~4 ~12 ~5 cobbled_deepslate_stairs ["weirdo_direction"=1]
fill ~-3 ~12 ~-5 ~3 ~12 ~5 cobbled_deepslate_slab []
fill ~0 ~13 ~-6 ~0 ~13 ~6 dripstone_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~12 ~2 deepslate_tiles []
fill ~5 ~1 ~-1 ~6 ~11 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~13 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~7 ~0 ~-2 ~7 ~5 ~-2 dripstone_block []
setblock ~7 ~6 ~-2 copper_block []
setblock ~7 ~7 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 arrow 22
replaceitem block ~-3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 2 copper_ingot 16
replaceitem block ~-3 ~1 ~4 slot.container 3 rotten_flesh 13
replaceitem block ~-3 ~1 ~4 slot.container 4 bone 12
replaceitem block ~-3 ~1 ~4 slot.container 5 gunpowder 13
replaceitem block ~-3 ~1 ~4 slot.container 9 pointed_dripstone 15
replaceitem block ~-3 ~1 ~4 slot.container 10 dripstone_block 16
replaceitem block ~-3 ~1 ~4 slot.container 11 iron_ingot 15
replaceitem block ~-3 ~1 ~4 slot.container 12 gold_ingot 12
replaceitem block ~-3 ~1 ~4 slot.container 13 coal 16
replaceitem block ~-3 ~1 ~4 slot.container 14 diamond 3
loot insert ~-3 ~1 ~4 loot "rsf/dripstone_caves"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 copper_ingot 19
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 2 bone 15
replaceitem block ~3 ~1 ~4 slot.container 3 gunpowder 16
replaceitem block ~3 ~1 ~4 slot.container 4 string 17
replaceitem block ~3 ~1 ~4 slot.container 5 spider_eye 6
replaceitem block ~3 ~1 ~4 slot.container 9 pointed_dripstone 13
replaceitem block ~3 ~1 ~4 slot.container 10 dripstone_block 14
replaceitem block ~3 ~1 ~4 slot.container 11 iron_ingot 13
replaceitem block ~3 ~1 ~4 slot.container 12 gold_ingot 10
replaceitem block ~3 ~1 ~4 slot.container 13 coal 21
replaceitem block ~3 ~1 ~4 slot.container 14 diamond 8
loot insert ~3 ~1 ~4 loot "rsf/dripstone_caves"
loot insert ~3 ~1 ~4 loot "chests/abandoned_mineshaft"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon witch ~0 ~-2 ~0
