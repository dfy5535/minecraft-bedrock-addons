# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1030/4224 | 主题内编号: b006/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·重檐飞角四方神龛 (bamboo_jungle_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 bamboo_mosaic_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 bamboo_planks []
setblock ~0 ~0 ~0 scaffolding []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 bamboo_mosaic []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 bone 17
replaceitem block ~3 ~-3 ~2 slot.container 1 spider_eye 6
replaceitem block ~3 ~-3 ~2 slot.container 2 gunpowder 9
replaceitem block ~3 ~-3 ~2 slot.container 3 slime_ball 8
replaceitem block ~3 ~-3 ~2 slot.container 4 arrow 19
replaceitem block ~3 ~-3 ~2 slot.container 5 ender_pearl 6
replaceitem block ~3 ~-3 ~2 slot.container 9 iron_ingot 10
replaceitem block ~3 ~-3 ~2 slot.container 10 emerald 9
replaceitem block ~3 ~-3 ~2 slot.container 11 gold_ingot 10
replaceitem block ~3 ~-3 ~2 slot.container 12 golden_apple 1
replaceitem block ~3 ~-3 ~2 slot.container 13 bow 1
replaceitem block ~3 ~-3 ~2 slot.container 14 lantern 6
loot insert ~3 ~-3 ~2 loot "rsf/bamboo_jungle"
loot insert ~3 ~-3 ~2 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 mossy_stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 jungle_log []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 jungle_log []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 jungle_log []
fill ~5 ~1 ~4 ~5 ~7 ~4 jungle_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 bamboo_mosaic_slab []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 bamboo_mosaic []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 bamboo_slab []
setblock ~0 ~11 ~0 scaffolding []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 jungle_log []
setblock ~-7 ~4 ~-6 torch []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 jungle_log []
setblock ~-7 ~4 ~6 torch []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 jungle_log []
setblock ~7 ~4 ~-6 torch []
fill ~7 ~0 ~6 ~7 ~3 ~6 jungle_log []
setblock ~7 ~4 ~6 torch []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 6x5x2) ---
fill ~6 ~1 ~-2 ~6 ~4 ~2 scaffolding []
fill ~5 ~4 ~-2 ~7 ~4 ~2 bamboo_mosaic_slab []
setblock ~6 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 arrow 22
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 2 string 12
replaceitem block ~-4 ~1 ~2 slot.container 3 rotten_flesh 11
replaceitem block ~-4 ~1 ~2 slot.container 4 bone 12
replaceitem block ~-4 ~1 ~2 slot.container 5 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 9 bamboo 33
replaceitem block ~-4 ~1 ~2 slot.container 10 scaffolding 18
replaceitem block ~-4 ~1 ~2 slot.container 11 melon_slice 15
replaceitem block ~-4 ~1 ~2 slot.container 12 cooked_chicken 12
replaceitem block ~-4 ~1 ~2 slot.container 13 iron_ingot 11
replaceitem block ~-4 ~1 ~2 slot.container 14 emerald 10
loot insert ~-4 ~1 ~2 loot "rsf/bamboo_jungle"
summon panda ~0 ~1 ~-1
summon parrot ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
