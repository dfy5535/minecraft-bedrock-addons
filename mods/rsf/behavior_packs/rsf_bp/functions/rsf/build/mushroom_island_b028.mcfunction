# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2972/4224 | 主题内编号: b028/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·重檐挑角古钟楼 (mushroom_island_tower_pagoda_bell)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[dome_glass] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 2格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log2
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mycelium []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 brown_mushroom_block []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-5 ~4 ~-1 ~5 red_mushroom_block []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~4 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-5 ~4 ~-6 ~5 ~4 ~6 stone_brick_slab []
fill ~-3 ~5 ~-4 ~3 ~9 ~4 quartz_block []
fill ~-2 ~5 ~-3 ~2 ~8 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~6 ~-5 ~4 ~6 ~5 mushroom_stem []
fill ~-3 ~7 ~-4 ~3 ~8 ~4 glass []
fill ~-2 ~7 ~-3 ~2 ~7 ~3 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~3 ~-7 mushroom_stem []
setblock ~-6 ~4 ~-7 lantern []
fill ~-6 ~0 ~7 ~-6 ~3 ~7 mushroom_stem []
setblock ~-6 ~4 ~7 lantern []
fill ~6 ~0 ~-7 ~6 ~3 ~-7 mushroom_stem []
setblock ~6 ~4 ~-7 lantern []
fill ~6 ~0 ~7 ~6 ~3 ~7 mushroom_stem []
setblock ~6 ~4 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 5x7x4) ---
fill ~5 ~0 ~1 ~5 ~6 ~1 mushroom_stem []
fill ~4 ~7 ~0 ~6 ~7 ~2 red_mushroom_block []
setblock ~5 ~6 ~2 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 spider_eye 12
replaceitem block ~-3 ~1 ~4 slot.container 1 slime_ball 13
replaceitem block ~-3 ~1 ~4 slot.container 2 ender_pearl 10
replaceitem block ~-3 ~1 ~4 slot.container 3 blaze_rod 9
replaceitem block ~-3 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 13
replaceitem block ~-3 ~1 ~4 slot.container 9 diamond 6
replaceitem block ~-3 ~1 ~4 slot.container 10 iron_ingot 13
replaceitem block ~-3 ~1 ~4 slot.container 11 bowl 12
replaceitem block ~-3 ~1 ~4 slot.container 12 shroomlight 4
replaceitem block ~-3 ~1 ~4 slot.container 13 mushroom_stew 1
replaceitem block ~-3 ~1 ~4 slot.container 14 suspicious_stew 1
loot insert ~-3 ~1 ~4 loot "rsf/mushroom_island"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ender_pearl 5
replaceitem block ~3 ~1 ~4 slot.container 1 blaze_rod 4
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 3 bone 16
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 5 string 16
replaceitem block ~3 ~1 ~4 slot.container 9 diamond 4
replaceitem block ~3 ~1 ~4 slot.container 10 iron_ingot 11
replaceitem block ~3 ~1 ~4 slot.container 11 bowl 10
replaceitem block ~3 ~1 ~4 slot.container 12 shroomlight 9
replaceitem block ~3 ~1 ~4 slot.container 13 mushroom_stew 1
replaceitem block ~3 ~1 ~4 slot.container 14 suspicious_stew 1
loot insert ~3 ~1 ~4 loot "rsf/mushroom_island"
loot insert ~3 ~1 ~4 loot "chests/simple_dungeon"
summon slime ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~2 ~0
