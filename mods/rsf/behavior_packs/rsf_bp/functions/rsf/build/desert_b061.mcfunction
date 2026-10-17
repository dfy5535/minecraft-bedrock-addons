# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1341/4224 | 主题内编号: b061/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·双子封土古墓地宫 (desert_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 smooth_sandstone [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 smooth_sandstone [] replace water
fill ~-8 ~1 ~-5 ~8 ~9 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 sandstone_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 cut_sandstone []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 smooth_sandstone []
setblock ~0 ~0 ~0 lapis_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 sandstone []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 orange_terracotta []
setblock ~0 ~-6 ~0 emerald_block []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 ender_pearl 7
replaceitem block ~0 ~-3 ~-2 slot.container 1 rotten_flesh 19
replaceitem block ~0 ~-3 ~-2 slot.container 2 bone 18
replaceitem block ~0 ~-3 ~-2 slot.container 3 gunpowder 17
replaceitem block ~0 ~-3 ~-2 slot.container 4 string 8
replaceitem block ~0 ~-3 ~-2 slot.container 5 spider_eye 7
replaceitem block ~0 ~-3 ~-2 slot.container 9 water_bucket 1
replaceitem block ~0 ~-3 ~-2 slot.container 10 golden_apple 3
replaceitem block ~0 ~-3 ~-2 slot.container 11 enchanted_golden_apple 3
replaceitem block ~0 ~-3 ~-2 slot.container 12 bread 13
replaceitem block ~0 ~-3 ~-2 slot.container 13 gold_ingot 10
replaceitem block ~0 ~-3 ~-2 slot.container 14 iron_ingot 11
loot insert ~0 ~-3 ~-2 loot "rsf/desert"
loot insert ~0 ~-3 ~-2 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~8 ~4 smooth_sandstone []
fill ~2 ~1 ~-4 ~7 ~8 ~4 smooth_sandstone []
fill ~-6 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 orange_terracotta []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~8 ~-4 ~7 ~8 ~4 orange_terracotta []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 sandstone []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 lapis_block []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 orange_terracotta []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 torch []
setblock ~2 ~4 ~-7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 10x5x4) ---
fill ~-10 ~0 ~-5 ~-11 ~6 ~-6 chiseled_sandstone []
fill ~9 ~0 ~-5 ~10 ~6 ~-6 chiseled_sandstone []
setblock ~-10 ~7 ~-5 gold_block []
setblock ~10 ~7 ~-5 gold_block []
setblock ~0 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 arrow 21
replaceitem block ~6 ~1 ~2 slot.container 1 gold_nugget 18
replaceitem block ~6 ~1 ~2 slot.container 2 ender_pearl 10
replaceitem block ~6 ~1 ~2 slot.container 3 rotten_flesh 14
replaceitem block ~6 ~1 ~2 slot.container 4 bone 13
replaceitem block ~6 ~1 ~2 slot.container 5 gunpowder 12
replaceitem block ~6 ~1 ~2 slot.container 9 gold_ingot 10
replaceitem block ~6 ~1 ~2 slot.container 10 iron_ingot 11
replaceitem block ~6 ~1 ~2 slot.container 11 emerald 10
replaceitem block ~6 ~1 ~2 slot.container 12 diamond 2
replaceitem block ~6 ~1 ~2 slot.container 13 tnt 5
replaceitem block ~6 ~1 ~2 slot.container 14 saddle 1
loot insert ~6 ~1 ~2 loot "rsf/desert"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 ender_pearl 5
replaceitem block ~-6 ~1 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~-6 ~1 ~3 slot.container 2 bone 16
replaceitem block ~-6 ~1 ~3 slot.container 3 gunpowder 15
replaceitem block ~-6 ~1 ~3 slot.container 4 string 14
replaceitem block ~-6 ~1 ~3 slot.container 5 spider_eye 13
replaceitem block ~-6 ~1 ~3 slot.container 9 gold_ingot 8
replaceitem block ~-6 ~1 ~3 slot.container 10 iron_ingot 9
replaceitem block ~-6 ~1 ~3 slot.container 11 emerald 8
replaceitem block ~-6 ~1 ~3 slot.container 12 diamond 7
replaceitem block ~-6 ~1 ~3 slot.container 13 tnt 10
replaceitem block ~-6 ~1 ~3 slot.container 14 saddle 1
loot insert ~-6 ~1 ~3 loot "rsf/desert"
loot insert ~-6 ~1 ~3 loot "chests/desert_pyramid"
summon pillager ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
