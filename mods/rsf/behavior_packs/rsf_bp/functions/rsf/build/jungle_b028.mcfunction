# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0924/4224 | 主题内编号: b028/128
# 地形主题 #08: 热带丛林与丛林边缘 (jungle) —— 带苔石藤蔓阶梯神庙与树冠吊桥
# 建筑名称: 丛林古神系·重檐挑角古钟楼 (jungle_tower_pagoda_bell)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 11x13 | 地上高度 11格 | 地下深度 2格
# 适用群系: jungle, jungle_hills, jungle_edge, jungle_mutated, jungle_edge_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~15 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~15 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~15 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~15 ~7 air [] replace log2
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 jungle_planks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 gold_block []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~0 slot.container 1 rotten_flesh 17
replaceitem block ~3 ~-3 ~0 slot.container 2 bone 16
replaceitem block ~3 ~-3 ~0 slot.container 3 string 19
replaceitem block ~3 ~-3 ~0 slot.container 4 spider_eye 6
replaceitem block ~3 ~-3 ~0 slot.container 5 gunpowder 9
replaceitem block ~3 ~-3 ~0 slot.container 9 emerald 9
replaceitem block ~3 ~-3 ~0 slot.container 10 iron_ingot 12
replaceitem block ~3 ~-3 ~0 slot.container 11 golden_apple 1
replaceitem block ~3 ~-3 ~0 slot.container 12 iron_sword 1
replaceitem block ~3 ~-3 ~0 slot.container 13 torch 18
replaceitem block ~3 ~-3 ~0 slot.container 14 melon_slice 19
loot insert ~3 ~-3 ~0 loot "rsf/jungle"
loot insert ~3 ~-3 ~0 loot "chests/jungle_temple"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~5 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~4 ~4 air []
fill ~-5 ~5 ~-6 ~5 ~5 ~6 stone_brick_slab []
fill ~-3 ~6 ~-4 ~3 ~11 ~4 cracked_stone_bricks []
fill ~-2 ~6 ~-3 ~2 ~10 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~6 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~11 ~-6 ~5 ~11 ~6 stone_brick_slab []
fill ~-3 ~12 ~-4 ~3 ~13 ~4 cracked_stone_bricks []
fill ~-4 ~14 ~-5 ~4 ~14 ~5 jungle_slab []
setblock ~0 ~15 ~0 emerald_block []
setblock ~0 ~16 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 jungle_log []
setblock ~-6 ~6 ~-7 campfire []
fill ~-6 ~0 ~7 ~-6 ~5 ~7 jungle_log []
setblock ~-6 ~6 ~7 campfire []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 jungle_log []
setblock ~6 ~6 ~-7 campfire []
fill ~6 ~0 ~7 ~6 ~5 ~7 jungle_log []
setblock ~6 ~6 ~7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (jungle 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~-7 ~0 ~6 ~-8 ~5 ~7 mossy_stone_bricks []
setblock ~-7 ~6 ~6 gold_block []
setblock ~-7 ~7 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-3 ~1 ~4 slot.container 1 slime_ball 11
replaceitem block ~-3 ~1 ~4 slot.container 2 arrow 22
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 9 bamboo 12
replaceitem block ~-3 ~1 ~4 slot.container 10 jungle_log 17
replaceitem block ~-3 ~1 ~4 slot.container 11 gold_ingot 8
replaceitem block ~-3 ~1 ~4 slot.container 12 emerald 7
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_ingot 10
replaceitem block ~-3 ~1 ~4 slot.container 14 golden_apple 6
loot insert ~-3 ~1 ~4 loot "rsf/jungle"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 arrow 17
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 3 bone 14
replaceitem block ~3 ~1 ~4 slot.container 4 string 17
replaceitem block ~3 ~1 ~4 slot.container 5 spider_eye 12
replaceitem block ~3 ~1 ~4 slot.container 9 bamboo 17
replaceitem block ~3 ~1 ~4 slot.container 10 jungle_log 22
replaceitem block ~3 ~1 ~4 slot.container 11 gold_ingot 6
replaceitem block ~3 ~1 ~4 slot.container 12 emerald 5
replaceitem block ~3 ~1 ~4 slot.container 13 iron_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 14 golden_apple 4
loot insert ~3 ~1 ~4 loot "rsf/jungle"
loot insert ~3 ~1 ~4 loot "chests/jungle_temple"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
