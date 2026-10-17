# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2428/4224 | 主题内编号: b124/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·三层重檐帝王阁楼与秘库 (stony_peaks_grand_pagoda_imperial)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x15 | 地上高度 10格 | 地下深度 5格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-7 ~7 ~-1 ~7 calcite [] replace air
fill ~-7 ~-6 ~-7 ~7 ~-1 ~7 calcite [] replace water
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 polished_deepslate []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 deepslate_bricks []
fill ~-4 ~-6 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-4 ~4 slot.container 0 bone 15
replaceitem block ~4 ~-4 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~-4 ~4 slot.container 2 gunpowder 15
replaceitem block ~4 ~-4 ~4 slot.container 3 string 8
replaceitem block ~4 ~-4 ~4 slot.container 4 arrow 17
replaceitem block ~4 ~-4 ~4 slot.container 5 spider_eye 8
replaceitem block ~4 ~-4 ~4 slot.container 9 shield 1
replaceitem block ~4 ~-4 ~4 slot.container 10 lantern 7
replaceitem block ~4 ~-4 ~4 slot.container 11 iron_ingot 14
replaceitem block ~4 ~-4 ~4 slot.container 12 raw_iron 13
replaceitem block ~4 ~-4 ~4 slot.container 13 coal 22
replaceitem block ~4 ~-4 ~4 slot.container 14 emerald 6
loot insert ~4 ~-4 ~4 loot "rsf/stony_peaks"
loot insert ~4 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-6 ~6 ~5 ~6 calcite []
fill ~-5 ~1 ~-5 ~5 ~4 ~5 air []
fill ~-7 ~5 ~-7 ~7 ~5 ~7 stone_brick_slab []
fill ~-5 ~6 ~-5 ~5 ~10 ~5 deepslate_bricks []
fill ~-4 ~6 ~-4 ~4 ~9 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~6 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~10 ~-7 ~7 ~10 ~7 stone_brick_slab []
fill ~-5 ~11 ~-5 ~5 ~12 ~5 deepslate_bricks []
fill ~-6 ~13 ~-6 ~6 ~13 ~6 deepslate_brick_slab []
setblock ~0 ~14 ~0 iron_block []
setblock ~0 ~15 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x9x5) ---
fill ~8 ~0 ~-9 ~8 ~8 ~-9 cobblestone_wall []
setblock ~8 ~9 ~-9 iron_block []
setblock ~8 ~10 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 arrow 20
replaceitem block ~-5 ~1 ~4 slot.container 1 spider_eye 11
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 8
replaceitem block ~-5 ~1 ~4 slot.container 3 phantom_membrane 9
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 10
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 11
replaceitem block ~-5 ~1 ~4 slot.container 9 cooked_beef 14
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 1
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~-5 ~1 ~4 slot.container 12 water_bucket 1
replaceitem block ~-5 ~1 ~4 slot.container 13 shield 1
replaceitem block ~-5 ~1 ~4 slot.container 14 lantern 8
loot insert ~-5 ~1 ~4 loot "rsf/stony_peaks"
summon silverfish ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
