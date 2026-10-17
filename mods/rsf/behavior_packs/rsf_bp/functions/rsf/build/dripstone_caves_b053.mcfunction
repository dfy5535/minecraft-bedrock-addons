# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3253/4224 | 主题内编号: b053/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·测绘师观景制图站 (dripstone_caves_outpost_cartographer_post)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 deepslate_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 deepslate_bricks [] replace water
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 tuff []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 deepslate_tiles []
setblock ~0 ~0 ~0 raw_copper_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 dripstone_block []

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

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~9 ~-5 ~4 ~9 ~5 dripstone_block []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 cobbled_deepslate []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 raw_copper_block []
setblock ~0 ~12 ~0 torch []

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

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 spider_eye 11
replaceitem block ~3 ~1 ~4 slot.container 1 arrow 22
replaceitem block ~3 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 3 copper_ingot 16
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 13
replaceitem block ~3 ~1 ~4 slot.container 5 bone 12
replaceitem block ~3 ~1 ~4 slot.container 9 lantern 11
replaceitem block ~3 ~1 ~4 slot.container 10 pointed_dripstone 18
replaceitem block ~3 ~1 ~4 slot.container 11 dripstone_block 12
replaceitem block ~3 ~1 ~4 slot.container 12 iron_ingot 11
replaceitem block ~3 ~1 ~4 slot.container 13 gold_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 14 coal 19
loot insert ~3 ~1 ~4 loot "rsf/dripstone_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
