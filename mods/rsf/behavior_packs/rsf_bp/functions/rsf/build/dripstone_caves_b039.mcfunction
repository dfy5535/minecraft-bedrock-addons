# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3239/4224 | 主题内编号: b039/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·永恒圣火图腾方尖塔 (dripstone_caves_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 9x11 | 地上高度 11格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 deepslate_tiles [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 deepslate_tiles [] replace water
fill ~-4 ~1 ~-5 ~4 ~13 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 deepslate_tile_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 deepslate_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 deepslate_tiles []
fill ~-1 ~-5 ~-2 ~1 ~-1 ~2 air []
setblock ~-1 ~-5 ~0 blast_furnace []
setblock ~1 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~2 anvil []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~1 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-3 ~2 slot.container 0 gunpowder 10
replaceitem block ~1 ~-3 ~2 slot.container 1 string 11
replaceitem block ~1 ~-3 ~2 slot.container 2 spider_eye 8
replaceitem block ~1 ~-3 ~2 slot.container 3 arrow 19
replaceitem block ~1 ~-3 ~2 slot.container 4 ender_pearl 6
replaceitem block ~1 ~-3 ~2 slot.container 5 copper_ingot 21
replaceitem block ~1 ~-3 ~2 slot.container 9 gold_ingot 10
replaceitem block ~1 ~-3 ~2 slot.container 10 coal 21
replaceitem block ~1 ~-3 ~2 slot.container 11 diamond 8
replaceitem block ~1 ~-3 ~2 slot.container 12 cauldron 2
replaceitem block ~1 ~-3 ~2 slot.container 13 lava_bucket 1
replaceitem block ~1 ~-3 ~2 slot.container 14 iron_pickaxe 1
loot insert ~1 ~-3 ~2 loot "rsf/dripstone_caves"
loot insert ~1 ~-3 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~11 ~4 deepslate_tiles []
fill ~-2 ~1 ~-3 ~2 ~10 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~11 ~-4 chiseled_deepslate []
fill ~-3 ~1 ~4 ~-3 ~11 ~4 chiseled_deepslate []
fill ~3 ~1 ~-4 ~3 ~11 ~-4 chiseled_deepslate []
fill ~3 ~1 ~4 ~3 ~11 ~4 chiseled_deepslate []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 deepslate_tile_wall []
setblock ~3 ~2 ~0 deepslate_tile_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 dripstone_block []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 deepslate_tiles []
fill ~0 ~17 ~0 ~0 ~19 ~0 gold_block []
setblock ~0 ~20 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 chiseled_deepslate []
setblock ~0 ~4 ~-6 copper_block []
setblock ~0 ~5 ~-6 lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 chiseled_deepslate []
setblock ~0 ~4 ~6 copper_block []
setblock ~0 ~5 ~6 lantern []
fill ~-5 ~0 ~0 ~-5 ~3 ~0 chiseled_deepslate []
setblock ~-5 ~4 ~0 copper_block []
setblock ~-5 ~5 ~0 lantern []
fill ~5 ~0 ~0 ~5 ~3 ~0 chiseled_deepslate []
setblock ~5 ~4 ~0 copper_block []
setblock ~5 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~6 ~0 ~-1 ~6 ~4 ~-1 dripstone_block []
setblock ~6 ~5 ~-1 copper_block []
setblock ~6 ~6 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~2 ~1 ~3 slot.container 1 copper_ingot 16
replaceitem block ~2 ~1 ~3 slot.container 2 rotten_flesh 13
replaceitem block ~2 ~1 ~3 slot.container 3 bone 12
replaceitem block ~2 ~1 ~3 slot.container 4 gunpowder 13
replaceitem block ~2 ~1 ~3 slot.container 5 string 14
replaceitem block ~2 ~1 ~3 slot.container 9 lava_bucket 1
replaceitem block ~2 ~1 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~2 ~1 ~3 slot.container 11 lantern 6
replaceitem block ~2 ~1 ~3 slot.container 12 pointed_dripstone 13
replaceitem block ~2 ~1 ~3 slot.container 13 dripstone_block 14
replaceitem block ~2 ~1 ~3 slot.container 14 iron_ingot 13
loot insert ~2 ~1 ~3 loot "rsf/dripstone_caves"
summon witch ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
