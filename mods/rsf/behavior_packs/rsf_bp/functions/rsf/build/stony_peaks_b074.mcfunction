# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2378/4224 | 主题内编号: b074/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·十字四象图腾柱阵 (stony_peaks_totem_cross_monoliths)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 calcite []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-3 ~0 slot.container 0 gunpowder 15
replaceitem block ~4 ~-3 ~0 slot.container 1 string 8
replaceitem block ~4 ~-3 ~0 slot.container 2 arrow 17
replaceitem block ~4 ~-3 ~0 slot.container 3 spider_eye 8
replaceitem block ~4 ~-3 ~0 slot.container 4 ender_pearl 5
replaceitem block ~4 ~-3 ~0 slot.container 5 phantom_membrane 6
replaceitem block ~4 ~-3 ~0 slot.container 9 iron_ingot 13
replaceitem block ~4 ~-3 ~0 slot.container 10 raw_iron 12
replaceitem block ~4 ~-3 ~0 slot.container 11 coal 21
replaceitem block ~4 ~-3 ~0 slot.container 12 emerald 12
replaceitem block ~4 ~-3 ~0 slot.container 13 cooked_beef 8
replaceitem block ~4 ~-3 ~0 slot.container 14 golden_apple 2
loot insert ~4 ~-3 ~0 loot "rsf/stony_peaks"
loot insert ~4 ~-3 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~7 ~5 cobblestone []
fill ~-6 ~1 ~-2 ~6 ~7 ~2 cobblestone []
fill ~-1 ~1 ~-4 ~1 ~6 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~6 ~1 air []
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

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 cobblestone []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 lantern []
setblock ~2 ~4 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x6x5) ---
fill ~8 ~0 ~-6 ~8 ~8 ~-6 cobblestone_wall []
setblock ~8 ~9 ~-6 iron_block []
setblock ~8 ~10 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~7 ~0 lantern []
fill ~-4 ~1 ~3 ~-1 ~2 ~3 barrel ["facing_direction"=2]
setblock ~0 ~1 ~3 crafting_table []
setblock ~0 ~1 ~0 chiseled_stone_bricks []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 10
replaceitem block ~-5 ~1 ~3 slot.container 1 string 11
replaceitem block ~-5 ~1 ~3 slot.container 2 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 3 spider_eye 11
replaceitem block ~-5 ~1 ~3 slot.container 4 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 5 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 9 cooked_beef 13
replaceitem block ~-5 ~1 ~3 slot.container 10 golden_apple 7
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_pickaxe 1
replaceitem block ~-5 ~1 ~3 slot.container 12 water_bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 13 shield 1
replaceitem block ~-5 ~1 ~3 slot.container 14 lantern 7
loot insert ~-5 ~1 ~3 loot "rsf/stony_peaks"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon silverfish ~1 ~1 ~1
summon iron_golem ~0 ~-3 ~0
