# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3307/4224 | 主题内编号: b107/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·观星高塔与秘术地宫 (dripstone_caves_arcane_star_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
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

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 dripstone_block []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 obsidian []
setblock ~0 ~-6 ~0 gold_block []
setblock ~0 ~-7 ~0 lantern []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-4 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-4 ~0 slot.container 0 gunpowder 10
replaceitem block ~2 ~-4 ~0 slot.container 1 string 11
replaceitem block ~2 ~-4 ~0 slot.container 2 spider_eye 8
replaceitem block ~2 ~-4 ~0 slot.container 3 arrow 19
replaceitem block ~2 ~-4 ~0 slot.container 4 ender_pearl 6
replaceitem block ~2 ~-4 ~0 slot.container 5 copper_ingot 21
replaceitem block ~2 ~-4 ~0 slot.container 9 lava_bucket 1
replaceitem block ~2 ~-4 ~0 slot.container 10 iron_pickaxe 1
replaceitem block ~2 ~-4 ~0 slot.container 11 lantern 9
replaceitem block ~2 ~-4 ~0 slot.container 12 pointed_dripstone 16
replaceitem block ~2 ~-4 ~0 slot.container 13 dripstone_block 17
replaceitem block ~2 ~-4 ~0 slot.container 14 iron_ingot 16
loot insert ~2 ~-4 ~0 loot "rsf/dripstone_caves"
loot insert ~2 ~-4 ~0 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-4 ~1 ~-5 ~4 ~10 ~5 deepslate_tiles []
fill ~-3 ~1 ~-4 ~3 ~9 ~4 air []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 deepslate_brick_slab []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~4 ~0 ~10 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~10 ~-5 ~4 ~10 ~5 dripstone_block []
fill ~-3 ~11 ~-4 ~3 ~12 ~4 glass []
fill ~-2 ~11 ~-3 ~2 ~11 ~3 air []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~9 ~-2 chiseled_deepslate []
fill ~-5 ~0 ~2 ~-5 ~9 ~2 chiseled_deepslate []
fill ~5 ~0 ~-2 ~5 ~9 ~-2 chiseled_deepslate []
fill ~5 ~0 ~2 ~5 ~9 ~2 chiseled_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~7 ~0 ~0 ~7 ~7 ~0 dripstone_block []
setblock ~7 ~8 ~0 copper_block []
setblock ~7 ~9 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-3 ~1 ~0 lectern []
setblock ~3 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 gunpowder 13
replaceitem block ~3 ~1 ~4 slot.container 1 string 14
replaceitem block ~3 ~1 ~4 slot.container 2 spider_eye 11
replaceitem block ~3 ~1 ~4 slot.container 3 arrow 22
replaceitem block ~3 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 5 copper_ingot 16
replaceitem block ~3 ~1 ~4 slot.container 9 dripstone_block 15
replaceitem block ~3 ~1 ~4 slot.container 10 iron_ingot 14
replaceitem block ~3 ~1 ~4 slot.container 11 gold_ingot 11
replaceitem block ~3 ~1 ~4 slot.container 12 coal 22
replaceitem block ~3 ~1 ~4 slot.container 13 diamond 2
replaceitem block ~3 ~1 ~4 slot.container 14 cauldron 3
loot insert ~3 ~1 ~4 loot "rsf/dripstone_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
