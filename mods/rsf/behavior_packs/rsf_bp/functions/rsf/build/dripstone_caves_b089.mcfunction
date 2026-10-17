# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3289/4224 | 主题内编号: b089/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·四柱挑檐祈愿凉亭 (dripstone_caves_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 9x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 deepslate_bricks [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 deepslate_bricks [] replace water
fill ~-4 ~1 ~-5 ~4 ~10 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 tuff []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 deepslate_tiles []
setblock ~0 ~0 ~0 raw_copper_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 dripstone_block []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~8 ~4 deepslate_bricks []
fill ~-2 ~1 ~-3 ~2 ~7 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~8 ~-4 polished_deepslate []
fill ~-3 ~1 ~4 ~-3 ~8 ~4 polished_deepslate []
fill ~3 ~1 ~-4 ~3 ~8 ~-4 polished_deepslate []
fill ~3 ~1 ~4 ~3 ~8 ~4 polished_deepslate []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 deepslate_brick_wall []
setblock ~3 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 deepslate_brick_slab []
fill ~-2 ~9 ~-3 ~2 ~10 ~3 cobbled_deepslate []
fill ~-3 ~11 ~-4 ~3 ~11 ~4 cobbled_deepslate_slab []
setblock ~0 ~12 ~0 raw_copper_block []
setblock ~0 ~13 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 dripstone_block []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 polished_deepslate []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 polished_deepslate []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 deepslate_brick_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 6x6x2) ---
fill ~6 ~0 ~1 ~6 ~4 ~1 dripstone_block []
setblock ~6 ~5 ~1 copper_block []
setblock ~6 ~6 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 lantern []
fill ~-3 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 raw_copper_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 rotten_flesh 13
replaceitem block ~2 ~1 ~3 slot.container 1 bone 12
replaceitem block ~2 ~1 ~3 slot.container 2 gunpowder 13
replaceitem block ~2 ~1 ~3 slot.container 3 string 14
replaceitem block ~2 ~1 ~3 slot.container 4 spider_eye 11
replaceitem block ~2 ~1 ~3 slot.container 5 arrow 22
replaceitem block ~2 ~1 ~3 slot.container 9 lava_bucket 1
replaceitem block ~2 ~1 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~2 ~1 ~3 slot.container 11 lantern 7
replaceitem block ~2 ~1 ~3 slot.container 12 pointed_dripstone 14
replaceitem block ~2 ~1 ~3 slot.container 13 dripstone_block 15
replaceitem block ~2 ~1 ~3 slot.container 14 iron_ingot 14
loot insert ~2 ~1 ~3 loot "rsf/dripstone_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
