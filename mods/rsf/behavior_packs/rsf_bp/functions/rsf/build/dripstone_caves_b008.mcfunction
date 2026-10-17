# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3208/4224 | 主题内编号: b008/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·凯旋双拱圣物祭坛 (dripstone_caves_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 2格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 dripstone_block [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 dripstone_block [] replace water
fill ~-6 ~1 ~-6 ~6 ~10 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 polished_deepslate []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 tuff []
setblock ~0 ~0 ~0 copper_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 deepslate_bricks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~8 ~5 dripstone_block []
fill ~-4 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-5 ~5 ~8 ~5 deepslate_bricks []
fill ~-5 ~9 ~-5 ~5 ~9 ~5 deepslate_brick_wall []
fill ~-4 ~9 ~-4 ~4 ~9 ~4 air []
setblock ~-5 ~9 ~-5 cobbled_deepslate []
setblock ~-5 ~10 ~-5 lantern []
setblock ~-5 ~9 ~5 cobbled_deepslate []
setblock ~-5 ~10 ~5 lantern []
setblock ~5 ~9 ~-5 cobbled_deepslate []
setblock ~5 ~10 ~-5 lantern []
setblock ~5 ~9 ~5 cobbled_deepslate []
setblock ~5 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 chiseled_deepslate []
setblock ~0 ~4 ~-8 copper_block []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 chiseled_deepslate []
setblock ~0 ~4 ~8 copper_block []
setblock ~0 ~5 ~8 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 chiseled_deepslate []
setblock ~-7 ~4 ~0 copper_block []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 chiseled_deepslate []
setblock ~7 ~4 ~0 copper_block []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~8 ~0 ~1 ~8 ~8 ~1 dripstone_block []
setblock ~8 ~9 ~1 copper_block []
setblock ~8 ~10 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 smithing_table []
setblock ~-3 ~1 ~4 anvil []
setblock ~3 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 copper_ingot 16
replaceitem block ~-4 ~1 ~4 slot.container 1 rotten_flesh 13
replaceitem block ~-4 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-4 ~1 ~4 slot.container 3 gunpowder 13
replaceitem block ~-4 ~1 ~4 slot.container 4 string 14
replaceitem block ~-4 ~1 ~4 slot.container 5 spider_eye 11
replaceitem block ~-4 ~1 ~4 slot.container 9 coal 18
replaceitem block ~-4 ~1 ~4 slot.container 10 diamond 5
replaceitem block ~-4 ~1 ~4 slot.container 11 cauldron 6
replaceitem block ~-4 ~1 ~4 slot.container 12 lava_bucket 1
replaceitem block ~-4 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~-4 ~1 ~4 slot.container 14 lantern 6
loot insert ~-4 ~1 ~4 loot "rsf/dripstone_caves"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 bone 15
replaceitem block ~4 ~1 ~4 slot.container 1 gunpowder 16
replaceitem block ~4 ~1 ~4 slot.container 2 string 17
replaceitem block ~4 ~1 ~4 slot.container 3 spider_eye 6
replaceitem block ~4 ~1 ~4 slot.container 4 arrow 17
replaceitem block ~4 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~4 slot.container 9 coal 16
replaceitem block ~4 ~1 ~4 slot.container 10 diamond 3
replaceitem block ~4 ~1 ~4 slot.container 11 cauldron 4
replaceitem block ~4 ~1 ~4 slot.container 12 lava_bucket 1
replaceitem block ~4 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~4 ~1 ~4 slot.container 14 lantern 11
loot insert ~4 ~1 ~4 loot "rsf/dripstone_caves"
loot insert ~4 ~1 ~4 loot "chests/abandoned_mineshaft"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
