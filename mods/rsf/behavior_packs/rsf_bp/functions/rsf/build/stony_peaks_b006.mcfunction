# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2310/4224 | 主题内编号: b006/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·重檐飞角四方神龛 (stony_peaks_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 calcite []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 gunpowder 15
replaceitem block ~3 ~-3 ~2 slot.container 1 string 8
replaceitem block ~3 ~-3 ~2 slot.container 2 arrow 17
replaceitem block ~3 ~-3 ~2 slot.container 3 spider_eye 8
replaceitem block ~3 ~-3 ~2 slot.container 4 ender_pearl 5
replaceitem block ~3 ~-3 ~2 slot.container 5 phantom_membrane 6
replaceitem block ~3 ~-3 ~2 slot.container 9 cooked_beef 11
replaceitem block ~3 ~-3 ~2 slot.container 10 golden_apple 5
replaceitem block ~3 ~-3 ~2 slot.container 11 iron_pickaxe 1
replaceitem block ~3 ~-3 ~2 slot.container 12 water_bucket 1
replaceitem block ~3 ~-3 ~2 slot.container 13 shield 1
replaceitem block ~3 ~-3 ~2 slot.container 14 lantern 5
loot insert ~3 ~-3 ~2 loot "rsf/stony_peaks"
loot insert ~3 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 cobblestone []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 spruce_log []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 spruce_log []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 spruce_log []
fill ~5 ~1 ~4 ~5 ~8 ~4 spruce_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 cobblestone_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 stone_bricks []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 stone_brick_slab []
setblock ~0 ~12 ~0 chiseled_stone_bricks []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 deepslate_brick_wall []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~7 ~0 ~-6 ~7 ~5 ~-6 cobblestone_wall []
setblock ~7 ~6 ~-6 iron_block []
setblock ~7 ~7 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 ender_pearl 8
replaceitem block ~-4 ~1 ~2 slot.container 1 phantom_membrane 9
replaceitem block ~-4 ~1 ~2 slot.container 2 bone 10
replaceitem block ~-4 ~1 ~2 slot.container 3 rotten_flesh 11
replaceitem block ~-4 ~1 ~2 slot.container 4 gunpowder 10
replaceitem block ~-4 ~1 ~2 slot.container 5 string 11
replaceitem block ~-4 ~1 ~2 slot.container 9 iron_ingot 10
replaceitem block ~-4 ~1 ~2 slot.container 10 raw_iron 9
replaceitem block ~-4 ~1 ~2 slot.container 11 coal 18
replaceitem block ~-4 ~1 ~2 slot.container 12 emerald 9
replaceitem block ~-4 ~1 ~2 slot.container 13 cooked_beef 12
replaceitem block ~-4 ~1 ~2 slot.container 14 golden_apple 6
loot insert ~-4 ~1 ~2 loot "rsf/stony_peaks"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
