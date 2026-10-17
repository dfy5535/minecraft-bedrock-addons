# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3309/4224 | 主题内编号: b109/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·环柱能量矩阵奥术厅 (dripstone_caves_arcane_rotunda_nexus)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 tuff []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 deepslate_tiles []
setblock ~0 ~0 ~0 raw_copper_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 cobbled_deepslate []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 rotten_flesh 18
replaceitem block ~3 ~-3 ~4 slot.container 1 bone 17
replaceitem block ~3 ~-3 ~4 slot.container 2 gunpowder 10
replaceitem block ~3 ~-3 ~4 slot.container 3 string 11
replaceitem block ~3 ~-3 ~4 slot.container 4 spider_eye 8
replaceitem block ~3 ~-3 ~4 slot.container 5 arrow 19
replaceitem block ~3 ~-3 ~4 slot.container 9 dripstone_block 13
replaceitem block ~3 ~-3 ~4 slot.container 10 iron_ingot 12
replaceitem block ~3 ~-3 ~4 slot.container 11 gold_ingot 9
replaceitem block ~3 ~-3 ~4 slot.container 12 coal 20
replaceitem block ~3 ~-3 ~4 slot.container 13 diamond 7
replaceitem block ~3 ~-3 ~4 slot.container 14 cauldron 8
loot insert ~3 ~-3 ~4 loot "rsf/dripstone_caves"
loot insert ~3 ~-3 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 dripstone_block []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 polished_deepslate []
fill ~-5 ~1 ~6 ~-5 ~8 ~6 polished_deepslate []
fill ~-3 ~1 ~-6 ~-3 ~8 ~-6 polished_deepslate []
fill ~-3 ~1 ~6 ~-3 ~8 ~6 polished_deepslate []
fill ~-1 ~1 ~-6 ~-1 ~8 ~-6 polished_deepslate []
fill ~-1 ~1 ~6 ~-1 ~8 ~6 polished_deepslate []
fill ~1 ~1 ~-6 ~1 ~8 ~-6 polished_deepslate []
fill ~1 ~1 ~6 ~1 ~8 ~6 polished_deepslate []
fill ~3 ~1 ~-6 ~3 ~8 ~-6 polished_deepslate []
fill ~3 ~1 ~6 ~3 ~8 ~6 polished_deepslate []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 polished_deepslate []
fill ~5 ~1 ~6 ~5 ~8 ~6 polished_deepslate []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 polished_deepslate []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 polished_deepslate []
fill ~-5 ~1 ~-2 ~-5 ~8 ~-2 polished_deepslate []
fill ~5 ~1 ~-2 ~5 ~8 ~-2 polished_deepslate []
fill ~-5 ~1 ~0 ~-5 ~8 ~0 polished_deepslate []
fill ~5 ~1 ~0 ~5 ~8 ~0 polished_deepslate []
fill ~-5 ~1 ~2 ~-5 ~8 ~2 polished_deepslate []
fill ~5 ~1 ~2 ~5 ~8 ~2 polished_deepslate []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 polished_deepslate []
fill ~5 ~1 ~4 ~5 ~8 ~4 polished_deepslate []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 dripstone_block []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 deepslate_bricks []
fill ~0 ~15 ~0 ~0 ~17 ~0 raw_copper_block []
setblock ~0 ~18 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 polished_deepslate []
setblock ~0 ~4 ~-8 iron_block []
setblock ~0 ~5 ~-8 torch []
fill ~0 ~0 ~8 ~0 ~3 ~8 polished_deepslate []
setblock ~0 ~4 ~8 iron_block []
setblock ~0 ~5 ~8 torch []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 polished_deepslate []
setblock ~-7 ~4 ~0 iron_block []
setblock ~-7 ~5 ~0 torch []
fill ~7 ~0 ~0 ~7 ~3 ~0 polished_deepslate []
setblock ~7 ~4 ~0 iron_block []
setblock ~7 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~8 ~0 ~2 ~8 ~4 ~2 dripstone_block []
setblock ~8 ~5 ~2 copper_block []
setblock ~8 ~6 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 11
replaceitem block ~4 ~1 ~5 slot.container 1 arrow 22
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 copper_ingot 16
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 5 bone 12
replaceitem block ~4 ~1 ~5 slot.container 9 lava_bucket 1
replaceitem block ~4 ~1 ~5 slot.container 10 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 11 lantern 6
replaceitem block ~4 ~1 ~5 slot.container 12 pointed_dripstone 13
replaceitem block ~4 ~1 ~5 slot.container 13 dripstone_block 14
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 13
loot insert ~4 ~1 ~5 loot "rsf/dripstone_caves"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
