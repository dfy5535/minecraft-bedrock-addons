# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3325/4224 | 主题内编号: b125/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·巨型阶梯金字塔神王殿 (dripstone_caves_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 15x17 | 地上高度 10格 | 地下深度 5格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 deepslate_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 deepslate_bricks [] replace water
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 tuff []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_tiles []
setblock ~0 ~0 ~0 raw_copper_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cobbled_deepslate []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 obsidian []
setblock ~0 ~-6 ~0 raw_copper_block []
setblock ~0 ~-7 ~0 torch []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~4 ~-4 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-4 ~0 slot.container 0 spider_eye 8
replaceitem block ~4 ~-4 ~0 slot.container 1 arrow 19
replaceitem block ~4 ~-4 ~0 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-4 ~0 slot.container 3 copper_ingot 21
replaceitem block ~4 ~-4 ~0 slot.container 4 rotten_flesh 18
replaceitem block ~4 ~-4 ~0 slot.container 5 bone 17
replaceitem block ~4 ~-4 ~0 slot.container 9 dripstone_block 17
replaceitem block ~4 ~-4 ~0 slot.container 10 iron_ingot 16
replaceitem block ~4 ~-4 ~0 slot.container 11 gold_ingot 6
replaceitem block ~4 ~-4 ~0 slot.container 12 coal 17
replaceitem block ~4 ~-4 ~0 slot.container 13 diamond 4
replaceitem block ~4 ~-4 ~0 slot.container 14 cauldron 5
loot insert ~4 ~-4 ~0 loot "rsf/dripstone_caves"
loot insert ~4 ~-4 ~0 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 deepslate_bricks []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 dripstone_block []
fill ~-4 ~5 ~-5 ~4 ~10 ~5 cobbled_deepslate []
fill ~-4 ~1 ~-5 ~4 ~9 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 deepslate_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~11 ~-7 ~6 ~11 ~7 dripstone_block []
fill ~-5 ~12 ~-6 ~5 ~12 ~6 cobbled_deepslate []
fill ~-1 ~13 ~-1 ~1 ~13 ~1 raw_copper_block []
setblock ~0 ~14 ~0 torch []

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

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 9x9x3) ---
fill ~9 ~0 ~0 ~9 ~5 ~0 dripstone_block []
setblock ~9 ~6 ~0 copper_block []
setblock ~9 ~7 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 spider_eye 11
replaceitem block ~5 ~1 ~6 slot.container 1 arrow 22
replaceitem block ~5 ~1 ~6 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 3 copper_ingot 16
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 13
replaceitem block ~5 ~1 ~6 slot.container 5 bone 12
replaceitem block ~5 ~1 ~6 slot.container 9 diamond 2
replaceitem block ~5 ~1 ~6 slot.container 10 cauldron 3
replaceitem block ~5 ~1 ~6 slot.container 11 lava_bucket 1
replaceitem block ~5 ~1 ~6 slot.container 12 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 13 lantern 10
replaceitem block ~5 ~1 ~6 slot.container 14 pointed_dripstone 17
loot insert ~5 ~1 ~6 loot "rsf/dripstone_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
