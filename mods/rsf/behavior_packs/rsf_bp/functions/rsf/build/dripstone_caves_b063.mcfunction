# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3263/4224 | 主题内编号: b063/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·方尖碑镇压古墓穴 (dripstone_caves_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 5格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 deepslate_tiles [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 deepslate_tiles [] replace water
fill ~-5 ~1 ~-6 ~5 ~12 ~6 air []
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
replaceitem block ~0 ~-4 ~3 slot.container 0 spider_eye 8
replaceitem block ~0 ~-4 ~3 slot.container 1 arrow 19
replaceitem block ~0 ~-4 ~3 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-4 ~3 slot.container 3 copper_ingot 21
replaceitem block ~0 ~-4 ~3 slot.container 4 rotten_flesh 18
replaceitem block ~0 ~-4 ~3 slot.container 5 bone 17
replaceitem block ~0 ~-4 ~3 slot.container 9 dripstone_block 12
replaceitem block ~0 ~-4 ~3 slot.container 10 iron_ingot 11
replaceitem block ~0 ~-4 ~3 slot.container 11 gold_ingot 8
replaceitem block ~0 ~-4 ~3 slot.container 12 coal 19
replaceitem block ~0 ~-4 ~3 slot.container 13 diamond 6
replaceitem block ~0 ~-4 ~3 slot.container 14 cauldron 7
loot insert ~0 ~-4 ~3 loot "rsf/dripstone_caves"
loot insert ~0 ~-4 ~3 loot "chests/abandoned_mineshaft"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 spider_eye 6
replaceitem block ~0 ~-4 ~-3 slot.container 1 arrow 17
replaceitem block ~0 ~-4 ~-3 slot.container 2 ender_pearl 4
replaceitem block ~0 ~-4 ~-3 slot.container 3 copper_ingot 19
replaceitem block ~0 ~-4 ~-3 slot.container 4 rotten_flesh 16
replaceitem block ~0 ~-4 ~-3 slot.container 5 bone 15
replaceitem block ~0 ~-4 ~-3 slot.container 9 dripstone_block 18
replaceitem block ~0 ~-4 ~-3 slot.container 10 iron_ingot 10
replaceitem block ~0 ~-4 ~-3 slot.container 11 gold_ingot 7
replaceitem block ~0 ~-4 ~-3 slot.container 12 coal 18
replaceitem block ~0 ~-4 ~-3 slot.container 13 diamond 5
replaceitem block ~0 ~-4 ~-3 slot.container 14 cauldron 6
loot insert ~0 ~-4 ~-3 loot "rsf/dripstone_caves"
loot insert ~0 ~-4 ~-3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~10 ~5 deepslate_tiles []
fill ~-3 ~1 ~-4 ~3 ~9 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~11 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~11 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~11 ~5 air []
fill ~4 ~1 ~5 ~4 ~11 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~10 ~-4 chiseled_deepslate []
fill ~3 ~1 ~-4 ~3 ~10 ~-4 chiseled_deepslate []
fill ~-3 ~1 ~4 ~-3 ~10 ~4 chiseled_deepslate []
fill ~3 ~1 ~4 ~3 ~10 ~4 chiseled_deepslate []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 dripstone_block []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 deepslate_tiles []
fill ~0 ~16 ~0 ~0 ~18 ~0 gold_block []
setblock ~0 ~19 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~9 ~-2 chiseled_deepslate []
fill ~-5 ~0 ~2 ~-5 ~9 ~2 chiseled_deepslate []
fill ~5 ~0 ~-2 ~5 ~9 ~-2 chiseled_deepslate []
fill ~5 ~0 ~2 ~5 ~9 ~2 chiseled_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~7 ~0 ~1 ~7 ~8 ~1 dripstone_block []
setblock ~7 ~9 ~1 copper_block []
setblock ~7 ~10 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 1 copper_ingot 16
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 13
replaceitem block ~3 ~1 ~4 slot.container 3 bone 12
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 13
replaceitem block ~3 ~1 ~4 slot.container 5 string 14
replaceitem block ~3 ~1 ~4 slot.container 9 lantern 7
replaceitem block ~3 ~1 ~4 slot.container 10 pointed_dripstone 14
replaceitem block ~3 ~1 ~4 slot.container 11 dripstone_block 15
replaceitem block ~3 ~1 ~4 slot.container 12 iron_ingot 14
replaceitem block ~3 ~1 ~4 slot.container 13 gold_ingot 11
replaceitem block ~3 ~1 ~4 slot.container 14 coal 22
loot insert ~3 ~1 ~4 loot "rsf/dripstone_caves"
summon witch ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-4 ~0
