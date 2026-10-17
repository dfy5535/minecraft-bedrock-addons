# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1345/4224 | 主题内编号: b065/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·断柱露天古神庙废墟 (desert_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 smooth_sandstone [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 smooth_sandstone [] replace water
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 sandstone_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 cut_sandstone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 smooth_sandstone []
setblock ~0 ~0 ~0 lapis_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 sandstone []
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~4 slot.container 0 arrow 18
replaceitem block ~4 ~-2 ~4 slot.container 1 gold_nugget 15
replaceitem block ~4 ~-2 ~4 slot.container 2 ender_pearl 7
replaceitem block ~4 ~-2 ~4 slot.container 3 rotten_flesh 19
replaceitem block ~4 ~-2 ~4 slot.container 4 bone 18
replaceitem block ~4 ~-2 ~4 slot.container 5 gunpowder 17
replaceitem block ~4 ~-2 ~4 slot.container 9 water_bucket 1
replaceitem block ~4 ~-2 ~4 slot.container 10 golden_apple 7
replaceitem block ~4 ~-2 ~4 slot.container 11 enchanted_golden_apple 7
replaceitem block ~4 ~-2 ~4 slot.container 12 bread 10
replaceitem block ~4 ~-2 ~4 slot.container 13 gold_ingot 7
replaceitem block ~4 ~-2 ~4 slot.container 14 iron_ingot 8
loot insert ~4 ~-2 ~4 loot "rsf/desert"
loot insert ~4 ~-2 ~4 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 orange_terracotta []
fill ~-6 ~1 ~-6 ~-6 ~6 ~-6 sandstone []
fill ~-6 ~1 ~6 ~-6 ~6 ~6 sandstone []
fill ~-4 ~1 ~-6 ~-4 ~6 ~-6 sandstone []
fill ~-4 ~1 ~6 ~-4 ~6 ~6 sandstone []
fill ~-2 ~1 ~-6 ~-2 ~6 ~-6 sandstone []
fill ~-2 ~1 ~6 ~-2 ~6 ~6 sandstone []
fill ~0 ~1 ~-6 ~0 ~6 ~-6 sandstone []
fill ~0 ~1 ~6 ~0 ~6 ~6 sandstone []
fill ~2 ~1 ~-6 ~2 ~6 ~-6 sandstone []
fill ~2 ~1 ~6 ~2 ~6 ~6 sandstone []
fill ~4 ~1 ~-6 ~4 ~6 ~-6 sandstone []
fill ~4 ~1 ~6 ~4 ~6 ~6 sandstone []
fill ~6 ~1 ~-6 ~6 ~6 ~-6 sandstone []
fill ~6 ~1 ~6 ~6 ~6 ~6 sandstone []
fill ~-6 ~1 ~-4 ~-6 ~6 ~-4 sandstone []
fill ~6 ~1 ~-4 ~6 ~6 ~-4 sandstone []
fill ~-6 ~1 ~-2 ~-6 ~6 ~-2 sandstone []
fill ~6 ~1 ~-2 ~6 ~6 ~-2 sandstone []
fill ~-6 ~1 ~0 ~-6 ~6 ~0 sandstone []
fill ~6 ~1 ~0 ~6 ~6 ~0 sandstone []
fill ~-6 ~1 ~2 ~-6 ~6 ~2 sandstone []
fill ~6 ~1 ~2 ~6 ~6 ~2 sandstone []
fill ~-6 ~1 ~4 ~-6 ~6 ~4 sandstone []
fill ~6 ~1 ~4 ~6 ~6 ~4 sandstone []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 sandstone_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~5 ~-8 sandstone []
setblock ~-8 ~6 ~-8 torch []
fill ~-8 ~0 ~8 ~-8 ~5 ~8 sandstone []
setblock ~-8 ~6 ~8 torch []
fill ~8 ~0 ~-8 ~8 ~5 ~-8 sandstone []
setblock ~8 ~6 ~-8 torch []
fill ~8 ~0 ~8 ~8 ~5 ~8 sandstone []
setblock ~8 ~6 ~8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~-9 ~0 ~-8 ~-10 ~5 ~-9 chiseled_sandstone []
fill ~8 ~0 ~-8 ~9 ~5 ~-9 chiseled_sandstone []
setblock ~-9 ~6 ~-8 gold_block []
setblock ~9 ~6 ~-8 gold_block []
setblock ~-1 ~0 ~-7 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 bone 13
replaceitem block ~5 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~4 slot.container 2 string 11
replaceitem block ~5 ~1 ~4 slot.container 3 spider_eye 10
replaceitem block ~5 ~1 ~4 slot.container 4 arrow 21
replaceitem block ~5 ~1 ~4 slot.container 5 gold_nugget 18
replaceitem block ~5 ~1 ~4 slot.container 9 emerald 5
replaceitem block ~5 ~1 ~4 slot.container 10 diamond 4
replaceitem block ~5 ~1 ~4 slot.container 11 tnt 7
replaceitem block ~5 ~1 ~4 slot.container 12 saddle 1
replaceitem block ~5 ~1 ~4 slot.container 13 water_bucket 1
replaceitem block ~5 ~1 ~4 slot.container 14 golden_apple 8
loot insert ~5 ~1 ~4 loot "rsf/desert"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 string 14
replaceitem block ~-5 ~1 ~5 slot.container 1 spider_eye 13
replaceitem block ~-5 ~1 ~5 slot.container 2 arrow 16
replaceitem block ~-5 ~1 ~5 slot.container 3 gold_nugget 13
replaceitem block ~-5 ~1 ~5 slot.container 4 ender_pearl 5
replaceitem block ~-5 ~1 ~5 slot.container 5 rotten_flesh 17
replaceitem block ~-5 ~1 ~5 slot.container 9 emerald 10
replaceitem block ~-5 ~1 ~5 slot.container 10 diamond 2
replaceitem block ~-5 ~1 ~5 slot.container 11 tnt 5
replaceitem block ~-5 ~1 ~5 slot.container 12 saddle 1
replaceitem block ~-5 ~1 ~5 slot.container 13 water_bucket 1
replaceitem block ~-5 ~1 ~5 slot.container 14 golden_apple 6
loot insert ~-5 ~1 ~5 loot "rsf/desert"
loot insert ~-5 ~1 ~5 loot "chests/desert_pyramid"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
