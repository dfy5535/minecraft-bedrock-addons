# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3279/4224 | 主题内编号: b079/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·四角结界守护柱阵 (dripstone_caves_totem_citadel_ward)
# 建筑构造: 主体[fortress_citadel] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_tiles [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_tiles [] replace water
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_tile_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 dripstone_block []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 gunpowder 10
replaceitem block ~3 ~-3 ~4 slot.container 1 string 11
replaceitem block ~3 ~-3 ~4 slot.container 2 spider_eye 8
replaceitem block ~3 ~-3 ~4 slot.container 3 arrow 19
replaceitem block ~3 ~-3 ~4 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 5 copper_ingot 21
replaceitem block ~3 ~-3 ~4 slot.container 9 dripstone_block 18
replaceitem block ~3 ~-3 ~4 slot.container 10 iron_ingot 10
replaceitem block ~3 ~-3 ~4 slot.container 11 gold_ingot 7
replaceitem block ~3 ~-3 ~4 slot.container 12 coal 18
replaceitem block ~3 ~-3 ~4 slot.container 13 diamond 5
replaceitem block ~3 ~-3 ~4 slot.container 14 cauldron 6
loot insert ~3 ~-3 ~4 loot "rsf/dripstone_caves"
loot insert ~3 ~-3 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~8 ~6 deepslate_tiles []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~10 ~-5 dripstone_block []
setblock ~-5 ~11 ~-6 lantern []
fill ~-5 ~1 ~5 ~-4 ~10 ~6 dripstone_block []
setblock ~-5 ~11 ~5 lantern []
fill ~4 ~1 ~-6 ~5 ~10 ~-5 dripstone_block []
setblock ~4 ~11 ~-6 lantern []
fill ~4 ~1 ~5 ~5 ~10 ~6 dripstone_block []
setblock ~4 ~11 ~5 lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~8 ~-6 ~-5 ~10 ~-6 chiseled_deepslate []
setblock ~-5 ~11 ~-6 lantern []
fill ~-5 ~8 ~6 ~-5 ~10 ~6 chiseled_deepslate []
setblock ~-5 ~11 ~6 lantern []
fill ~5 ~8 ~-6 ~5 ~10 ~-6 chiseled_deepslate []
setblock ~5 ~11 ~-6 lantern []
fill ~5 ~8 ~6 ~5 ~10 ~6 chiseled_deepslate []
setblock ~5 ~11 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~9 ~2 deepslate_tiles []
fill ~7 ~1 ~-1 ~8 ~8 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~10 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~8 ~0 ~2 ~8 ~4 ~2 dripstone_block []
setblock ~8 ~5 ~2 copper_block []
setblock ~8 ~6 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 1 copper_ingot 16
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 3 bone 12
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 5 string 14
replaceitem block ~4 ~1 ~5 slot.container 9 lava_bucket 1
replaceitem block ~4 ~1 ~5 slot.container 10 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 11 lantern 11
replaceitem block ~4 ~1 ~5 slot.container 12 pointed_dripstone 18
replaceitem block ~4 ~1 ~5 slot.container 13 dripstone_block 12
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 11
loot insert ~4 ~1 ~5 loot "rsf/dripstone_caves"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
