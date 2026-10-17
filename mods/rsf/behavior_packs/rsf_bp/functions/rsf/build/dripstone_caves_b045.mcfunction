# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3245/4224 | 主题内编号: b045/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·十二柱神殿试炼场 (dripstone_caves_arena_pillared_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 deepslate_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 deepslate_bricks [] replace water
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 tuff []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_tiles []
setblock ~0 ~0 ~0 raw_copper_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 deepslate_bricks []
fill ~-5 ~-5 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 raw_copper_block []
setblock ~-4 ~-5 ~-5 torch []
setblock ~4 ~-5 ~5 torch []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 spider_eye 8
replaceitem block ~0 ~-3 ~5 slot.container 1 arrow 19
replaceitem block ~0 ~-3 ~5 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~5 slot.container 3 copper_ingot 21
replaceitem block ~0 ~-3 ~5 slot.container 4 rotten_flesh 18
replaceitem block ~0 ~-3 ~5 slot.container 5 bone 17
replaceitem block ~0 ~-3 ~5 slot.container 9 lava_bucket 1
replaceitem block ~0 ~-3 ~5 slot.container 10 iron_pickaxe 1
replaceitem block ~0 ~-3 ~5 slot.container 11 lantern 9
replaceitem block ~0 ~-3 ~5 slot.container 12 pointed_dripstone 16
replaceitem block ~0 ~-3 ~5 slot.container 13 dripstone_block 17
replaceitem block ~0 ~-3 ~5 slot.container 14 iron_ingot 16
loot insert ~0 ~-3 ~5 loot "rsf/dripstone_caves"
loot insert ~0 ~-3 ~5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 dripstone_block []
fill ~-6 ~1 ~-7 ~-6 ~7 ~-7 polished_deepslate []
fill ~-6 ~1 ~7 ~-6 ~7 ~7 polished_deepslate []
fill ~-4 ~1 ~-7 ~-4 ~7 ~-7 polished_deepslate []
fill ~-4 ~1 ~7 ~-4 ~7 ~7 polished_deepslate []
fill ~-2 ~1 ~-7 ~-2 ~7 ~-7 polished_deepslate []
fill ~-2 ~1 ~7 ~-2 ~7 ~7 polished_deepslate []
fill ~0 ~1 ~-7 ~0 ~7 ~-7 polished_deepslate []
fill ~0 ~1 ~7 ~0 ~7 ~7 polished_deepslate []
fill ~2 ~1 ~-7 ~2 ~7 ~-7 polished_deepslate []
fill ~2 ~1 ~7 ~2 ~7 ~7 polished_deepslate []
fill ~4 ~1 ~-7 ~4 ~7 ~-7 polished_deepslate []
fill ~4 ~1 ~7 ~4 ~7 ~7 polished_deepslate []
fill ~6 ~1 ~-7 ~6 ~7 ~-7 polished_deepslate []
fill ~6 ~1 ~7 ~6 ~7 ~7 polished_deepslate []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 polished_deepslate []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 polished_deepslate []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 polished_deepslate []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 polished_deepslate []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 polished_deepslate []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 polished_deepslate []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 polished_deepslate []
fill ~6 ~1 ~1 ~6 ~7 ~1 polished_deepslate []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 polished_deepslate []
fill ~6 ~1 ~3 ~6 ~7 ~3 polished_deepslate []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 polished_deepslate []
fill ~6 ~1 ~5 ~6 ~7 ~5 polished_deepslate []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~8 ~-7 ~-6 ~10 ~-7 polished_deepslate []
setblock ~-6 ~11 ~-7 torch []
fill ~-6 ~8 ~7 ~-6 ~10 ~7 polished_deepslate []
setblock ~-6 ~11 ~7 torch []
fill ~6 ~8 ~-7 ~6 ~10 ~-7 polished_deepslate []
setblock ~6 ~11 ~-7 torch []
fill ~6 ~8 ~7 ~6 ~10 ~7 polished_deepslate []
setblock ~6 ~11 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 polished_deepslate []
setblock ~0 ~4 ~-9 iron_block []
setblock ~0 ~5 ~-9 torch []
fill ~0 ~0 ~9 ~0 ~3 ~9 polished_deepslate []
setblock ~0 ~4 ~9 iron_block []
setblock ~0 ~5 ~9 torch []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 polished_deepslate []
setblock ~-8 ~4 ~0 iron_block []
setblock ~-8 ~5 ~0 torch []
fill ~8 ~0 ~0 ~8 ~3 ~0 polished_deepslate []
setblock ~8 ~4 ~0 iron_block []
setblock ~8 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 9x10x3) ---
fill ~9 ~0 ~-3 ~9 ~5 ~-3 dripstone_block []
setblock ~9 ~6 ~-3 copper_block []
setblock ~9 ~7 ~-3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 spider_eye 11
replaceitem block ~5 ~1 ~6 slot.container 1 arrow 22
replaceitem block ~5 ~1 ~6 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 3 copper_ingot 16
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 13
replaceitem block ~5 ~1 ~6 slot.container 5 bone 12
replaceitem block ~5 ~1 ~6 slot.container 9 diamond 6
replaceitem block ~5 ~1 ~6 slot.container 10 cauldron 7
replaceitem block ~5 ~1 ~6 slot.container 11 lava_bucket 1
replaceitem block ~5 ~1 ~6 slot.container 12 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 13 lantern 7
replaceitem block ~5 ~1 ~6 slot.container 14 pointed_dripstone 14
loot insert ~5 ~1 ~6 loot "rsf/dripstone_caves"
summon witch ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
