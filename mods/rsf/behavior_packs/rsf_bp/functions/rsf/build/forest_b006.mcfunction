# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0134/4224 | 主题内编号: b006/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·重檐飞角四方神龛 (forest_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 spruce_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 oak_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 mossy_stone_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 emerald_block []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~0 slot.container 1 rotten_flesh 15
replaceitem block ~3 ~-3 ~0 slot.container 2 bone 16
replaceitem block ~3 ~-3 ~0 slot.container 3 string 17
replaceitem block ~3 ~-3 ~0 slot.container 4 spider_eye 5
replaceitem block ~3 ~-3 ~0 slot.container 5 gunpowder 7
replaceitem block ~3 ~-3 ~0 slot.container 9 sweet_berries 10
replaceitem block ~3 ~-3 ~0 slot.container 10 cooked_porkchop 7
replaceitem block ~3 ~-3 ~0 slot.container 11 iron_ingot 8
replaceitem block ~3 ~-3 ~0 slot.container 12 oak_log 19
replaceitem block ~3 ~-3 ~0 slot.container 13 emerald 7
replaceitem block ~3 ~-3 ~0 slot.container 14 golden_apple 6
loot insert ~3 ~-3 ~0 loot "rsf/forest"
loot insert ~3 ~-3 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-5 ~4 ~9 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~8 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 spruce_log []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 spruce_log []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 spruce_log []
fill ~4 ~1 ~5 ~4 ~9 ~5 spruce_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-4 ~2 ~0 spruce_fence []
setblock ~4 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 spruce_slab []
fill ~-3 ~10 ~-4 ~3 ~11 ~4 cobblestone []
fill ~-4 ~12 ~-5 ~4 ~12 ~5 stone_brick_slab []
setblock ~0 ~13 ~0 bookshelf []
setblock ~0 ~14 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 spruce_log []
setblock ~-6 ~6 ~-7 campfire []
fill ~-6 ~0 ~7 ~-6 ~5 ~7 spruce_log []
setblock ~-6 ~6 ~7 campfire []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 spruce_log []
setblock ~6 ~6 ~-7 campfire []
fill ~6 ~0 ~7 ~6 ~5 ~7 spruce_log []
setblock ~6 ~6 ~7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~-7 ~0 ~-8 ~-7 ~7 ~-8 spruce_log []
fill ~7 ~0 ~-8 ~7 ~7 ~-8 spruce_log []
fill ~-7 ~7 ~-8 ~7 ~7 ~-8 moss_block []
setblock ~-2 ~8 ~-8 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 slime_ball 10
replaceitem block ~-3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 2 rotten_flesh 10
replaceitem block ~-3 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 4 string 12
replaceitem block ~-3 ~1 ~4 slot.container 5 spider_eye 8
replaceitem block ~-3 ~1 ~4 slot.container 9 cooked_porkchop 7
replaceitem block ~-3 ~1 ~4 slot.container 10 iron_ingot 8
replaceitem block ~-3 ~1 ~4 slot.container 11 oak_log 19
replaceitem block ~-3 ~1 ~4 slot.container 12 emerald 7
replaceitem block ~-3 ~1 ~4 slot.container 13 golden_apple 6
replaceitem block ~-3 ~1 ~4 slot.container 14 iron_axe 1
loot insert ~-3 ~1 ~4 loot "rsf/forest"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 13
replaceitem block ~3 ~1 ~4 slot.container 1 bone 14
replaceitem block ~3 ~1 ~4 slot.container 2 string 15
replaceitem block ~3 ~1 ~4 slot.container 3 spider_eye 11
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 13
replaceitem block ~3 ~1 ~4 slot.container 5 arrow 16
replaceitem block ~3 ~1 ~4 slot.container 9 cooked_porkchop 12
replaceitem block ~3 ~1 ~4 slot.container 10 iron_ingot 6
replaceitem block ~3 ~1 ~4 slot.container 11 oak_log 17
replaceitem block ~3 ~1 ~4 slot.container 12 emerald 5
replaceitem block ~3 ~1 ~4 slot.container 13 golden_apple 4
replaceitem block ~3 ~1 ~4 slot.container 14 iron_axe 1
loot insert ~3 ~1 ~4 loot "rsf/forest"
loot insert ~3 ~1 ~4 loot "chests/simple_dungeon"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon wolf ~0 ~-2 ~0
