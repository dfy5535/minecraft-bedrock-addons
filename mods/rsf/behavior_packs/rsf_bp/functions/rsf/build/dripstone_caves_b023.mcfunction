# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3223/4224 | 主题内编号: b023/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·双层露台阁楼宝室 (dripstone_caves_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x15 | 地上高度 9格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 deepslate_tiles [] replace air
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 deepslate_tiles [] replace water
fill ~-5 ~1 ~-7 ~5 ~11 ~7 air []
fill ~-5 ~0 ~-7 ~5 ~0 ~7 deepslate_tile_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 deepslate_bricks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-3 ~-6 ~4 ~-1 ~6 dripstone_block []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-6 ~4 ~4 ~6 deepslate_tiles []
fill ~-3 ~1 ~-5 ~3 ~3 ~5 air []
fill ~-5 ~4 ~-7 ~5 ~4 ~7 deepslate_tile_slab []
fill ~-3 ~5 ~-5 ~3 ~9 ~5 dripstone_block []
fill ~-2 ~5 ~-4 ~2 ~8 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~5 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~9 ~-7 ~5 ~9 ~7 deepslate_tile_slab []
fill ~-3 ~10 ~-5 ~3 ~11 ~5 dripstone_block []
fill ~-4 ~12 ~-6 ~4 ~12 ~6 deepslate_brick_slab []
setblock ~0 ~13 ~0 gold_block []
setblock ~0 ~14 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~11 ~2 dripstone_block []
fill ~5 ~1 ~-1 ~6 ~10 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~12 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~7 ~0 ~0 ~7 ~8 ~0 dripstone_block []
setblock ~7 ~9 ~0 copper_block []
setblock ~7 ~10 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~5 slot.container 1 copper_ingot 16
replaceitem block ~3 ~1 ~5 slot.container 2 rotten_flesh 13
replaceitem block ~3 ~1 ~5 slot.container 3 bone 12
replaceitem block ~3 ~1 ~5 slot.container 4 gunpowder 13
replaceitem block ~3 ~1 ~5 slot.container 5 string 14
replaceitem block ~3 ~1 ~5 slot.container 9 lantern 9
replaceitem block ~3 ~1 ~5 slot.container 10 pointed_dripstone 16
replaceitem block ~3 ~1 ~5 slot.container 11 dripstone_block 17
replaceitem block ~3 ~1 ~5 slot.container 12 iron_ingot 16
replaceitem block ~3 ~1 ~5 slot.container 13 gold_ingot 6
replaceitem block ~3 ~1 ~5 slot.container 14 coal 17
loot insert ~3 ~1 ~5 loot "rsf/dripstone_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
