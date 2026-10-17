# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2330/4224 | 主题内编号: b026/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·尖顶信标引航高塔 (stony_peaks_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 11x9 | 地上高度 11格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 cobblestone [] replace air
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 cobblestone [] replace water
fill ~-5 ~1 ~-4 ~5 ~13 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 calcite []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 deepslate_bricks []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 rotten_flesh 16
replaceitem block ~4 ~-3 ~4 slot.container 1 gunpowder 15
replaceitem block ~4 ~-3 ~4 slot.container 2 string 8
replaceitem block ~4 ~-3 ~4 slot.container 3 arrow 17
replaceitem block ~4 ~-3 ~4 slot.container 4 spider_eye 8
replaceitem block ~4 ~-3 ~4 slot.container 5 ender_pearl 5
replaceitem block ~4 ~-3 ~4 slot.container 9 water_bucket 1
replaceitem block ~4 ~-3 ~4 slot.container 10 shield 1
replaceitem block ~4 ~-3 ~4 slot.container 11 lantern 5
replaceitem block ~4 ~-3 ~4 slot.container 12 iron_ingot 12
replaceitem block ~4 ~-3 ~4 slot.container 13 raw_iron 11
replaceitem block ~4 ~-3 ~4 slot.container 14 coal 20
loot insert ~4 ~-3 ~4 loot "rsf/stony_peaks"
loot insert ~4 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-3 ~4 ~11 ~3 cobblestone []
fill ~-3 ~1 ~-2 ~3 ~10 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~12 ~-3 air []
fill ~4 ~1 ~-3 ~4 ~12 ~-3 air []
fill ~-4 ~1 ~3 ~-4 ~12 ~3 air []
fill ~4 ~1 ~3 ~4 ~12 ~3 air []
fill ~-3 ~1 ~-2 ~-3 ~11 ~-2 spruce_log []
fill ~3 ~1 ~-2 ~3 ~11 ~-2 spruce_log []
fill ~-3 ~1 ~2 ~-3 ~11 ~2 spruce_log []
fill ~3 ~1 ~2 ~3 ~11 ~2 spruce_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 mossy_cobblestone []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 cobblestone []
fill ~0 ~17 ~0 ~0 ~20 ~0 chiseled_stone_bricks []
setblock ~0 ~21 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~10 ~-2 spruce_log []
fill ~-5 ~0 ~2 ~-5 ~10 ~2 spruce_log []
fill ~5 ~0 ~-2 ~5 ~10 ~-2 spruce_log []
fill ~5 ~0 ~2 ~5 ~10 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 6x4x2) ---
fill ~6 ~0 ~-4 ~6 ~5 ~-4 cobblestone_wall []
setblock ~6 ~6 ~-4 iron_block []
setblock ~6 ~7 ~-4 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~10 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 emerald_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~1 slot.container 0 gunpowder 10
replaceitem block ~-3 ~1 ~1 slot.container 1 string 11
replaceitem block ~-3 ~1 ~1 slot.container 2 arrow 20
replaceitem block ~-3 ~1 ~1 slot.container 3 spider_eye 11
replaceitem block ~-3 ~1 ~1 slot.container 4 ender_pearl 8
replaceitem block ~-3 ~1 ~1 slot.container 5 phantom_membrane 9
replaceitem block ~-3 ~1 ~1 slot.container 9 iron_ingot 16
replaceitem block ~-3 ~1 ~1 slot.container 10 raw_iron 8
replaceitem block ~-3 ~1 ~1 slot.container 11 coal 17
replaceitem block ~-3 ~1 ~1 slot.container 12 emerald 8
replaceitem block ~-3 ~1 ~1 slot.container 13 cooked_beef 11
replaceitem block ~-3 ~1 ~1 slot.container 14 golden_apple 5
loot insert ~-3 ~1 ~1 loot "rsf/stony_peaks"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon silverfish ~1 ~1 ~1
summon iron_golem ~0 ~-3 ~0
