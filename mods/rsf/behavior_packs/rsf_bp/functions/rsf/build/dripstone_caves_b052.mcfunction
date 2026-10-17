# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3252/4224 | 主题内编号: b052/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·重檐行商旅店客栈 (dripstone_caves_outpost_caravan_inn)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x17 | 地上高度 8格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-8 ~6 ~-1 ~8 dripstone_block [] replace air
fill ~-6 ~-4 ~-8 ~6 ~-1 ~8 dripstone_block [] replace water
fill ~-6 ~1 ~-8 ~6 ~10 ~8 air []
fill ~-6 ~0 ~-8 ~6 ~0 ~8 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 polished_deepslate []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 tuff []
setblock ~0 ~0 ~0 copper_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-6 ~4 ~-1 ~6 deepslate_bricks []
fill ~-3 ~-4 ~-5 ~3 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~5 slot.container 0 copper_ingot 21
replaceitem block ~3 ~-2 ~5 slot.container 1 rotten_flesh 18
replaceitem block ~3 ~-2 ~5 slot.container 2 bone 17
replaceitem block ~3 ~-2 ~5 slot.container 3 gunpowder 10
replaceitem block ~3 ~-2 ~5 slot.container 4 string 11
replaceitem block ~3 ~-2 ~5 slot.container 5 spider_eye 8
replaceitem block ~3 ~-2 ~5 slot.container 9 pointed_dripstone 12
replaceitem block ~3 ~-2 ~5 slot.container 10 dripstone_block 13
replaceitem block ~3 ~-2 ~5 slot.container 11 iron_ingot 12
replaceitem block ~3 ~-2 ~5 slot.container 12 gold_ingot 9
replaceitem block ~3 ~-2 ~5 slot.container 13 coal 20
replaceitem block ~3 ~-2 ~5 slot.container 14 diamond 7
loot insert ~3 ~-2 ~5 loot "rsf/dripstone_caves"
loot insert ~3 ~-2 ~5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-7 ~5 ~4 ~7 dripstone_block []
fill ~-4 ~1 ~-6 ~4 ~3 ~6 air []
fill ~-6 ~4 ~-8 ~6 ~4 ~8 deepslate_brick_slab []
fill ~-4 ~5 ~-6 ~4 ~8 ~6 deepslate_bricks []
fill ~-3 ~5 ~-5 ~3 ~7 ~5 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~5 ~0 ~5 ~5 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-8 ~6 ~8 ~8 deepslate_brick_slab []
fill ~-4 ~9 ~-6 ~4 ~10 ~6 deepslate_bricks []
fill ~-5 ~11 ~-7 ~5 ~11 ~7 deepslate_brick_slab []
setblock ~0 ~12 ~0 copper_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 deepslate_bricks []
fill ~-2 ~1 ~-9 ~-2 ~3 ~-9 cobbled_deepslate []
fill ~2 ~1 ~-9 ~2 ~3 ~-9 cobbled_deepslate []
fill ~-2 ~4 ~-9 ~2 ~4 ~-8 deepslate_brick_slab []
setblock ~0 ~3 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~8 ~0 ~-3 ~8 ~7 ~-3 dripstone_block []
setblock ~8 ~8 ~-3 copper_block []
setblock ~8 ~9 ~-3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~6 slot.container 0 string 14
replaceitem block ~-4 ~1 ~6 slot.container 1 spider_eye 11
replaceitem block ~-4 ~1 ~6 slot.container 2 arrow 22
replaceitem block ~-4 ~1 ~6 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~6 slot.container 4 copper_ingot 16
replaceitem block ~-4 ~1 ~6 slot.container 5 rotten_flesh 13
replaceitem block ~-4 ~1 ~6 slot.container 9 cauldron 6
replaceitem block ~-4 ~1 ~6 slot.container 10 lava_bucket 1
replaceitem block ~-4 ~1 ~6 slot.container 11 iron_pickaxe 1
replaceitem block ~-4 ~1 ~6 slot.container 12 lantern 6
replaceitem block ~-4 ~1 ~6 slot.container 13 pointed_dripstone 13
replaceitem block ~-4 ~1 ~6 slot.container 14 dripstone_block 14
loot insert ~-4 ~1 ~6 loot "rsf/dripstone_caves"
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 arrow 17
replaceitem block ~4 ~1 ~6 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~6 slot.container 2 copper_ingot 19
replaceitem block ~4 ~1 ~6 slot.container 3 rotten_flesh 16
replaceitem block ~4 ~1 ~6 slot.container 4 bone 15
replaceitem block ~4 ~1 ~6 slot.container 5 gunpowder 16
replaceitem block ~4 ~1 ~6 slot.container 9 cauldron 4
replaceitem block ~4 ~1 ~6 slot.container 10 lava_bucket 1
replaceitem block ~4 ~1 ~6 slot.container 11 iron_pickaxe 1
replaceitem block ~4 ~1 ~6 slot.container 12 lantern 11
replaceitem block ~4 ~1 ~6 slot.container 13 pointed_dripstone 18
replaceitem block ~4 ~1 ~6 slot.container 14 dripstone_block 12
loot insert ~4 ~1 ~6 loot "rsf/dripstone_caves"
loot insert ~4 ~1 ~6 loot "chests/abandoned_mineshaft"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
