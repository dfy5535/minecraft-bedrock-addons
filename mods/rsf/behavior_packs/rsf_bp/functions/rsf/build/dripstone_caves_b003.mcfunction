# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3203/4224 | 主题内编号: b003/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·环柱巨石方尖祭坛 (dripstone_caves_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x15 | 地上高度 10格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_tiles [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_tiles [] replace water
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_tile_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 dripstone_block []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 dripstone_block []
setblock ~0 ~-6 ~0 copper_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 spider_eye 8
replaceitem block ~0 ~-3 ~-4 slot.container 1 arrow 19
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 copper_ingot 21
replaceitem block ~0 ~-3 ~-4 slot.container 4 rotten_flesh 18
replaceitem block ~0 ~-3 ~-4 slot.container 5 bone 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 diamond 2
replaceitem block ~0 ~-3 ~-4 slot.container 10 cauldron 3
replaceitem block ~0 ~-3 ~-4 slot.container 11 lava_bucket 1
replaceitem block ~0 ~-3 ~-4 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-3 ~-4 slot.container 13 lantern 10
replaceitem block ~0 ~-3 ~-4 slot.container 14 pointed_dripstone 17
loot insert ~0 ~-3 ~-4 loot "rsf/dripstone_caves"
loot insert ~0 ~-3 ~-4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~10 ~-6 ~5 ~10 ~6 dripstone_block []
fill ~-5 ~1 ~-6 ~-5 ~9 ~-6 chiseled_deepslate []
fill ~-5 ~1 ~6 ~-5 ~9 ~6 chiseled_deepslate []
fill ~-3 ~1 ~-6 ~-3 ~9 ~-6 chiseled_deepslate []
fill ~-3 ~1 ~6 ~-3 ~9 ~6 chiseled_deepslate []
fill ~-1 ~1 ~-6 ~-1 ~9 ~-6 chiseled_deepslate []
fill ~-1 ~1 ~6 ~-1 ~9 ~6 chiseled_deepslate []
fill ~1 ~1 ~-6 ~1 ~9 ~-6 chiseled_deepslate []
fill ~1 ~1 ~6 ~1 ~9 ~6 chiseled_deepslate []
fill ~3 ~1 ~-6 ~3 ~9 ~-6 chiseled_deepslate []
fill ~3 ~1 ~6 ~3 ~9 ~6 chiseled_deepslate []
fill ~5 ~1 ~-6 ~5 ~9 ~-6 chiseled_deepslate []
fill ~5 ~1 ~6 ~5 ~9 ~6 chiseled_deepslate []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 chiseled_deepslate []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 chiseled_deepslate []
fill ~-5 ~1 ~-2 ~-5 ~9 ~-2 chiseled_deepslate []
fill ~5 ~1 ~-2 ~5 ~9 ~-2 chiseled_deepslate []
fill ~-5 ~1 ~0 ~-5 ~9 ~0 chiseled_deepslate []
fill ~5 ~1 ~0 ~5 ~9 ~0 chiseled_deepslate []
fill ~-5 ~1 ~2 ~-5 ~9 ~2 chiseled_deepslate []
fill ~5 ~1 ~2 ~5 ~9 ~2 chiseled_deepslate []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 chiseled_deepslate []
fill ~5 ~1 ~4 ~5 ~9 ~4 chiseled_deepslate []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 dripstone_block []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 deepslate_tiles []
fill ~0 ~16 ~0 ~0 ~18 ~0 gold_block []
setblock ~0 ~19 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 chiseled_deepslate []
setblock ~0 ~4 ~-8 copper_block []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 chiseled_deepslate []
setblock ~0 ~4 ~8 copper_block []
setblock ~0 ~5 ~8 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 chiseled_deepslate []
setblock ~-7 ~4 ~0 copper_block []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 chiseled_deepslate []
setblock ~7 ~4 ~0 copper_block []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x9x6) ---
fill ~8 ~0 ~-2 ~8 ~8 ~-2 dripstone_block []
setblock ~8 ~9 ~-2 copper_block []
setblock ~8 ~10 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 1 string 14
replaceitem block ~4 ~1 ~5 slot.container 2 spider_eye 11
replaceitem block ~4 ~1 ~5 slot.container 3 arrow 22
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 copper_ingot 16
replaceitem block ~4 ~1 ~5 slot.container 9 lantern 10
replaceitem block ~4 ~1 ~5 slot.container 10 pointed_dripstone 17
replaceitem block ~4 ~1 ~5 slot.container 11 dripstone_block 18
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 13 gold_ingot 7
replaceitem block ~4 ~1 ~5 slot.container 14 coal 18
loot insert ~4 ~1 ~5 loot "rsf/dripstone_caves"
summon witch ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
