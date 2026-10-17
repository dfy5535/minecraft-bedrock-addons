# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3313/4224 | 主题内编号: b113/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·八角全采光生态温室 (dripstone_caves_conservatory_glass_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 deepslate_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 deepslate_bricks [] replace water
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 tuff []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 deepslate_tiles []
setblock ~0 ~0 ~0 raw_copper_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 dripstone_block []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-3 ~3 slot.container 0 gunpowder 10
replaceitem block ~-2 ~-3 ~3 slot.container 1 string 11
replaceitem block ~-2 ~-3 ~3 slot.container 2 spider_eye 8
replaceitem block ~-2 ~-3 ~3 slot.container 3 arrow 19
replaceitem block ~-2 ~-3 ~3 slot.container 4 ender_pearl 6
replaceitem block ~-2 ~-3 ~3 slot.container 5 copper_ingot 21
replaceitem block ~-2 ~-3 ~3 slot.container 9 diamond 5
replaceitem block ~-2 ~-3 ~3 slot.container 10 cauldron 6
replaceitem block ~-2 ~-3 ~3 slot.container 11 lava_bucket 1
replaceitem block ~-2 ~-3 ~3 slot.container 12 iron_pickaxe 1
replaceitem block ~-2 ~-3 ~3 slot.container 13 lantern 6
replaceitem block ~-2 ~-3 ~3 slot.container 14 pointed_dripstone 13
loot insert ~-2 ~-3 ~3 loot "rsf/dripstone_caves"
loot insert ~-2 ~-3 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 deepslate_bricks []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 air []
fill ~4 ~1 ~5 ~4 ~9 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~8 ~-4 polished_deepslate []
fill ~3 ~1 ~-4 ~3 ~8 ~-4 polished_deepslate []
fill ~-3 ~1 ~4 ~-3 ~8 ~4 polished_deepslate []
fill ~3 ~1 ~4 ~3 ~8 ~4 polished_deepslate []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 dripstone_block []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 glass []
fill ~-2 ~9 ~-3 ~2 ~9 ~3 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 dripstone_block []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 polished_deepslate []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 polished_deepslate []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 deepslate_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~7 ~0 ~1 ~7 ~8 ~1 dripstone_block []
setblock ~7 ~9 ~1 copper_block []
setblock ~7 ~10 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 13
replaceitem block ~3 ~1 ~4 slot.container 1 bone 12
replaceitem block ~3 ~1 ~4 slot.container 2 gunpowder 13
replaceitem block ~3 ~1 ~4 slot.container 3 string 14
replaceitem block ~3 ~1 ~4 slot.container 4 spider_eye 11
replaceitem block ~3 ~1 ~4 slot.container 5 arrow 22
replaceitem block ~3 ~1 ~4 slot.container 9 lantern 8
replaceitem block ~3 ~1 ~4 slot.container 10 pointed_dripstone 15
replaceitem block ~3 ~1 ~4 slot.container 11 dripstone_block 16
replaceitem block ~3 ~1 ~4 slot.container 12 iron_ingot 15
replaceitem block ~3 ~1 ~4 slot.container 13 gold_ingot 12
replaceitem block ~3 ~1 ~4 slot.container 14 coal 16
loot insert ~3 ~1 ~4 loot "rsf/dripstone_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
