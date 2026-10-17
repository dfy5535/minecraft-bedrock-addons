# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3311/4224 | 主题内编号: b111/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·地下禁忌书库与炼药室 (dripstone_caves_arcane_sunken_archive)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 5格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 deepslate_tiles [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 deepslate_tiles [] replace water
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_tile_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 deepslate_tiles []
fill ~-4 ~-6 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-6 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-6 ~0 lantern []
setblock ~3 ~-6 ~0 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 spider_eye 8
replaceitem block ~0 ~-4 ~4 slot.container 1 arrow 19
replaceitem block ~0 ~-4 ~4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 3 copper_ingot 21
replaceitem block ~0 ~-4 ~4 slot.container 4 rotten_flesh 18
replaceitem block ~0 ~-4 ~4 slot.container 5 bone 17
replaceitem block ~0 ~-4 ~4 slot.container 9 diamond 8
replaceitem block ~0 ~-4 ~4 slot.container 10 cauldron 2
replaceitem block ~0 ~-4 ~4 slot.container 11 lava_bucket 1
replaceitem block ~0 ~-4 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-4 ~4 slot.container 13 lantern 9
replaceitem block ~0 ~-4 ~4 slot.container 14 pointed_dripstone 16
loot insert ~0 ~-4 ~4 loot "rsf/dripstone_caves"
loot insert ~0 ~-4 ~4 loot "chests/abandoned_mineshaft"
setblock ~0 ~-4 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-4 slot.container 0 spider_eye 6
replaceitem block ~0 ~-4 ~-4 slot.container 1 arrow 17
replaceitem block ~0 ~-4 ~-4 slot.container 2 ender_pearl 4
replaceitem block ~0 ~-4 ~-4 slot.container 3 copper_ingot 19
replaceitem block ~0 ~-4 ~-4 slot.container 4 rotten_flesh 16
replaceitem block ~0 ~-4 ~-4 slot.container 5 bone 15
replaceitem block ~0 ~-4 ~-4 slot.container 9 diamond 7
replaceitem block ~0 ~-4 ~-4 slot.container 10 cauldron 8
replaceitem block ~0 ~-4 ~-4 slot.container 11 lava_bucket 1
replaceitem block ~0 ~-4 ~-4 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-4 ~-4 slot.container 13 lantern 8
replaceitem block ~0 ~-4 ~-4 slot.container 14 pointed_dripstone 15
loot insert ~0 ~-4 ~-4 loot "rsf/dripstone_caves"
loot insert ~0 ~-4 ~-4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 deepslate_tiles []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 dripstone_block []
fill ~0 ~1 ~-6 ~0 ~2 ~6 dripstone_block []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 dripstone_block []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 dripstone_block []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 gold_block []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 deepslate_tile_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x9x4) ---
fill ~8 ~0 ~-2 ~8 ~6 ~-2 dripstone_block []
setblock ~8 ~7 ~-2 copper_block []
setblock ~8 ~8 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 1 copper_ingot 16
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 3 bone 12
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 5 string 14
replaceitem block ~4 ~1 ~5 slot.container 9 gold_ingot 6
replaceitem block ~4 ~1 ~5 slot.container 10 coal 17
replaceitem block ~4 ~1 ~5 slot.container 11 diamond 4
replaceitem block ~4 ~1 ~5 slot.container 12 cauldron 5
replaceitem block ~4 ~1 ~5 slot.container 13 lava_bucket 1
replaceitem block ~4 ~1 ~5 slot.container 14 iron_pickaxe 1
loot insert ~4 ~1 ~5 loot "rsf/dripstone_caves"
summon witch ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-4 ~0
