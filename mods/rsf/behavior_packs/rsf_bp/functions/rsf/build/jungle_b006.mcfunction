# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0902/4224 | 主题内编号: b006/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·重檐飞角四方神龛 (jungle_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 mossy_cobblestone [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 mossy_cobblestone [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 jungle_planks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 string 19
replaceitem block ~2 ~-2 ~3 slot.container 1 spider_eye 6
replaceitem block ~2 ~-2 ~3 slot.container 2 gunpowder 9
replaceitem block ~2 ~-2 ~3 slot.container 3 slime_ball 8
replaceitem block ~2 ~-2 ~3 slot.container 4 arrow 19
replaceitem block ~2 ~-2 ~3 slot.container 5 ender_pearl 6
replaceitem block ~2 ~-2 ~3 slot.container 9 melon_slice 18
replaceitem block ~2 ~-2 ~3 slot.container 10 cocoa_beans 11
replaceitem block ~2 ~-2 ~3 slot.container 11 bamboo 16
replaceitem block ~2 ~-2 ~3 slot.container 12 jungle_log 21
replaceitem block ~2 ~-2 ~3 slot.container 13 gold_ingot 12
replaceitem block ~2 ~-2 ~3 slot.container 14 emerald 4
loot insert ~2 ~-2 ~3 loot "rsf/jungle"
loot insert ~2 ~-2 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-5 ~4 ~9 ~5 mossy_cobblestone []
fill ~-3 ~1 ~-4 ~3 ~8 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 jungle_log []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 jungle_log []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 jungle_log []
fill ~4 ~1 ~5 ~4 ~9 ~5 jungle_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 stone_brick_slab []
fill ~-3 ~10 ~-4 ~3 ~11 ~4 jungle_planks []
fill ~-4 ~12 ~-5 ~4 ~12 ~5 jungle_slab []
setblock ~0 ~13 ~0 chiseled_stone_bricks []
setblock ~0 ~14 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~9 ~-2 jungle_log []
fill ~-4 ~0 ~2 ~-4 ~9 ~2 jungle_log []
fill ~4 ~0 ~-2 ~4 ~9 ~-2 jungle_log []
fill ~4 ~0 ~2 ~4 ~9 ~2 jungle_log []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~-7 ~0 ~8 ~-8 ~8 ~9 mossy_stone_bricks []
setblock ~-7 ~9 ~8 gold_block []
setblock ~-7 ~10 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 arrow 22
replaceitem block ~-3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 4 string 14
replaceitem block ~-3 ~1 ~4 slot.container 5 spider_eye 9
replaceitem block ~-3 ~1 ~4 slot.container 9 iron_ingot 12
replaceitem block ~-3 ~1 ~4 slot.container 10 golden_apple 1
replaceitem block ~-3 ~1 ~4 slot.container 11 iron_sword 1
replaceitem block ~-3 ~1 ~4 slot.container 12 torch 18
replaceitem block ~-3 ~1 ~4 slot.container 13 melon_slice 19
replaceitem block ~-3 ~1 ~4 slot.container 14 cocoa_beans 12
loot insert ~-3 ~1 ~4 loot "rsf/jungle"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 1 bone 14
replaceitem block ~3 ~1 ~4 slot.container 2 string 17
replaceitem block ~3 ~1 ~4 slot.container 3 spider_eye 12
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 5 slime_ball 6
replaceitem block ~3 ~1 ~4 slot.container 9 iron_ingot 10
replaceitem block ~3 ~1 ~4 slot.container 10 golden_apple 6
replaceitem block ~3 ~1 ~4 slot.container 11 iron_sword 1
replaceitem block ~3 ~1 ~4 slot.container 12 torch 16
replaceitem block ~3 ~1 ~4 slot.container 13 melon_slice 17
replaceitem block ~3 ~1 ~4 slot.container 14 cocoa_beans 10
loot insert ~3 ~1 ~4 loot "rsf/jungle"
loot insert ~3 ~1 ~4 loot "chests/jungle_temple"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon ocelot ~0 ~-2 ~0
