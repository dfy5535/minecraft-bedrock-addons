# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3241/4224 | 主题内编号: b041/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·八角看台古罗马斗技场 (dripstone_caves_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 deepslate_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 deepslate_bricks [] replace water
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air []
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
replaceitem block ~0 ~-3 ~5 slot.container 0 rotten_flesh 18
replaceitem block ~0 ~-3 ~5 slot.container 1 bone 17
replaceitem block ~0 ~-3 ~5 slot.container 2 gunpowder 10
replaceitem block ~0 ~-3 ~5 slot.container 3 string 11
replaceitem block ~0 ~-3 ~5 slot.container 4 spider_eye 8
replaceitem block ~0 ~-3 ~5 slot.container 5 arrow 19
replaceitem block ~0 ~-3 ~5 slot.container 9 diamond 6
replaceitem block ~0 ~-3 ~5 slot.container 10 cauldron 7
replaceitem block ~0 ~-3 ~5 slot.container 11 lava_bucket 1
replaceitem block ~0 ~-3 ~5 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-3 ~5 slot.container 13 lantern 7
replaceitem block ~0 ~-3 ~5 slot.container 14 pointed_dripstone 14
loot insert ~0 ~-3 ~5 loot "rsf/dripstone_caves"
loot insert ~0 ~-3 ~5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 deepslate_bricks []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~8 ~-7 air []
fill ~6 ~1 ~-7 ~6 ~8 ~-7 air []
fill ~-6 ~1 ~7 ~-6 ~8 ~7 air []
fill ~6 ~1 ~7 ~6 ~8 ~7 air []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 polished_deepslate []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 polished_deepslate []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 polished_deepslate []
fill ~5 ~1 ~6 ~5 ~7 ~6 polished_deepslate []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-7 ~-6 ~9 ~-7 polished_deepslate []
setblock ~-6 ~10 ~-7 torch []
fill ~-6 ~7 ~7 ~-6 ~9 ~7 polished_deepslate []
setblock ~-6 ~10 ~7 torch []
fill ~6 ~7 ~-7 ~6 ~9 ~-7 polished_deepslate []
setblock ~6 ~10 ~-7 torch []
fill ~6 ~7 ~7 ~6 ~9 ~7 polished_deepslate []
setblock ~6 ~10 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~5 ~-9 polished_deepslate []
setblock ~-8 ~6 ~-9 torch []
fill ~-8 ~0 ~9 ~-8 ~5 ~9 polished_deepslate []
setblock ~-8 ~6 ~9 torch []
fill ~8 ~0 ~-9 ~8 ~5 ~-9 polished_deepslate []
setblock ~8 ~6 ~-9 torch []
fill ~8 ~0 ~9 ~8 ~5 ~9 polished_deepslate []
setblock ~8 ~6 ~9 torch []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 9x9x4) ---
fill ~9 ~0 ~0 ~9 ~6 ~0 dripstone_block []
setblock ~9 ~7 ~0 copper_block []
setblock ~9 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rotten_flesh 13
replaceitem block ~5 ~1 ~6 slot.container 1 bone 12
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 13
replaceitem block ~5 ~1 ~6 slot.container 3 string 14
replaceitem block ~5 ~1 ~6 slot.container 4 spider_eye 11
replaceitem block ~5 ~1 ~6 slot.container 5 arrow 22
replaceitem block ~5 ~1 ~6 slot.container 9 gold_ingot 6
replaceitem block ~5 ~1 ~6 slot.container 10 coal 17
replaceitem block ~5 ~1 ~6 slot.container 11 diamond 4
replaceitem block ~5 ~1 ~6 slot.container 12 cauldron 5
replaceitem block ~5 ~1 ~6 slot.container 13 lava_bucket 1
replaceitem block ~5 ~1 ~6 slot.container 14 iron_pickaxe 1
loot insert ~5 ~1 ~6 loot "rsf/dripstone_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
