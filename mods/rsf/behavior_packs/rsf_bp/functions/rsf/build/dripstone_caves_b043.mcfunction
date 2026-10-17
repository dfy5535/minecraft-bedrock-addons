# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3243/4224 | 主题内编号: b043/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·十字四门试炼擂台 (dripstone_caves_arena_cross_gauntlet)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 deepslate_tiles [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 deepslate_tiles [] replace water
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 deepslate_tile_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_deepslate []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 dripstone_block []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~7 ~7 deepslate_tiles []
fill ~-6 ~1 ~-2 ~6 ~7 ~2 deepslate_tiles []
fill ~-1 ~1 ~-6 ~1 ~6 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~6 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 deepslate_tile_wall []
setblock ~6 ~2 ~0 deepslate_tile_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 dripstone_block []
fill ~-6 ~8 ~-7 ~6 ~8 ~7 deepslate_tile_wall []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 air []
setblock ~-6 ~8 ~-7 chiseled_deepslate []
setblock ~-6 ~9 ~-7 lantern []
setblock ~-6 ~8 ~7 chiseled_deepslate []
setblock ~-6 ~9 ~7 lantern []
setblock ~6 ~8 ~-7 chiseled_deepslate []
setblock ~6 ~9 ~-7 lantern []
setblock ~6 ~8 ~7 chiseled_deepslate []
setblock ~6 ~9 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 deepslate_brick_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~9 ~0 ~2 ~9 ~8 ~2 dripstone_block []
setblock ~9 ~9 ~2 copper_block []
setblock ~9 ~10 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 fletching_table []
setblock ~0 ~1 ~6 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 13
replaceitem block ~5 ~1 ~6 slot.container 1 string 14
replaceitem block ~5 ~1 ~6 slot.container 2 spider_eye 11
replaceitem block ~5 ~1 ~6 slot.container 3 arrow 22
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 copper_ingot 16
replaceitem block ~5 ~1 ~6 slot.container 9 lantern 8
replaceitem block ~5 ~1 ~6 slot.container 10 pointed_dripstone 15
replaceitem block ~5 ~1 ~6 slot.container 11 dripstone_block 16
replaceitem block ~5 ~1 ~6 slot.container 12 iron_ingot 15
replaceitem block ~5 ~1 ~6 slot.container 13 gold_ingot 12
replaceitem block ~5 ~1 ~6 slot.container 14 coal 16
loot insert ~5 ~1 ~6 loot "rsf/dripstone_caves"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
