# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1286/4224 | 主题内编号: b006/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·重檐飞角四方神龛 (desert_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 sandstone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 sandstone [] replace water
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sandstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_sandstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 sandstone []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 gunpowder 17
replaceitem block ~3 ~-3 ~2 slot.container 1 string 8
replaceitem block ~3 ~-3 ~2 slot.container 2 spider_eye 7
replaceitem block ~3 ~-3 ~2 slot.container 3 arrow 18
replaceitem block ~3 ~-3 ~2 slot.container 4 gold_nugget 15
replaceitem block ~3 ~-3 ~2 slot.container 5 ender_pearl 7
replaceitem block ~3 ~-3 ~2 slot.container 9 bread 11
replaceitem block ~3 ~-3 ~2 slot.container 10 gold_ingot 8
replaceitem block ~3 ~-3 ~2 slot.container 11 iron_ingot 9
replaceitem block ~3 ~-3 ~2 slot.container 12 emerald 8
replaceitem block ~3 ~-3 ~2 slot.container 13 diamond 7
replaceitem block ~3 ~-3 ~2 slot.container 14 tnt 10
loot insert ~3 ~-3 ~2 loot "rsf/desert"
loot insert ~3 ~-3 ~2 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-4 ~5 ~9 ~4 sandstone []
fill ~-4 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 chiseled_sandstone []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 chiseled_sandstone []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 chiseled_sandstone []
fill ~5 ~1 ~4 ~5 ~9 ~4 chiseled_sandstone []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-5 ~2 ~0 birch_fence []
setblock ~5 ~2 ~0 birch_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 sandstone_slab []
fill ~-4 ~10 ~-3 ~4 ~11 ~3 sandstone []
fill ~-5 ~12 ~-4 ~5 ~12 ~4 sandstone_slab []
setblock ~0 ~13 ~0 emerald_block []
setblock ~0 ~14 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 cobblestone_wall []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~-8 ~0 ~-7 ~-9 ~6 ~-8 chiseled_sandstone []
fill ~7 ~0 ~-7 ~8 ~6 ~-8 chiseled_sandstone []
setblock ~-8 ~7 ~-7 gold_block []
setblock ~8 ~7 ~-7 gold_block []
setblock ~2 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 gold_nugget 18
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 10
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 14
replaceitem block ~-4 ~1 ~2 slot.container 3 bone 13
replaceitem block ~-4 ~1 ~2 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 5 string 11
replaceitem block ~-4 ~1 ~2 slot.container 9 saddle 1
replaceitem block ~-4 ~1 ~2 slot.container 10 water_bucket 1
replaceitem block ~-4 ~1 ~2 slot.container 11 golden_apple 2
replaceitem block ~-4 ~1 ~2 slot.container 12 enchanted_golden_apple 2
replaceitem block ~-4 ~1 ~2 slot.container 13 bread 12
replaceitem block ~-4 ~1 ~2 slot.container 14 gold_ingot 9
loot insert ~-4 ~1 ~2 loot "rsf/desert"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon camel ~0 ~-3 ~0
