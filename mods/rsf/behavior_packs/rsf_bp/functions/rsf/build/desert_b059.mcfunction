# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1339/4224 | 主题内编号: b059/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·阶梯金字塔法老墓室 (desert_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 sandstone [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 sandstone [] replace water
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 sandstone_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 smooth_sandstone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cut_sandstone []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 cut_sandstone []
setblock ~0 ~-6 ~0 orange_terracotta []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 arrow 18
replaceitem block ~0 ~-3 ~-4 slot.container 1 gold_nugget 15
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 7
replaceitem block ~0 ~-3 ~-4 slot.container 3 rotten_flesh 19
replaceitem block ~0 ~-3 ~-4 slot.container 4 bone 18
replaceitem block ~0 ~-3 ~-4 slot.container 5 gunpowder 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 gold_ingot 11
replaceitem block ~0 ~-3 ~-4 slot.container 10 iron_ingot 12
replaceitem block ~0 ~-3 ~-4 slot.container 11 emerald 4
replaceitem block ~0 ~-3 ~-4 slot.container 12 diamond 3
replaceitem block ~0 ~-3 ~-4 slot.container 13 tnt 6
replaceitem block ~0 ~-3 ~-4 slot.container 14 saddle 1
loot insert ~0 ~-3 ~-4 loot "rsf/desert"
loot insert ~0 ~-3 ~-4 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 sandstone []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 cut_sandstone []
fill ~-5 ~5 ~-4 ~5 ~8 ~4 cut_sandstone []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 sandstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~9 ~-6 ~7 ~9 ~6 cut_sandstone []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 cut_sandstone []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 gold_block []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~5 ~-8 chiseled_sandstone []
setblock ~-9 ~6 ~-8 torch []
fill ~-9 ~0 ~8 ~-9 ~5 ~8 chiseled_sandstone []
setblock ~-9 ~6 ~8 torch []
fill ~9 ~0 ~-8 ~9 ~5 ~-8 chiseled_sandstone []
setblock ~9 ~6 ~-8 torch []
fill ~9 ~0 ~8 ~9 ~5 ~8 chiseled_sandstone []
setblock ~9 ~6 ~8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 10x8x2) ---
fill ~-10 ~0 ~-8 ~-11 ~4 ~-9 chiseled_sandstone []
fill ~9 ~0 ~-8 ~10 ~4 ~-9 chiseled_sandstone []
setblock ~-10 ~5 ~-8 gold_block []
setblock ~10 ~5 ~-8 gold_block []
setblock ~-2 ~0 ~-7 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 string 11
replaceitem block ~6 ~1 ~4 slot.container 1 spider_eye 10
replaceitem block ~6 ~1 ~4 slot.container 2 arrow 21
replaceitem block ~6 ~1 ~4 slot.container 3 gold_nugget 18
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 10
replaceitem block ~6 ~1 ~4 slot.container 5 rotten_flesh 14
replaceitem block ~6 ~1 ~4 slot.container 9 tnt 6
replaceitem block ~6 ~1 ~4 slot.container 10 saddle 1
replaceitem block ~6 ~1 ~4 slot.container 11 water_bucket 1
replaceitem block ~6 ~1 ~4 slot.container 12 golden_apple 7
replaceitem block ~6 ~1 ~4 slot.container 13 enchanted_golden_apple 7
replaceitem block ~6 ~1 ~4 slot.container 14 bread 10
loot insert ~6 ~1 ~4 loot "rsf/desert"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 arrow 16
replaceitem block ~-6 ~1 ~5 slot.container 1 gold_nugget 13
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 5
replaceitem block ~-6 ~1 ~5 slot.container 3 rotten_flesh 17
replaceitem block ~-6 ~1 ~5 slot.container 4 bone 16
replaceitem block ~-6 ~1 ~5 slot.container 5 gunpowder 15
replaceitem block ~-6 ~1 ~5 slot.container 9 tnt 4
replaceitem block ~-6 ~1 ~5 slot.container 10 saddle 1
replaceitem block ~-6 ~1 ~5 slot.container 11 water_bucket 1
replaceitem block ~-6 ~1 ~5 slot.container 12 golden_apple 5
replaceitem block ~-6 ~1 ~5 slot.container 13 enchanted_golden_apple 5
replaceitem block ~-6 ~1 ~5 slot.container 14 bread 15
loot insert ~-6 ~1 ~5 loot "rsf/desert"
loot insert ~-6 ~1 ~5 loot "chests/desert_pyramid"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
