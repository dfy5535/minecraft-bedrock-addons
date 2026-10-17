# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1148/4224 | 主题内编号: b124/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·三层重檐帝王阁楼与秘库 (bamboo_jungle_grand_pagoda_imperial)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x15 | 地上高度 9格 | 地下深度 5格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~13 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~13 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~13 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~13 ~8 air [] replace log2
fill ~-7 ~-6 ~-7 ~7 ~-1 ~7 jungle_planks [] replace air
fill ~-7 ~-6 ~-7 ~7 ~-1 ~7 jungle_planks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 bamboo_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 bamboo_planks []
fill ~-4 ~-6 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-4 ~4 slot.container 0 string 17
replaceitem block ~4 ~-4 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~-4 ~4 slot.container 2 bone 17
replaceitem block ~4 ~-4 ~4 slot.container 3 spider_eye 6
replaceitem block ~4 ~-4 ~4 slot.container 4 gunpowder 9
replaceitem block ~4 ~-4 ~4 slot.container 5 slime_ball 8
replaceitem block ~4 ~-4 ~4 slot.container 9 bow 1
replaceitem block ~4 ~-4 ~4 slot.container 10 lantern 8
replaceitem block ~4 ~-4 ~4 slot.container 11 bamboo 37
replaceitem block ~4 ~-4 ~4 slot.container 12 scaffolding 22
replaceitem block ~4 ~-4 ~4 slot.container 13 melon_slice 12
replaceitem block ~4 ~-4 ~4 slot.container 14 cooked_chicken 9
loot insert ~4 ~-4 ~4 loot "rsf/bamboo_jungle"
loot insert ~4 ~-4 ~4 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-6 ~6 ~4 ~6 jungle_planks []
fill ~-5 ~1 ~-5 ~5 ~3 ~5 air []
fill ~-7 ~4 ~-7 ~7 ~4 ~7 bamboo_slab []
fill ~-5 ~5 ~-5 ~5 ~9 ~5 bamboo_planks []
fill ~-4 ~5 ~-4 ~4 ~8 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~5 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~9 ~-7 ~7 ~9 ~7 bamboo_slab []
fill ~-5 ~10 ~-5 ~5 ~11 ~5 bamboo_planks []
fill ~-6 ~12 ~-6 ~6 ~12 ~6 bamboo_slab []
setblock ~0 ~13 ~0 gold_block []
setblock ~0 ~14 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~3 ~-8 bamboo_block []
setblock ~-8 ~4 ~-8 lantern []
fill ~-8 ~0 ~8 ~-8 ~3 ~8 bamboo_block []
setblock ~-8 ~4 ~8 lantern []
fill ~8 ~0 ~-8 ~8 ~3 ~-8 bamboo_block []
setblock ~8 ~4 ~-8 lantern []
fill ~8 ~0 ~8 ~8 ~3 ~8 bamboo_block []
setblock ~8 ~4 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~7 ~1 ~-2 ~7 ~7 ~2 scaffolding []
fill ~6 ~7 ~-2 ~8 ~7 ~2 bamboo_mosaic_slab []
setblock ~7 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-3 ~1 ~2 fletching_table []
setblock ~0 ~1 ~2 target []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 1 slime_ball 11
replaceitem block ~-5 ~1 ~4 slot.container 2 arrow 22
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 4 string 12
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 11
replaceitem block ~-5 ~1 ~4 slot.container 9 iron_ingot 6
replaceitem block ~-5 ~1 ~4 slot.container 10 emerald 5
replaceitem block ~-5 ~1 ~4 slot.container 11 gold_ingot 6
replaceitem block ~-5 ~1 ~4 slot.container 12 golden_apple 4
replaceitem block ~-5 ~1 ~4 slot.container 13 bow 1
replaceitem block ~-5 ~1 ~4 slot.container 14 lantern 9
loot insert ~-5 ~1 ~4 loot "rsf/bamboo_jungle"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon panda ~1 ~1 ~1
summon parrot ~0 ~-4 ~0
