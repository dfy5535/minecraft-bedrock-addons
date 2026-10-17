# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3277/4224 | 主题内编号: b077/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·双子鸟居图腾神道 (dripstone_caves_totem_twin_spirit_gate)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 deepslate_bricks [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 deepslate_bricks [] replace water
fill ~-6 ~1 ~-6 ~6 ~10 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 tuff []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 deepslate_tiles []
setblock ~0 ~0 ~0 raw_copper_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 dripstone_block []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~8 ~5 deepslate_bricks []
fill ~-4 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-6 ~6 ~8 ~6 deepslate_brick_slab []
fill ~-4 ~9 ~-4 ~4 ~10 ~4 cobbled_deepslate []
fill ~-5 ~11 ~-5 ~5 ~11 ~5 cobbled_deepslate_slab []
setblock ~0 ~12 ~0 raw_copper_block []
setblock ~0 ~13 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 dripstone_block []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~8 ~0 ~0 ~8 ~7 ~0 dripstone_block []
setblock ~8 ~8 ~0 copper_block []
setblock ~8 ~9 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 spider_eye 11
replaceitem block ~4 ~1 ~4 slot.container 1 arrow 22
replaceitem block ~4 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~4 slot.container 3 copper_ingot 16
replaceitem block ~4 ~1 ~4 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~1 ~4 slot.container 5 bone 12
replaceitem block ~4 ~1 ~4 slot.container 9 dripstone_block 13
replaceitem block ~4 ~1 ~4 slot.container 10 iron_ingot 12
replaceitem block ~4 ~1 ~4 slot.container 11 gold_ingot 9
replaceitem block ~4 ~1 ~4 slot.container 12 coal 20
replaceitem block ~4 ~1 ~4 slot.container 13 diamond 7
replaceitem block ~4 ~1 ~4 slot.container 14 cauldron 8
loot insert ~4 ~1 ~4 loot "rsf/dripstone_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
