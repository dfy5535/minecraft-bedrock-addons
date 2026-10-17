# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3295/4224 | 主题内编号: b095/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·双子灯笼守卫神龛 (dripstone_caves_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 deepslate_tiles [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 deepslate_tiles [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_tile_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 dripstone_block []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~9 ~4 deepslate_tiles []
fill ~2 ~1 ~-4 ~5 ~9 ~4 deepslate_tiles []
fill ~-4 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 dripstone_block []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 deepslate_tile_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 dripstone_block []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 deepslate_brick_slab []
setblock ~0 ~12 ~0 gold_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 chiseled_deepslate []
setblock ~-7 ~6 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 chiseled_deepslate []
setblock ~-7 ~6 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 chiseled_deepslate []
setblock ~7 ~6 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~5 ~6 chiseled_deepslate []
setblock ~7 ~6 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x6x3) ---
fill ~8 ~0 ~-1 ~8 ~5 ~-1 dripstone_block []
setblock ~8 ~6 ~-1 copper_block []
setblock ~8 ~7 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 1 copper_ingot 16
replaceitem block ~4 ~1 ~3 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~1 ~3 slot.container 3 bone 12
replaceitem block ~4 ~1 ~3 slot.container 4 gunpowder 13
replaceitem block ~4 ~1 ~3 slot.container 5 string 14
replaceitem block ~4 ~1 ~3 slot.container 9 diamond 7
replaceitem block ~4 ~1 ~3 slot.container 10 cauldron 8
replaceitem block ~4 ~1 ~3 slot.container 11 lava_bucket 1
replaceitem block ~4 ~1 ~3 slot.container 12 iron_pickaxe 1
replaceitem block ~4 ~1 ~3 slot.container 13 lantern 8
replaceitem block ~4 ~1 ~3 slot.container 14 pointed_dripstone 15
loot insert ~4 ~1 ~3 loot "rsf/dripstone_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
