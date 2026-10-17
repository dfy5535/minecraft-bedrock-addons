# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3283/4224 | 主题内编号: b083/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·铁砧锻造与模具工坊 (dripstone_caves_mine_smithing_foundry)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_tiles [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_tiles [] replace water
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_tile_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 deepslate_tiles []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 1 copper_ingot 21
replaceitem block ~3 ~-3 ~4 slot.container 2 rotten_flesh 18
replaceitem block ~3 ~-3 ~4 slot.container 3 bone 17
replaceitem block ~3 ~-3 ~4 slot.container 4 gunpowder 10
replaceitem block ~3 ~-3 ~4 slot.container 5 string 11
replaceitem block ~3 ~-3 ~4 slot.container 9 diamond 8
replaceitem block ~3 ~-3 ~4 slot.container 10 cauldron 2
replaceitem block ~3 ~-3 ~4 slot.container 11 lava_bucket 1
replaceitem block ~3 ~-3 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~3 ~-3 ~4 slot.container 13 lantern 9
replaceitem block ~3 ~-3 ~4 slot.container 14 pointed_dripstone 16
loot insert ~3 ~-3 ~4 loot "rsf/dripstone_caves"
loot insert ~3 ~-3 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~7 ~6 deepslate_tiles []
fill ~-5 ~1 ~0 ~5 ~6 ~6 dripstone_block []
fill ~-4 ~1 ~-5 ~-1 ~6 ~5 air []
fill ~-1 ~1 ~1 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-7 ~-6 ~8 ~7 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-7 ~6 ~8 ~7 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~4 ~9 ~6 deepslate_tile_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 dripstone_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~6 ~-2 chiseled_deepslate []
fill ~-6 ~0 ~2 ~-6 ~6 ~2 chiseled_deepslate []
fill ~6 ~0 ~-2 ~6 ~6 ~-2 chiseled_deepslate []
fill ~6 ~0 ~2 ~6 ~6 ~2 chiseled_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~8 ~0 ~0 ~8 ~8 ~0 dripstone_block []
setblock ~8 ~9 ~0 copper_block []
setblock ~8 ~10 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 1 string 14
replaceitem block ~4 ~1 ~5 slot.container 2 spider_eye 11
replaceitem block ~4 ~1 ~5 slot.container 3 arrow 22
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 copper_ingot 16
replaceitem block ~4 ~1 ~5 slot.container 9 lantern 6
replaceitem block ~4 ~1 ~5 slot.container 10 pointed_dripstone 13
replaceitem block ~4 ~1 ~5 slot.container 11 dripstone_block 14
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 13 gold_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 14 coal 21
loot insert ~4 ~1 ~5 loot "rsf/dripstone_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
