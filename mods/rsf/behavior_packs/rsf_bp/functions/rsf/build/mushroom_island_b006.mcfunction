# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2950/4224 | 主题内编号: b006/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·重檐飞角四方神龛 (mushroom_island_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_mushroom_block [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_mushroom_block [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 brown_mushroom_block []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 gunpowder 17
replaceitem block ~2 ~-2 ~3 slot.container 1 string 10
replaceitem block ~2 ~-2 ~3 slot.container 2 spider_eye 9
replaceitem block ~2 ~-2 ~3 slot.container 3 slime_ball 10
replaceitem block ~2 ~-2 ~3 slot.container 4 ender_pearl 7
replaceitem block ~2 ~-2 ~3 slot.container 5 blaze_rod 6
replaceitem block ~2 ~-2 ~3 slot.container 9 brown_mushroom 18
replaceitem block ~2 ~-2 ~3 slot.container 10 golden_apple 2
replaceitem block ~2 ~-2 ~3 slot.container 11 diamond 3
replaceitem block ~2 ~-2 ~3 slot.container 12 iron_ingot 10
replaceitem block ~2 ~-2 ~3 slot.container 13 bowl 9
replaceitem block ~2 ~-2 ~3 slot.container 14 shroomlight 8
loot insert ~2 ~-2 ~3 loot "rsf/mushroom_island"
loot insert ~2 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-5 ~4 ~7 ~5 red_mushroom_block []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 mushroom_stem []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 mushroom_stem []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 mushroom_stem []
fill ~4 ~1 ~5 ~4 ~7 ~5 mushroom_stem []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 stone_brick_slab []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 brown_mushroom_block []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 stone_brick_slab []
setblock ~0 ~11 ~0 shroomlight []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~7 ~-2 mushroom_stem []
fill ~-4 ~0 ~2 ~-4 ~7 ~2 mushroom_stem []
fill ~4 ~0 ~-2 ~4 ~7 ~-2 mushroom_stem []
fill ~4 ~0 ~2 ~4 ~7 ~2 mushroom_stem []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 5x6x2) ---
fill ~5 ~0 ~-1 ~5 ~4 ~-1 mushroom_stem []
fill ~4 ~5 ~-2 ~6 ~5 ~0 red_mushroom_block []
setblock ~5 ~4 ~0 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 ender_pearl 10
replaceitem block ~-3 ~1 ~4 slot.container 1 blaze_rod 9
replaceitem block ~-3 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 3 bone 13
replaceitem block ~-3 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-3 ~1 ~4 slot.container 5 string 13
replaceitem block ~-3 ~1 ~4 slot.container 9 mushroom_stew 1
replaceitem block ~-3 ~1 ~4 slot.container 10 suspicious_stew 1
replaceitem block ~-3 ~1 ~4 slot.container 11 mycelium 13
replaceitem block ~-3 ~1 ~4 slot.container 12 red_mushroom 18
replaceitem block ~-3 ~1 ~4 slot.container 13 brown_mushroom 12
replaceitem block ~-3 ~1 ~4 slot.container 14 golden_apple 3
loot insert ~-3 ~1 ~4 loot "rsf/mushroom_island"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 1 bone 16
replaceitem block ~3 ~1 ~4 slot.container 2 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 3 string 16
replaceitem block ~3 ~1 ~4 slot.container 4 spider_eye 15
replaceitem block ~3 ~1 ~4 slot.container 5 slime_ball 8
replaceitem block ~3 ~1 ~4 slot.container 9 mushroom_stew 1
replaceitem block ~3 ~1 ~4 slot.container 10 suspicious_stew 1
replaceitem block ~3 ~1 ~4 slot.container 11 mycelium 11
replaceitem block ~3 ~1 ~4 slot.container 12 red_mushroom 16
replaceitem block ~3 ~1 ~4 slot.container 13 brown_mushroom 17
replaceitem block ~3 ~1 ~4 slot.container 14 golden_apple 8
loot insert ~3 ~1 ~4 loot "rsf/mushroom_island"
loot insert ~3 ~1 ~4 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon mooshroom ~1 ~1 ~1
