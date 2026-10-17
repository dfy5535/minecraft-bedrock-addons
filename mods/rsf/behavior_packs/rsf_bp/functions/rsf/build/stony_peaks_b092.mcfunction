# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2396/4224 | 主题内编号: b092/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·双层重檐供奉宝塔 (stony_peaks_shrine_terrace_pagoda)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 calcite [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 calcite [] replace water
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 deepslate_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 bone 15
replaceitem block ~3 ~-3 ~2 slot.container 1 rotten_flesh 16
replaceitem block ~3 ~-3 ~2 slot.container 2 gunpowder 15
replaceitem block ~3 ~-3 ~2 slot.container 3 string 8
replaceitem block ~3 ~-3 ~2 slot.container 4 arrow 17
replaceitem block ~3 ~-3 ~2 slot.container 5 spider_eye 8
replaceitem block ~3 ~-3 ~2 slot.container 9 coal 21
replaceitem block ~3 ~-3 ~2 slot.container 10 emerald 12
replaceitem block ~3 ~-3 ~2 slot.container 11 cooked_beef 8
replaceitem block ~3 ~-3 ~2 slot.container 12 golden_apple 2
replaceitem block ~3 ~-3 ~2 slot.container 13 iron_pickaxe 1
replaceitem block ~3 ~-3 ~2 slot.container 14 water_bucket 1
loot insert ~3 ~-3 ~2 loot "rsf/stony_peaks"
loot insert ~3 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~4 ~4 calcite []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-6 ~4 ~-5 ~6 ~4 ~5 stone_brick_slab []
fill ~-4 ~5 ~-3 ~4 ~9 ~3 deepslate_bricks []
fill ~-3 ~5 ~-2 ~3 ~8 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~5 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 stone_brick_slab []
fill ~-4 ~10 ~-3 ~4 ~11 ~3 deepslate_bricks []
fill ~-5 ~12 ~-4 ~5 ~12 ~4 deepslate_brick_slab []
setblock ~0 ~13 ~0 iron_block []
setblock ~0 ~14 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 7x5x3) ---
fill ~7 ~0 ~-5 ~7 ~6 ~-5 cobblestone_wall []
setblock ~7 ~7 ~-5 iron_block []
setblock ~7 ~8 ~-5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 campfire []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 arrow 20
replaceitem block ~-4 ~1 ~2 slot.container 1 spider_eye 11
replaceitem block ~-4 ~1 ~2 slot.container 2 ender_pearl 8
replaceitem block ~-4 ~1 ~2 slot.container 3 phantom_membrane 9
replaceitem block ~-4 ~1 ~2 slot.container 4 bone 10
replaceitem block ~-4 ~1 ~2 slot.container 5 rotten_flesh 11
replaceitem block ~-4 ~1 ~2 slot.container 9 shield 1
replaceitem block ~-4 ~1 ~2 slot.container 10 lantern 7
replaceitem block ~-4 ~1 ~2 slot.container 11 iron_ingot 14
replaceitem block ~-4 ~1 ~2 slot.container 12 raw_iron 13
replaceitem block ~-4 ~1 ~2 slot.container 13 coal 22
replaceitem block ~-4 ~1 ~2 slot.container 14 emerald 6
loot insert ~-4 ~1 ~2 loot "rsf/stony_peaks"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon silverfish ~1 ~1 ~1
summon iron_golem ~0 ~-3 ~0
