# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3257/4224 | 主题内编号: b057/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·中央石棺帝王地下陵寝 (dripstone_caves_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x17 | 地上高度 6格 | 地下深度 5格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 deepslate_bricks [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 deepslate_bricks [] replace water
fill ~-6 ~1 ~-8 ~6 ~8 ~8 air []
fill ~-6 ~0 ~-8 ~6 ~0 ~8 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 tuff []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 deepslate_tiles []
setblock ~0 ~0 ~0 raw_copper_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 cobbled_deepslate []
fill ~-4 ~-6 ~-6 ~4 ~-1 ~6 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 dripstone_block []
setblock ~0 ~-7 ~0 iron_block []
fill ~0 ~-6 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 torch []
setblock ~2 ~-6 ~0 torch []
setblock ~0 ~-4 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-5 slot.container 0 gunpowder 10
replaceitem block ~0 ~-4 ~-5 slot.container 1 string 11
replaceitem block ~0 ~-4 ~-5 slot.container 2 spider_eye 8
replaceitem block ~0 ~-4 ~-5 slot.container 3 arrow 19
replaceitem block ~0 ~-4 ~-5 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-4 ~-5 slot.container 5 copper_ingot 21
replaceitem block ~0 ~-4 ~-5 slot.container 9 lava_bucket 1
replaceitem block ~0 ~-4 ~-5 slot.container 10 iron_pickaxe 1
replaceitem block ~0 ~-4 ~-5 slot.container 11 lantern 6
replaceitem block ~0 ~-4 ~-5 slot.container 12 pointed_dripstone 13
replaceitem block ~0 ~-4 ~-5 slot.container 13 dripstone_block 14
replaceitem block ~0 ~-4 ~-5 slot.container 14 iron_ingot 13
loot insert ~0 ~-4 ~-5 loot "rsf/dripstone_caves"
loot insert ~0 ~-4 ~-5 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-7 ~5 ~2 ~7 deepslate_bricks []
fill ~-4 ~1 ~-6 ~4 ~3 ~6 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 dripstone_block []
fill ~0 ~1 ~-7 ~0 ~2 ~7 dripstone_block []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-7 ~5 ~7 ~7 dripstone_block []
fill ~-4 ~8 ~-6 ~4 ~8 ~6 cobbled_deepslate []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 raw_copper_block []
setblock ~0 ~10 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 dripstone_block []
fill ~-2 ~1 ~-9 ~-2 ~3 ~-9 polished_deepslate []
fill ~2 ~1 ~-9 ~2 ~3 ~-9 polished_deepslate []
fill ~-2 ~4 ~-9 ~2 ~4 ~-8 deepslate_brick_slab []
setblock ~0 ~3 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x10x5) ---
fill ~8 ~0 ~2 ~8 ~7 ~2 dripstone_block []
setblock ~8 ~8 ~2 copper_block []
setblock ~8 ~9 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 rotten_flesh 13
replaceitem block ~4 ~1 ~6 slot.container 1 bone 12
replaceitem block ~4 ~1 ~6 slot.container 2 gunpowder 13
replaceitem block ~4 ~1 ~6 slot.container 3 string 14
replaceitem block ~4 ~1 ~6 slot.container 4 spider_eye 11
replaceitem block ~4 ~1 ~6 slot.container 5 arrow 22
replaceitem block ~4 ~1 ~6 slot.container 9 dripstone_block 14
replaceitem block ~4 ~1 ~6 slot.container 10 iron_ingot 13
replaceitem block ~4 ~1 ~6 slot.container 11 gold_ingot 10
replaceitem block ~4 ~1 ~6 slot.container 12 coal 21
replaceitem block ~4 ~1 ~6 slot.container 13 diamond 8
replaceitem block ~4 ~1 ~6 slot.container 14 cauldron 2
loot insert ~4 ~1 ~6 loot "rsf/dripstone_caves"
summon witch ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-4 ~0
