# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1285/4224 | 主题内编号: b005/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·下沉圣泉秘宝祭坛 (desert_altar_sunken_well)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 smooth_sandstone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 smooth_sandstone [] replace water
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sandstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cut_sandstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 smooth_sandstone []
setblock ~0 ~0 ~0 lapis_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 orange_terracotta []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 ender_pearl 7
replaceitem block ~-3 ~-3 ~2 slot.container 1 rotten_flesh 19
replaceitem block ~-3 ~-3 ~2 slot.container 2 bone 18
replaceitem block ~-3 ~-3 ~2 slot.container 3 gunpowder 17
replaceitem block ~-3 ~-3 ~2 slot.container 4 string 8
replaceitem block ~-3 ~-3 ~2 slot.container 5 spider_eye 7
replaceitem block ~-3 ~-3 ~2 slot.container 9 enchanted_golden_apple 6
replaceitem block ~-3 ~-3 ~2 slot.container 10 bread 16
replaceitem block ~-3 ~-3 ~2 slot.container 11 gold_ingot 6
replaceitem block ~-3 ~-3 ~2 slot.container 12 iron_ingot 7
replaceitem block ~-3 ~-3 ~2 slot.container 13 emerald 6
replaceitem block ~-3 ~-3 ~2 slot.container 14 diamond 5
loot insert ~-3 ~-3 ~2 loot "rsf/desert"
loot insert ~-3 ~-3 ~2 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 smooth_sandstone []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 orange_terracotta []
fill ~0 ~1 ~-4 ~0 ~2 ~4 orange_terracotta []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~6 ~-4 ~-5 ~8 ~-4 sandstone []
setblock ~-5 ~9 ~-4 torch []
fill ~-5 ~6 ~4 ~-5 ~8 ~4 sandstone []
setblock ~-5 ~9 ~4 torch []
fill ~5 ~6 ~-4 ~5 ~8 ~-4 sandstone []
setblock ~5 ~9 ~-4 torch []
fill ~5 ~6 ~4 ~5 ~8 ~4 sandstone []
setblock ~5 ~9 ~4 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 cobblestone_wall []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 8x6x3) ---
fill ~-8 ~0 ~-6 ~-9 ~5 ~-7 chiseled_sandstone []
fill ~7 ~0 ~-6 ~8 ~5 ~-7 chiseled_sandstone []
setblock ~-8 ~6 ~-6 gold_block []
setblock ~8 ~6 ~-6 gold_block []
setblock ~1 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 orange_terracotta []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 arrow 21
replaceitem block ~4 ~1 ~2 slot.container 1 gold_nugget 18
replaceitem block ~4 ~1 ~2 slot.container 2 ender_pearl 10
replaceitem block ~4 ~1 ~2 slot.container 3 rotten_flesh 14
replaceitem block ~4 ~1 ~2 slot.container 4 bone 13
replaceitem block ~4 ~1 ~2 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~2 slot.container 9 emerald 8
replaceitem block ~4 ~1 ~2 slot.container 10 diamond 7
replaceitem block ~4 ~1 ~2 slot.container 11 tnt 10
replaceitem block ~4 ~1 ~2 slot.container 12 saddle 1
replaceitem block ~4 ~1 ~2 slot.container 13 water_bucket 1
replaceitem block ~4 ~1 ~2 slot.container 14 golden_apple 4
loot insert ~4 ~1 ~2 loot "rsf/desert"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ender_pearl 5
replaceitem block ~-4 ~1 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~-4 ~1 ~3 slot.container 2 bone 16
replaceitem block ~-4 ~1 ~3 slot.container 3 gunpowder 15
replaceitem block ~-4 ~1 ~3 slot.container 4 string 14
replaceitem block ~-4 ~1 ~3 slot.container 5 spider_eye 13
replaceitem block ~-4 ~1 ~3 slot.container 9 emerald 6
replaceitem block ~-4 ~1 ~3 slot.container 10 diamond 5
replaceitem block ~-4 ~1 ~3 slot.container 11 tnt 8
replaceitem block ~-4 ~1 ~3 slot.container 12 saddle 1
replaceitem block ~-4 ~1 ~3 slot.container 13 water_bucket 1
replaceitem block ~-4 ~1 ~3 slot.container 14 golden_apple 2
loot insert ~-4 ~1 ~3 loot "rsf/desert"
loot insert ~-4 ~1 ~3 loot "chests/desert_pyramid"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
