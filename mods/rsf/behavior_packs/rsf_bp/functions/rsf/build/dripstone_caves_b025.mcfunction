# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3225/4224 | 主题内编号: b025/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·雉堞女墙四方哨塔 (dripstone_caves_tower_battlement_watch)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 9x11 | 地上高度 11格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 deepslate_bricks [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 deepslate_bricks [] replace water
fill ~-4 ~1 ~-5 ~4 ~13 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 tuff []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 deepslate_tiles []
setblock ~0 ~0 ~0 raw_copper_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 dripstone_block []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~11 ~4 deepslate_bricks []
fill ~-2 ~1 ~-3 ~2 ~10 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~11 ~-4 polished_deepslate []
fill ~-3 ~1 ~4 ~-3 ~11 ~4 polished_deepslate []
fill ~3 ~1 ~-4 ~3 ~11 ~-4 polished_deepslate []
fill ~3 ~1 ~4 ~3 ~11 ~4 polished_deepslate []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 deepslate_brick_wall []
setblock ~3 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-3 ~11 ~-4 ~3 ~11 ~4 dripstone_block []
fill ~-3 ~12 ~-4 ~3 ~12 ~4 deepslate_brick_wall []
fill ~-2 ~12 ~-3 ~2 ~12 ~3 air []
setblock ~-3 ~12 ~-4 polished_deepslate []
setblock ~-3 ~13 ~-4 torch []
setblock ~-3 ~12 ~4 polished_deepslate []
setblock ~-3 ~13 ~4 torch []
setblock ~3 ~12 ~-4 polished_deepslate []
setblock ~3 ~13 ~-4 torch []
setblock ~3 ~12 ~4 polished_deepslate []
setblock ~3 ~13 ~4 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 dripstone_block []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 polished_deepslate []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 polished_deepslate []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 deepslate_brick_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 6x5x3) ---
fill ~6 ~0 ~1 ~6 ~5 ~1 dripstone_block []
setblock ~6 ~6 ~1 copper_block []
setblock ~6 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 rotten_flesh 13
replaceitem block ~2 ~1 ~3 slot.container 1 bone 12
replaceitem block ~2 ~1 ~3 slot.container 2 gunpowder 13
replaceitem block ~2 ~1 ~3 slot.container 3 string 14
replaceitem block ~2 ~1 ~3 slot.container 4 spider_eye 11
replaceitem block ~2 ~1 ~3 slot.container 5 arrow 22
replaceitem block ~2 ~1 ~3 slot.container 9 diamond 7
replaceitem block ~2 ~1 ~3 slot.container 10 cauldron 8
replaceitem block ~2 ~1 ~3 slot.container 11 lava_bucket 1
replaceitem block ~2 ~1 ~3 slot.container 12 iron_pickaxe 1
replaceitem block ~2 ~1 ~3 slot.container 13 lantern 8
replaceitem block ~2 ~1 ~3 slot.container 14 pointed_dripstone 15
loot insert ~2 ~1 ~3 loot "rsf/dripstone_caves"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
