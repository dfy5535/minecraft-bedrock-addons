# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3207/4224 | 主题内编号: b007/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·八角星芒图腾祭坛 (dripstone_caves_altar_octagonal_star)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_tiles [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_tiles [] replace water
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_tile_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 dripstone_block []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 gold_block []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~0 slot.container 1 copper_ingot 21
replaceitem block ~3 ~-3 ~0 slot.container 2 rotten_flesh 18
replaceitem block ~3 ~-3 ~0 slot.container 3 bone 17
replaceitem block ~3 ~-3 ~0 slot.container 4 gunpowder 10
replaceitem block ~3 ~-3 ~0 slot.container 5 string 11
replaceitem block ~3 ~-3 ~0 slot.container 9 lava_bucket 1
replaceitem block ~3 ~-3 ~0 slot.container 10 iron_pickaxe 1
replaceitem block ~3 ~-3 ~0 slot.container 11 lantern 7
replaceitem block ~3 ~-3 ~0 slot.container 12 pointed_dripstone 14
replaceitem block ~3 ~-3 ~0 slot.container 13 dripstone_block 15
replaceitem block ~3 ~-3 ~0 slot.container 14 iron_ingot 14
loot insert ~3 ~-3 ~0 loot "rsf/dripstone_caves"
loot insert ~3 ~-3 ~0 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-6 ~5 ~9 ~6 deepslate_tiles []
fill ~-4 ~1 ~-5 ~4 ~8 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~10 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~10 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~10 ~6 air []
fill ~5 ~1 ~6 ~5 ~10 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 chiseled_deepslate []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 chiseled_deepslate []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 chiseled_deepslate []
fill ~4 ~1 ~5 ~4 ~9 ~5 chiseled_deepslate []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 dripstone_block []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 deepslate_tiles []
fill ~0 ~15 ~0 ~0 ~17 ~0 gold_block []
setblock ~0 ~18 ~0 lantern []

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

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~8 ~0 ~2 ~8 ~7 ~2 dripstone_block []
setblock ~8 ~8 ~2 copper_block []
setblock ~8 ~9 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 1 copper_ingot 16
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 3 bone 12
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 5 string 14
replaceitem block ~4 ~1 ~5 slot.container 9 dripstone_block 13
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 12 coal 20
replaceitem block ~4 ~1 ~5 slot.container 13 diamond 7
replaceitem block ~4 ~1 ~5 slot.container 14 cauldron 8
loot insert ~4 ~1 ~5 loot "rsf/dripstone_caves"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
