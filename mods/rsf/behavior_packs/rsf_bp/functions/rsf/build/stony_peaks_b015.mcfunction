# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2319/4224 | 主题内编号: b015/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·竖井阶梯深渊地牢 (stony_peaks_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 5格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 calcite []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 cobblestone []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~2 slot.container 0 spider_eye 8
replaceitem block ~3 ~-2 ~2 slot.container 1 ender_pearl 5
replaceitem block ~3 ~-2 ~2 slot.container 2 phantom_membrane 6
replaceitem block ~3 ~-2 ~2 slot.container 3 bone 15
replaceitem block ~3 ~-2 ~2 slot.container 4 rotten_flesh 16
replaceitem block ~3 ~-2 ~2 slot.container 5 gunpowder 15
replaceitem block ~3 ~-2 ~2 slot.container 9 lantern 9
replaceitem block ~3 ~-2 ~2 slot.container 10 iron_ingot 16
replaceitem block ~3 ~-2 ~2 slot.container 11 raw_iron 8
replaceitem block ~3 ~-2 ~2 slot.container 12 coal 17
replaceitem block ~3 ~-2 ~2 slot.container 13 emerald 8
replaceitem block ~3 ~-2 ~2 slot.container 14 cooked_beef 11
loot insert ~3 ~-2 ~2 loot "rsf/stony_peaks"
loot insert ~3 ~-2 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 stone_bricks []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 cobblestone []
fill ~-3 ~5 ~-2 ~3 ~7 ~2 calcite []
fill ~-3 ~1 ~-2 ~3 ~6 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 cobblestone []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 stone_bricks []
fill ~0 ~13 ~0 ~0 ~16 ~0 emerald_block []
setblock ~0 ~17 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 chiseled_stone_bricks []
setblock ~-7 ~5 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 chiseled_stone_bricks []
setblock ~-7 ~5 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 chiseled_stone_bricks []
setblock ~7 ~5 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~4 ~6 chiseled_stone_bricks []
setblock ~7 ~5 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~7 ~0 ~-6 ~7 ~9 ~-6 cobblestone_wall []
setblock ~7 ~10 ~-6 iron_block []
setblock ~7 ~11 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 emerald_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 phantom_membrane 9
replaceitem block ~4 ~1 ~2 slot.container 1 bone 10
replaceitem block ~4 ~1 ~2 slot.container 2 rotten_flesh 11
replaceitem block ~4 ~1 ~2 slot.container 3 gunpowder 10
replaceitem block ~4 ~1 ~2 slot.container 4 string 11
replaceitem block ~4 ~1 ~2 slot.container 5 arrow 20
replaceitem block ~4 ~1 ~2 slot.container 9 water_bucket 1
replaceitem block ~4 ~1 ~2 slot.container 10 shield 1
replaceitem block ~4 ~1 ~2 slot.container 11 lantern 8
replaceitem block ~4 ~1 ~2 slot.container 12 iron_ingot 15
replaceitem block ~4 ~1 ~2 slot.container 13 raw_iron 14
replaceitem block ~4 ~1 ~2 slot.container 14 coal 16
loot insert ~4 ~1 ~2 loot "rsf/stony_peaks"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 rotten_flesh 14
replaceitem block ~-4 ~1 ~3 slot.container 1 gunpowder 13
replaceitem block ~-4 ~1 ~3 slot.container 2 string 14
replaceitem block ~-4 ~1 ~3 slot.container 3 arrow 23
replaceitem block ~-4 ~1 ~3 slot.container 4 spider_eye 6
replaceitem block ~-4 ~1 ~3 slot.container 5 ender_pearl 3
replaceitem block ~-4 ~1 ~3 slot.container 9 water_bucket 1
replaceitem block ~-4 ~1 ~3 slot.container 10 shield 1
replaceitem block ~-4 ~1 ~3 slot.container 11 lantern 6
replaceitem block ~-4 ~1 ~3 slot.container 12 iron_ingot 13
replaceitem block ~-4 ~1 ~3 slot.container 13 raw_iron 12
replaceitem block ~-4 ~1 ~3 slot.container 14 coal 21
loot insert ~-4 ~1 ~3 loot "rsf/stony_peaks"
loot insert ~-4 ~1 ~3 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon silverfish ~-1 ~1 ~1
