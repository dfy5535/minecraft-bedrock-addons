# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1313/4224 | 主题内编号: b033/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·太阳金顶高耸方尖碑 (desert_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 11x9 | 地上高度 12格 | 地下深度 3格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 smooth_sandstone [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 smooth_sandstone [] replace water
fill ~-5 ~1 ~-4 ~5 ~14 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sandstone_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cut_sandstone []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 smooth_sandstone []
setblock ~0 ~0 ~0 lapis_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 sandstone []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 orange_terracotta []
setblock ~0 ~-5 ~0 emerald_block []
fill ~0 ~-4 ~2 ~0 ~0 ~2 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 torch []
setblock ~2 ~-4 ~0 torch []
setblock ~0 ~-2 ~-1 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-1 slot.container 0 string 8
replaceitem block ~0 ~-2 ~-1 slot.container 1 spider_eye 7
replaceitem block ~0 ~-2 ~-1 slot.container 2 arrow 18
replaceitem block ~0 ~-2 ~-1 slot.container 3 gold_nugget 15
replaceitem block ~0 ~-2 ~-1 slot.container 4 ender_pearl 7
replaceitem block ~0 ~-2 ~-1 slot.container 5 rotten_flesh 19
replaceitem block ~0 ~-2 ~-1 slot.container 9 emerald 4
replaceitem block ~0 ~-2 ~-1 slot.container 10 diamond 3
replaceitem block ~0 ~-2 ~-1 slot.container 11 tnt 6
replaceitem block ~0 ~-2 ~-1 slot.container 12 saddle 1
replaceitem block ~0 ~-2 ~-1 slot.container 13 water_bucket 1
replaceitem block ~0 ~-2 ~-1 slot.container 14 golden_apple 7
loot insert ~0 ~-2 ~-1 loot "rsf/desert"
loot insert ~0 ~-2 ~-1 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-3 ~4 ~2 ~3 smooth_sandstone []
fill ~-3 ~3 ~-2 ~3 ~4 ~2 orange_terracotta []
fill ~-2 ~5 ~-1 ~2 ~12 ~1 sandstone []
fill ~-2 ~1 ~-1 ~2 ~11 ~1 air []
fill ~0 ~1 ~-3 ~0 ~4 ~-3 sandstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-2 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~13 ~-2 ~2 ~14 ~2 orange_terracotta []
fill ~-1 ~15 ~-1 ~1 ~17 ~1 smooth_sandstone []
fill ~0 ~18 ~0 ~0 ~21 ~0 lapis_block []
setblock ~0 ~22 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-5 ~-6 ~5 ~-5 sandstone []
setblock ~-6 ~6 ~-5 torch []
fill ~-6 ~0 ~5 ~-6 ~5 ~5 sandstone []
setblock ~-6 ~6 ~5 torch []
fill ~6 ~0 ~-5 ~6 ~5 ~-5 sandstone []
setblock ~6 ~6 ~-5 torch []
fill ~6 ~0 ~5 ~6 ~5 ~5 sandstone []
setblock ~6 ~6 ~5 torch []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~-7 ~0 ~-6 ~-8 ~8 ~-7 chiseled_sandstone []
fill ~6 ~0 ~-6 ~7 ~8 ~-7 chiseled_sandstone []
setblock ~-7 ~9 ~-6 gold_block []
setblock ~7 ~9 ~-6 gold_block []
setblock ~0 ~0 ~-4 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 bone 13
replaceitem block ~3 ~1 ~1 slot.container 1 gunpowder 12
replaceitem block ~3 ~1 ~1 slot.container 2 string 11
replaceitem block ~3 ~1 ~1 slot.container 3 spider_eye 10
replaceitem block ~3 ~1 ~1 slot.container 4 arrow 21
replaceitem block ~3 ~1 ~1 slot.container 5 gold_nugget 18
replaceitem block ~3 ~1 ~1 slot.container 9 water_bucket 1
replaceitem block ~3 ~1 ~1 slot.container 10 golden_apple 7
replaceitem block ~3 ~1 ~1 slot.container 11 enchanted_golden_apple 7
replaceitem block ~3 ~1 ~1 slot.container 12 bread 10
replaceitem block ~3 ~1 ~1 slot.container 13 gold_ingot 7
replaceitem block ~3 ~1 ~1 slot.container 14 iron_ingot 8
loot insert ~3 ~1 ~1 loot "rsf/desert"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 string 14
replaceitem block ~-3 ~1 ~2 slot.container 1 spider_eye 13
replaceitem block ~-3 ~1 ~2 slot.container 2 arrow 16
replaceitem block ~-3 ~1 ~2 slot.container 3 gold_nugget 13
replaceitem block ~-3 ~1 ~2 slot.container 4 ender_pearl 5
replaceitem block ~-3 ~1 ~2 slot.container 5 rotten_flesh 17
replaceitem block ~-3 ~1 ~2 slot.container 9 water_bucket 1
replaceitem block ~-3 ~1 ~2 slot.container 10 golden_apple 5
replaceitem block ~-3 ~1 ~2 slot.container 11 enchanted_golden_apple 5
replaceitem block ~-3 ~1 ~2 slot.container 12 bread 15
replaceitem block ~-3 ~1 ~2 slot.container 13 gold_ingot 12
replaceitem block ~-3 ~1 ~2 slot.container 14 iron_ingot 6
loot insert ~-3 ~1 ~2 loot "rsf/desert"
loot insert ~-3 ~1 ~2 loot "chests/desert_pyramid"
summon camel ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-2 ~0
