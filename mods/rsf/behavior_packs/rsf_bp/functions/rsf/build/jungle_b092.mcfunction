# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0988/4224 | 主题内编号: b092/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·双层重檐供奉宝塔 (jungle_shrine_terrace_pagoda)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 3格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 jungle_planks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 cracked_stone_bricks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~2 ~-2 ~3 slot.container 1 bone 16
replaceitem block ~2 ~-2 ~3 slot.container 2 string 19
replaceitem block ~2 ~-2 ~3 slot.container 3 spider_eye 6
replaceitem block ~2 ~-2 ~3 slot.container 4 gunpowder 9
replaceitem block ~2 ~-2 ~3 slot.container 5 slime_ball 8
replaceitem block ~2 ~-2 ~3 slot.container 9 iron_sword 1
replaceitem block ~2 ~-2 ~3 slot.container 10 torch 21
replaceitem block ~2 ~-2 ~3 slot.container 11 melon_slice 22
replaceitem block ~2 ~-2 ~3 slot.container 12 cocoa_beans 8
replaceitem block ~2 ~-2 ~3 slot.container 13 bamboo 13
replaceitem block ~2 ~-2 ~3 slot.container 14 jungle_log 18
loot insert ~2 ~-2 ~3 loot "rsf/jungle"
loot insert ~2 ~-2 ~3 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~5 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~4 ~4 air []
fill ~-5 ~5 ~-6 ~5 ~5 ~6 stone_brick_slab []
fill ~-3 ~6 ~-4 ~3 ~10 ~4 cracked_stone_bricks []
fill ~-2 ~6 ~-3 ~2 ~9 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~6 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~10 ~-6 ~5 ~10 ~6 stone_brick_slab []
fill ~-3 ~11 ~-4 ~3 ~12 ~4 cracked_stone_bricks []
fill ~-4 ~13 ~-5 ~4 ~13 ~5 jungle_slab []
setblock ~0 ~14 ~0 emerald_block []
setblock ~0 ~15 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 jungle_log []
fill ~-7 ~0 ~2 ~-7 ~6 ~2 jungle_log []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 jungle_log []
fill ~7 ~0 ~2 ~7 ~6 ~2 jungle_log []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~-7 ~0 ~7 ~-8 ~4 ~8 mossy_stone_bricks []
setblock ~-7 ~5 ~7 gold_block []
setblock ~-7 ~6 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 smithing_table []
setblock ~-3 ~1 ~4 anvil []
setblock ~3 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-3 ~1 ~4 slot.container 1 slime_ball 11
replaceitem block ~-3 ~1 ~4 slot.container 2 arrow 22
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 9 gold_ingot 7
replaceitem block ~-3 ~1 ~4 slot.container 10 emerald 6
replaceitem block ~-3 ~1 ~4 slot.container 11 iron_ingot 9
replaceitem block ~-3 ~1 ~4 slot.container 12 golden_apple 5
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_sword 1
replaceitem block ~-3 ~1 ~4 slot.container 14 torch 22
loot insert ~-3 ~1 ~4 loot "rsf/jungle"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 arrow 17
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 3 bone 14
replaceitem block ~3 ~1 ~4 slot.container 4 string 17
replaceitem block ~3 ~1 ~4 slot.container 5 spider_eye 12
replaceitem block ~3 ~1 ~4 slot.container 9 gold_ingot 12
replaceitem block ~3 ~1 ~4 slot.container 10 emerald 4
replaceitem block ~3 ~1 ~4 slot.container 11 iron_ingot 7
replaceitem block ~3 ~1 ~4 slot.container 12 golden_apple 3
replaceitem block ~3 ~1 ~4 slot.container 13 iron_sword 1
replaceitem block ~3 ~1 ~4 slot.container 14 torch 20
loot insert ~3 ~1 ~4 loot "rsf/jungle"
loot insert ~3 ~1 ~4 loot "chests/jungle_temple"
summon witch ~0 ~1 ~-1
summon ocelot ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
