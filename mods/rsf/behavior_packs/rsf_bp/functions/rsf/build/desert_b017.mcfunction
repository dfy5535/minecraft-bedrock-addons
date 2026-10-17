# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1297/4224 | 主题内编号: b017/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·双坡顶皇家藏宝室 (desert_chamber_gabled_treasury)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 smooth_sandstone [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 smooth_sandstone [] replace water
fill ~-6 ~1 ~-6 ~6 ~9 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 sandstone_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cut_sandstone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 lapis_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-4 ~4 ~-1 ~4 sandstone []
fill ~-3 ~-4 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~3 slot.container 0 arrow 18
replaceitem block ~3 ~-2 ~3 slot.container 1 gold_nugget 15
replaceitem block ~3 ~-2 ~3 slot.container 2 ender_pearl 7
replaceitem block ~3 ~-2 ~3 slot.container 3 rotten_flesh 19
replaceitem block ~3 ~-2 ~3 slot.container 4 bone 18
replaceitem block ~3 ~-2 ~3 slot.container 5 gunpowder 17
replaceitem block ~3 ~-2 ~3 slot.container 9 emerald 9
replaceitem block ~3 ~-2 ~3 slot.container 10 diamond 8
replaceitem block ~3 ~-2 ~3 slot.container 11 tnt 4
replaceitem block ~3 ~-2 ~3 slot.container 12 saddle 1
replaceitem block ~3 ~-2 ~3 slot.container 13 water_bucket 1
replaceitem block ~3 ~-2 ~3 slot.container 14 golden_apple 5
loot insert ~3 ~-2 ~3 loot "rsf/desert"
loot insert ~3 ~-2 ~3 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-5 ~5 ~7 ~5 smooth_sandstone []
fill ~-4 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-5 ~1 ~-5 ~-5 ~7 ~-5 sandstone []
fill ~-5 ~1 ~5 ~-5 ~7 ~5 sandstone []
fill ~5 ~1 ~-5 ~5 ~7 ~-5 sandstone []
fill ~5 ~1 ~5 ~5 ~7 ~5 sandstone []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-6 ~-6 ~8 ~6 sandstone_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-6 ~6 ~8 ~6 sandstone_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~-5 ~9 ~5 sandstone_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-5 ~5 ~9 ~5 sandstone_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-5 ~4 ~9 ~5 sandstone_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 orange_terracotta []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 smooth_sandstone []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~-8 ~0 ~-7 ~-9 ~7 ~-8 chiseled_sandstone []
fill ~7 ~0 ~-7 ~8 ~7 ~-8 chiseled_sandstone []
setblock ~-8 ~8 ~-7 gold_block []
setblock ~8 ~8 ~-7 gold_block []
setblock ~-2 ~0 ~-6 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 lantern []
fill ~-4 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 lapis_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 bone 13
replaceitem block ~4 ~1 ~3 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 2 string 11
replaceitem block ~4 ~1 ~3 slot.container 3 spider_eye 10
replaceitem block ~4 ~1 ~3 slot.container 4 arrow 21
replaceitem block ~4 ~1 ~3 slot.container 5 gold_nugget 18
replaceitem block ~4 ~1 ~3 slot.container 9 enchanted_golden_apple 3
replaceitem block ~4 ~1 ~3 slot.container 10 bread 13
replaceitem block ~4 ~1 ~3 slot.container 11 gold_ingot 10
replaceitem block ~4 ~1 ~3 slot.container 12 iron_ingot 11
replaceitem block ~4 ~1 ~3 slot.container 13 emerald 10
replaceitem block ~4 ~1 ~3 slot.container 14 diamond 2
loot insert ~4 ~1 ~3 loot "rsf/desert"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 string 14
replaceitem block ~-4 ~1 ~4 slot.container 1 spider_eye 13
replaceitem block ~-4 ~1 ~4 slot.container 2 arrow 16
replaceitem block ~-4 ~1 ~4 slot.container 3 gold_nugget 13
replaceitem block ~-4 ~1 ~4 slot.container 4 ender_pearl 5
replaceitem block ~-4 ~1 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~-4 ~1 ~4 slot.container 9 enchanted_golden_apple 1
replaceitem block ~-4 ~1 ~4 slot.container 10 bread 11
replaceitem block ~-4 ~1 ~4 slot.container 11 gold_ingot 8
replaceitem block ~-4 ~1 ~4 slot.container 12 iron_ingot 9
replaceitem block ~-4 ~1 ~4 slot.container 13 emerald 8
replaceitem block ~-4 ~1 ~4 slot.container 14 diamond 7
loot insert ~-4 ~1 ~4 loot "rsf/desert"
loot insert ~-4 ~1 ~4 loot "chests/desert_pyramid"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
