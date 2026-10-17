# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3291/4224 | 主题内编号: b091/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·跨水拱桥水神小祠 (dripstone_caves_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_tiles [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_tiles [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_tile_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 dripstone_block []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 spider_eye 8
replaceitem block ~-3 ~-3 ~2 slot.container 1 arrow 19
replaceitem block ~-3 ~-3 ~2 slot.container 2 ender_pearl 6
replaceitem block ~-3 ~-3 ~2 slot.container 3 copper_ingot 21
replaceitem block ~-3 ~-3 ~2 slot.container 4 rotten_flesh 18
replaceitem block ~-3 ~-3 ~2 slot.container 5 bone 17
replaceitem block ~-3 ~-3 ~2 slot.container 9 lantern 8
replaceitem block ~-3 ~-3 ~2 slot.container 10 pointed_dripstone 15
replaceitem block ~-3 ~-3 ~2 slot.container 11 dripstone_block 16
replaceitem block ~-3 ~-3 ~2 slot.container 12 iron_ingot 15
replaceitem block ~-3 ~-3 ~2 slot.container 13 gold_ingot 12
replaceitem block ~-3 ~-3 ~2 slot.container 14 coal 16
loot insert ~-3 ~-3 ~2 loot "rsf/dripstone_caves"
loot insert ~-3 ~-3 ~2 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 deepslate_tiles []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 deepslate_tile_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 dripstone_block []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 deepslate_brick_slab []
setblock ~0 ~12 ~0 gold_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 dripstone_block []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x5x4) ---
fill ~8 ~0 ~-1 ~8 ~6 ~-1 dripstone_block []
setblock ~8 ~7 ~-1 copper_block []
setblock ~8 ~8 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 gunpowder 13
replaceitem block ~4 ~1 ~3 slot.container 1 string 14
replaceitem block ~4 ~1 ~3 slot.container 2 spider_eye 11
replaceitem block ~4 ~1 ~3 slot.container 3 arrow 22
replaceitem block ~4 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 5 copper_ingot 16
replaceitem block ~4 ~1 ~3 slot.container 9 gold_ingot 7
replaceitem block ~4 ~1 ~3 slot.container 10 coal 18
replaceitem block ~4 ~1 ~3 slot.container 11 diamond 5
replaceitem block ~4 ~1 ~3 slot.container 12 cauldron 6
replaceitem block ~4 ~1 ~3 slot.container 13 lava_bucket 1
replaceitem block ~4 ~1 ~3 slot.container 14 iron_pickaxe 1
loot insert ~4 ~1 ~3 loot "rsf/dripstone_caves"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
