# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3227/4224 | 主题内编号: b027/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·双子连廊警戒塔楼 (dripstone_caves_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 3格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 deepslate_tiles [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 deepslate_tiles [] replace water
fill ~-6 ~1 ~-5 ~6 ~12 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_tile_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 dripstone_block []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 ender_pearl 6
replaceitem block ~-2 ~-4 ~3 slot.container 1 copper_ingot 21
replaceitem block ~-2 ~-4 ~3 slot.container 2 rotten_flesh 18
replaceitem block ~-2 ~-4 ~3 slot.container 3 bone 17
replaceitem block ~-2 ~-4 ~3 slot.container 4 gunpowder 10
replaceitem block ~-2 ~-4 ~3 slot.container 5 string 11
replaceitem block ~-2 ~-4 ~3 slot.container 9 dripstone_block 12
replaceitem block ~-2 ~-4 ~3 slot.container 10 iron_ingot 11
replaceitem block ~-2 ~-4 ~3 slot.container 11 gold_ingot 8
replaceitem block ~-2 ~-4 ~3 slot.container 12 coal 19
replaceitem block ~-2 ~-4 ~3 slot.container 13 diamond 6
replaceitem block ~-2 ~-4 ~3 slot.container 14 cauldron 7
loot insert ~-2 ~-4 ~3 loot "rsf/dripstone_caves"
loot insert ~-2 ~-4 ~3 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~11 ~4 deepslate_tiles []
fill ~2 ~1 ~-4 ~5 ~11 ~4 deepslate_tiles []
fill ~-4 ~1 ~-3 ~-3 ~10 ~3 air []
fill ~3 ~1 ~-3 ~4 ~10 ~3 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 dripstone_block []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~10 ~-4 ~5 ~10 ~4 dripstone_block []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 deepslate_tile_wall []
fill ~-4 ~11 ~-3 ~4 ~11 ~3 air []
setblock ~-5 ~11 ~-4 chiseled_deepslate []
setblock ~-5 ~12 ~-4 lantern []
setblock ~-5 ~11 ~4 chiseled_deepslate []
setblock ~-5 ~12 ~4 lantern []
setblock ~5 ~11 ~-4 chiseled_deepslate []
setblock ~5 ~12 ~-4 lantern []
setblock ~5 ~11 ~4 chiseled_deepslate []
setblock ~5 ~12 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 dripstone_block []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~8 ~0 ~-1 ~8 ~7 ~-1 dripstone_block []
setblock ~8 ~8 ~-1 copper_block []
setblock ~8 ~9 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~9 ~0 lantern []
setblock ~-4 ~1 ~3 smithing_table []
setblock ~-3 ~1 ~3 anvil []
setblock ~3 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 gunpowder 13
replaceitem block ~4 ~1 ~3 slot.container 1 string 14
replaceitem block ~4 ~1 ~3 slot.container 2 spider_eye 11
replaceitem block ~4 ~1 ~3 slot.container 3 arrow 22
replaceitem block ~4 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 5 copper_ingot 16
replaceitem block ~4 ~1 ~3 slot.container 9 dripstone_block 12
replaceitem block ~4 ~1 ~3 slot.container 10 iron_ingot 11
replaceitem block ~4 ~1 ~3 slot.container 11 gold_ingot 8
replaceitem block ~4 ~1 ~3 slot.container 12 coal 19
replaceitem block ~4 ~1 ~3 slot.container 13 diamond 6
replaceitem block ~4 ~1 ~3 slot.container 14 cauldron 7
loot insert ~4 ~1 ~3 loot "rsf/dripstone_caves"
summon witch ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~2 ~0
