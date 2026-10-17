# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3303/4224 | 主题内编号: b103/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·十字全向防御方堡 (dripstone_caves_bunker_cross_redoubt)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_foundry]
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
replaceitem block ~3 ~-3 ~4 slot.container 9 gold_ingot 8
replaceitem block ~3 ~-3 ~4 slot.container 10 coal 19
replaceitem block ~3 ~-3 ~4 slot.container 11 diamond 6
replaceitem block ~3 ~-3 ~4 slot.container 12 cauldron 7
replaceitem block ~3 ~-3 ~4 slot.container 13 lava_bucket 1
replaceitem block ~3 ~-3 ~4 slot.container 14 iron_pickaxe 1
loot insert ~3 ~-3 ~4 loot "rsf/dripstone_caves"
loot insert ~3 ~-3 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~8 ~6 deepslate_tiles []
fill ~-5 ~1 ~-2 ~5 ~8 ~2 deepslate_tiles []
fill ~-1 ~1 ~-5 ~1 ~7 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~7 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 deepslate_tile_wall []
setblock ~5 ~2 ~0 deepslate_tile_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 dripstone_block []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 deepslate_tile_wall []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 air []
setblock ~-5 ~9 ~-6 chiseled_deepslate []
setblock ~-5 ~10 ~-6 lantern []
setblock ~-5 ~9 ~6 chiseled_deepslate []
setblock ~-5 ~10 ~6 lantern []
setblock ~5 ~9 ~-6 chiseled_deepslate []
setblock ~5 ~10 ~-6 lantern []
setblock ~5 ~9 ~6 chiseled_deepslate []
setblock ~5 ~10 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~5 ~-8 chiseled_deepslate []
setblock ~-7 ~6 ~-8 lantern []
fill ~-7 ~0 ~8 ~-7 ~5 ~8 chiseled_deepslate []
setblock ~-7 ~6 ~8 lantern []
fill ~7 ~0 ~-8 ~7 ~5 ~-8 chiseled_deepslate []
setblock ~7 ~6 ~-8 lantern []
fill ~7 ~0 ~8 ~7 ~5 ~8 chiseled_deepslate []
setblock ~7 ~6 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~8 ~0 ~2 ~8 ~8 ~2 dripstone_block []
setblock ~8 ~9 ~2 copper_block []
setblock ~8 ~10 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 blast_furnace []
setblock ~-3 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 1 copper_ingot 16
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 3 bone 12
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 5 string 14
replaceitem block ~4 ~1 ~5 slot.container 9 lantern 12
replaceitem block ~4 ~1 ~5 slot.container 10 pointed_dripstone 12
replaceitem block ~4 ~1 ~5 slot.container 11 dripstone_block 13
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 13 gold_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 14 coal 20
loot insert ~4 ~1 ~5 loot "rsf/dripstone_caves"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
