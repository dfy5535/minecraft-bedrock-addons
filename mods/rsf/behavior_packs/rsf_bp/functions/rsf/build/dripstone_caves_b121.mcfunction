# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3321/4224 | 主题内编号: b121/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·卫城廊柱王座大殿与地宫 (dripstone_caves_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 5格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 deepslate_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 deepslate_bricks [] replace water
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 tuff []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_tiles []
setblock ~0 ~0 ~0 raw_copper_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_bricks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 torch []
setblock ~4 ~-6 ~0 torch []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~5 slot.container 1 copper_ingot 21
replaceitem block ~0 ~-4 ~5 slot.container 2 rotten_flesh 18
replaceitem block ~0 ~-4 ~5 slot.container 3 bone 17
replaceitem block ~0 ~-4 ~5 slot.container 4 gunpowder 10
replaceitem block ~0 ~-4 ~5 slot.container 5 string 11
replaceitem block ~0 ~-4 ~5 slot.container 9 diamond 4
replaceitem block ~0 ~-4 ~5 slot.container 10 cauldron 5
replaceitem block ~0 ~-4 ~5 slot.container 11 lava_bucket 1
replaceitem block ~0 ~-4 ~5 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-4 ~5 slot.container 13 lantern 12
replaceitem block ~0 ~-4 ~5 slot.container 14 pointed_dripstone 12
loot insert ~0 ~-4 ~5 loot "rsf/dripstone_caves"
loot insert ~0 ~-4 ~5 loot "chests/abandoned_mineshaft"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 ender_pearl 4
replaceitem block ~0 ~-4 ~-5 slot.container 1 copper_ingot 19
replaceitem block ~0 ~-4 ~-5 slot.container 2 rotten_flesh 16
replaceitem block ~0 ~-4 ~-5 slot.container 3 bone 15
replaceitem block ~0 ~-4 ~-5 slot.container 4 gunpowder 16
replaceitem block ~0 ~-4 ~-5 slot.container 5 string 17
replaceitem block ~0 ~-4 ~-5 slot.container 9 diamond 3
replaceitem block ~0 ~-4 ~-5 slot.container 10 cauldron 4
replaceitem block ~0 ~-4 ~-5 slot.container 11 lava_bucket 1
replaceitem block ~0 ~-4 ~-5 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-4 ~-5 slot.container 13 lantern 11
replaceitem block ~0 ~-4 ~-5 slot.container 14 pointed_dripstone 18
loot insert ~0 ~-4 ~-5 loot "rsf/dripstone_caves"
loot insert ~0 ~-4 ~-5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-6 ~1 ~-1 ~6 ~9 ~7 deepslate_bricks []
fill ~-5 ~1 ~0 ~5 ~8 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~9 ~-7 polished_deepslate []
fill ~-4 ~1 ~-7 ~-4 ~9 ~-7 polished_deepslate []
fill ~-2 ~1 ~-7 ~-2 ~9 ~-7 polished_deepslate []
fill ~0 ~1 ~-7 ~0 ~9 ~-7 polished_deepslate []
fill ~2 ~1 ~-7 ~2 ~9 ~-7 polished_deepslate []
fill ~4 ~1 ~-7 ~4 ~9 ~-7 polished_deepslate []
fill ~6 ~1 ~-7 ~6 ~9 ~-7 polished_deepslate []
fill ~-6 ~9 ~-7 ~6 ~9 ~-1 dripstone_block []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~10 ~-8 ~-7 ~10 ~8 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~7 ~10 ~-8 ~7 ~10 ~8 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~11 ~-7 ~-6 ~11 ~7 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~6 ~11 ~-7 ~6 ~11 ~7 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~11 ~-7 ~5 ~11 ~7 deepslate_brick_slab []
fill ~0 ~12 ~-8 ~0 ~12 ~8 dripstone_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~5 ~-9 polished_deepslate []
setblock ~-8 ~6 ~-9 torch []
fill ~-8 ~0 ~9 ~-8 ~5 ~9 polished_deepslate []
setblock ~-8 ~6 ~9 torch []
fill ~8 ~0 ~-9 ~8 ~5 ~-9 polished_deepslate []
setblock ~8 ~6 ~-9 torch []
fill ~8 ~0 ~9 ~8 ~5 ~9 polished_deepslate []
setblock ~8 ~6 ~9 torch []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 9x8x4) ---
fill ~9 ~0 ~3 ~9 ~6 ~3 dripstone_block []
setblock ~9 ~7 ~3 copper_block []
setblock ~9 ~8 ~3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rotten_flesh 13
replaceitem block ~5 ~1 ~6 slot.container 1 bone 12
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 13
replaceitem block ~5 ~1 ~6 slot.container 3 string 14
replaceitem block ~5 ~1 ~6 slot.container 4 spider_eye 11
replaceitem block ~5 ~1 ~6 slot.container 5 arrow 22
replaceitem block ~5 ~1 ~6 slot.container 9 gold_ingot 9
replaceitem block ~5 ~1 ~6 slot.container 10 coal 20
replaceitem block ~5 ~1 ~6 slot.container 11 diamond 7
replaceitem block ~5 ~1 ~6 slot.container 12 cauldron 8
replaceitem block ~5 ~1 ~6 slot.container 13 lava_bucket 1
replaceitem block ~5 ~1 ~6 slot.container 14 iron_pickaxe 1
loot insert ~5 ~1 ~6 loot "rsf/dripstone_caves"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
