# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3235/4224 | 主题内编号: b035/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·巨石垒砌古战石冢 (dripstone_caves_obelisk_cairn_mound)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 5格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 deepslate_tiles [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 deepslate_tiles [] replace water
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_tile_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 deepslate_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 deepslate_tiles []
fill ~-3 ~-6 ~-1 ~3 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 lantern []
setblock ~2 ~-6 ~0 lantern []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 rotten_flesh 18
replaceitem block ~0 ~-4 ~3 slot.container 1 bone 17
replaceitem block ~0 ~-4 ~3 slot.container 2 gunpowder 10
replaceitem block ~0 ~-4 ~3 slot.container 3 string 11
replaceitem block ~0 ~-4 ~3 slot.container 4 spider_eye 8
replaceitem block ~0 ~-4 ~3 slot.container 5 arrow 19
replaceitem block ~0 ~-4 ~3 slot.container 9 lava_bucket 1
replaceitem block ~0 ~-4 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~0 ~-4 ~3 slot.container 11 lantern 8
replaceitem block ~0 ~-4 ~3 slot.container 12 pointed_dripstone 15
replaceitem block ~0 ~-4 ~3 slot.container 13 dripstone_block 16
replaceitem block ~0 ~-4 ~3 slot.container 14 iron_ingot 15
loot insert ~0 ~-4 ~3 loot "rsf/dripstone_caves"
loot insert ~0 ~-4 ~3 loot "chests/abandoned_mineshaft"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 rotten_flesh 16
replaceitem block ~0 ~-4 ~-3 slot.container 1 bone 15
replaceitem block ~0 ~-4 ~-3 slot.container 2 gunpowder 16
replaceitem block ~0 ~-4 ~-3 slot.container 3 string 17
replaceitem block ~0 ~-4 ~-3 slot.container 4 spider_eye 6
replaceitem block ~0 ~-4 ~-3 slot.container 5 arrow 17
replaceitem block ~0 ~-4 ~-3 slot.container 9 lava_bucket 1
replaceitem block ~0 ~-4 ~-3 slot.container 10 iron_pickaxe 1
replaceitem block ~0 ~-4 ~-3 slot.container 11 lantern 7
replaceitem block ~0 ~-4 ~-3 slot.container 12 pointed_dripstone 14
replaceitem block ~0 ~-4 ~-3 slot.container 13 dripstone_block 15
replaceitem block ~0 ~-4 ~-3 slot.container 14 iron_ingot 14
loot insert ~0 ~-4 ~-3 loot "rsf/dripstone_caves"
loot insert ~0 ~-4 ~-3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 deepslate_tiles []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 air []
fill ~4 ~1 ~5 ~4 ~9 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~8 ~-4 chiseled_deepslate []
fill ~3 ~1 ~-4 ~3 ~8 ~-4 chiseled_deepslate []
fill ~-3 ~1 ~4 ~-3 ~8 ~4 chiseled_deepslate []
fill ~3 ~1 ~4 ~3 ~8 ~4 chiseled_deepslate []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~9 ~-5 ~4 ~9 ~5 dripstone_block []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 dripstone_block []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 gold_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 chiseled_deepslate []
setblock ~0 ~4 ~-7 copper_block []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 chiseled_deepslate []
setblock ~0 ~4 ~7 copper_block []
setblock ~0 ~5 ~7 lantern []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 chiseled_deepslate []
setblock ~-6 ~4 ~0 copper_block []
setblock ~-6 ~5 ~0 lantern []
fill ~6 ~0 ~0 ~6 ~3 ~0 chiseled_deepslate []
setblock ~6 ~4 ~0 copper_block []
setblock ~6 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~7 ~0 ~-2 ~7 ~5 ~-2 dripstone_block []
setblock ~7 ~6 ~-2 copper_block []
setblock ~7 ~7 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 gunpowder 13
replaceitem block ~3 ~1 ~4 slot.container 1 string 14
replaceitem block ~3 ~1 ~4 slot.container 2 spider_eye 11
replaceitem block ~3 ~1 ~4 slot.container 3 arrow 22
replaceitem block ~3 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 5 copper_ingot 16
replaceitem block ~3 ~1 ~4 slot.container 9 diamond 3
replaceitem block ~3 ~1 ~4 slot.container 10 cauldron 4
replaceitem block ~3 ~1 ~4 slot.container 11 lava_bucket 1
replaceitem block ~3 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 13 lantern 11
replaceitem block ~3 ~1 ~4 slot.container 14 pointed_dripstone 18
loot insert ~3 ~1 ~4 loot "rsf/dripstone_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
