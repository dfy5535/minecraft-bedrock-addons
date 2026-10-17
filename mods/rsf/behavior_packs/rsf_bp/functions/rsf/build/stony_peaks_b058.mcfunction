# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2362/4224 | 主题内编号: b058/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·十字拱顶家族陵墓 (stony_peaks_crypt_cross_mausoleum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[open_colonnade] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 calcite []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 lantern []
setblock ~4 ~-6 ~0 lantern []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 bone 15
replaceitem block ~0 ~-4 ~3 slot.container 1 rotten_flesh 16
replaceitem block ~0 ~-4 ~3 slot.container 2 gunpowder 15
replaceitem block ~0 ~-4 ~3 slot.container 3 string 8
replaceitem block ~0 ~-4 ~3 slot.container 4 arrow 17
replaceitem block ~0 ~-4 ~3 slot.container 5 spider_eye 8
replaceitem block ~0 ~-4 ~3 slot.container 9 shield 1
replaceitem block ~0 ~-4 ~3 slot.container 10 lantern 7
replaceitem block ~0 ~-4 ~3 slot.container 11 iron_ingot 14
replaceitem block ~0 ~-4 ~3 slot.container 12 raw_iron 13
replaceitem block ~0 ~-4 ~3 slot.container 13 coal 22
replaceitem block ~0 ~-4 ~3 slot.container 14 emerald 6
loot insert ~0 ~-4 ~3 loot "rsf/stony_peaks"
loot insert ~0 ~-4 ~3 loot "chests/simple_dungeon"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 bone 13
replaceitem block ~0 ~-4 ~-3 slot.container 1 rotten_flesh 14
replaceitem block ~0 ~-4 ~-3 slot.container 2 gunpowder 13
replaceitem block ~0 ~-4 ~-3 slot.container 3 string 14
replaceitem block ~0 ~-4 ~-3 slot.container 4 arrow 23
replaceitem block ~0 ~-4 ~-3 slot.container 5 spider_eye 6
replaceitem block ~0 ~-4 ~-3 slot.container 9 shield 1
replaceitem block ~0 ~-4 ~-3 slot.container 10 lantern 6
replaceitem block ~0 ~-4 ~-3 slot.container 11 iron_ingot 13
replaceitem block ~0 ~-4 ~-3 slot.container 12 raw_iron 12
replaceitem block ~0 ~-4 ~-3 slot.container 13 coal 21
replaceitem block ~0 ~-4 ~-3 slot.container 14 emerald 12
loot insert ~0 ~-4 ~-3 loot "rsf/stony_peaks"
loot insert ~0 ~-4 ~-3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~6 ~5 cobblestone []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 cobblestone []
fill ~-1 ~1 ~-4 ~1 ~5 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 spruce_log []
setblock ~-6 ~10 ~-5 lantern []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 spruce_log []
setblock ~-6 ~10 ~5 lantern []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 spruce_log []
setblock ~6 ~10 ~-5 lantern []
fill ~6 ~7 ~5 ~6 ~9 ~5 spruce_log []
setblock ~6 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~4 ~-7 spruce_log []
setblock ~-8 ~5 ~-7 lantern []
fill ~-8 ~0 ~7 ~-8 ~4 ~7 spruce_log []
setblock ~-8 ~5 ~7 lantern []
fill ~8 ~0 ~-7 ~8 ~4 ~-7 spruce_log []
setblock ~8 ~5 ~-7 lantern []
fill ~8 ~0 ~7 ~8 ~4 ~7 spruce_log []
setblock ~8 ~5 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~8 ~0 ~-8 ~8 ~7 ~-8 cobblestone_wall []
setblock ~8 ~8 ~-8 iron_block []
setblock ~8 ~9 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 10
replaceitem block ~-5 ~1 ~3 slot.container 1 string 11
replaceitem block ~-5 ~1 ~3 slot.container 2 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 3 spider_eye 11
replaceitem block ~-5 ~1 ~3 slot.container 4 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 5 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~-5 ~1 ~3 slot.container 10 water_bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 11 shield 1
replaceitem block ~-5 ~1 ~3 slot.container 12 lantern 10
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_ingot 10
replaceitem block ~-5 ~1 ~3 slot.container 14 raw_iron 9
loot insert ~-5 ~1 ~3 loot "rsf/stony_peaks"
summon silverfish ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
