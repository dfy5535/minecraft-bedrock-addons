# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3319/4224 | 主题内编号: b119/128
# 地形主题 #26: 地下滴水石钟乳石洞穴 (dripstone_caves) —— 带滴水石锥阵列与避雷针铜矿冶炼炉
# 建筑名称: 钟乳石窟系·半地下恒温洞穴苗圃 (dripstone_caves_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 11x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: dripstone_caves
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 deepslate_tiles [] replace air
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 deepslate_tiles [] replace water
fill ~-5 ~1 ~-7 ~5 ~8 ~7 air []
fill ~-5 ~0 ~-7 ~5 ~0 ~7 deepslate_tile_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 deepslate_bricks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 dripstone_block []
fill ~-2 ~-6 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~4 slot.container 0 rotten_flesh 18
replaceitem block ~-2 ~-4 ~4 slot.container 1 bone 17
replaceitem block ~-2 ~-4 ~4 slot.container 2 gunpowder 10
replaceitem block ~-2 ~-4 ~4 slot.container 3 string 11
replaceitem block ~-2 ~-4 ~4 slot.container 4 spider_eye 8
replaceitem block ~-2 ~-4 ~4 slot.container 5 arrow 19
replaceitem block ~-2 ~-4 ~4 slot.container 9 gold_ingot 8
replaceitem block ~-2 ~-4 ~4 slot.container 10 coal 19
replaceitem block ~-2 ~-4 ~4 slot.container 11 diamond 6
replaceitem block ~-2 ~-4 ~4 slot.container 12 cauldron 7
replaceitem block ~-2 ~-4 ~4 slot.container 13 lava_bucket 1
replaceitem block ~-2 ~-4 ~4 slot.container 14 iron_pickaxe 1
loot insert ~-2 ~-4 ~4 loot "rsf/dripstone_caves"
loot insert ~-2 ~-4 ~4 loot "chests/abandoned_mineshaft"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-6 ~4 ~2 ~6 deepslate_tiles []
fill ~-3 ~1 ~-5 ~3 ~3 ~5 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 dripstone_block []
fill ~0 ~1 ~-6 ~0 ~2 ~6 dripstone_block []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~6 ~-6 ~4 ~6 ~6 dripstone_block []
fill ~-3 ~7 ~-5 ~3 ~8 ~5 glass []
fill ~-2 ~7 ~-4 ~2 ~7 ~4 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-8 ~6 ~2 ~8 deepslate_tile_wall []
fill ~-5 ~1 ~-7 ~5 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (dripstone_caves 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~7 ~0 ~0 ~7 ~4 ~0 dripstone_block []
setblock ~7 ~5 ~0 copper_block []
setblock ~7 ~6 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-3 ~1 ~4 blast_furnace []
setblock ~-2 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~5 slot.container 1 copper_ingot 16
replaceitem block ~3 ~1 ~5 slot.container 2 rotten_flesh 13
replaceitem block ~3 ~1 ~5 slot.container 3 bone 12
replaceitem block ~3 ~1 ~5 slot.container 4 gunpowder 13
replaceitem block ~3 ~1 ~5 slot.container 5 string 14
replaceitem block ~3 ~1 ~5 slot.container 9 lava_bucket 1
replaceitem block ~3 ~1 ~5 slot.container 10 iron_pickaxe 1
replaceitem block ~3 ~1 ~5 slot.container 11 lantern 9
replaceitem block ~3 ~1 ~5 slot.container 12 pointed_dripstone 16
replaceitem block ~3 ~1 ~5 slot.container 13 dripstone_block 17
replaceitem block ~3 ~1 ~5 slot.container 14 iron_ingot 16
loot insert ~3 ~1 ~5 loot "rsf/dripstone_caves"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
