# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2350/4224 | 主题内编号: b046/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·要塞校场比武演武台 (stony_peaks_arena_fortress_yard)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 cobblestone [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 cobblestone [] replace water
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 cobblestone_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 calcite []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 phantom_membrane 6
replaceitem block ~-3 ~-3 ~2 slot.container 1 bone 15
replaceitem block ~-3 ~-3 ~2 slot.container 2 rotten_flesh 16
replaceitem block ~-3 ~-3 ~2 slot.container 3 gunpowder 15
replaceitem block ~-3 ~-3 ~2 slot.container 4 string 8
replaceitem block ~-3 ~-3 ~2 slot.container 5 arrow 17
replaceitem block ~-3 ~-3 ~2 slot.container 9 emerald 6
replaceitem block ~-3 ~-3 ~2 slot.container 10 cooked_beef 9
replaceitem block ~-3 ~-3 ~2 slot.container 11 golden_apple 3
replaceitem block ~-3 ~-3 ~2 slot.container 12 iron_pickaxe 1
replaceitem block ~-3 ~-3 ~2 slot.container 13 water_bucket 1
replaceitem block ~-3 ~-3 ~2 slot.container 14 shield 1
loot insert ~-3 ~-3 ~2 loot "rsf/stony_peaks"
loot insert ~-3 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~6 ~6 cobblestone []
fill ~-6 ~1 ~-5 ~6 ~5 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~8 ~-5 mossy_cobblestone []
setblock ~-7 ~9 ~-6 lantern []
fill ~-7 ~1 ~5 ~-6 ~8 ~6 mossy_cobblestone []
setblock ~-7 ~9 ~5 lantern []
fill ~6 ~1 ~-6 ~7 ~8 ~-5 mossy_cobblestone []
setblock ~6 ~9 ~-6 lantern []
fill ~6 ~1 ~5 ~7 ~8 ~6 mossy_cobblestone []
setblock ~6 ~9 ~5 lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 mossy_cobblestone []
fill ~-7 ~7 ~-6 ~7 ~7 ~6 cobblestone_wall []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 air []
setblock ~-7 ~7 ~-6 spruce_log []
setblock ~-7 ~8 ~-6 lantern []
setblock ~-7 ~7 ~6 spruce_log []
setblock ~-7 ~8 ~6 lantern []
setblock ~7 ~7 ~-6 spruce_log []
setblock ~7 ~8 ~-6 lantern []
setblock ~7 ~7 ~6 spruce_log []
setblock ~7 ~8 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~8 ~0 ~-2 ~10 ~8 ~2 stone_bricks []
fill ~8 ~1 ~-1 ~9 ~7 ~1 air []
fill ~7 ~1 ~0 ~8 ~2 ~0 air []
setblock ~9 ~9 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 9x9x2) ---
fill ~9 ~0 ~-9 ~9 ~5 ~-9 cobblestone_wall []
setblock ~9 ~6 ~-9 iron_block []
setblock ~9 ~7 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 emerald_block []
setblock ~0 ~1 ~0 iron_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 ender_pearl 8
replaceitem block ~-6 ~1 ~4 slot.container 1 phantom_membrane 9
replaceitem block ~-6 ~1 ~4 slot.container 2 bone 10
replaceitem block ~-6 ~1 ~4 slot.container 3 rotten_flesh 11
replaceitem block ~-6 ~1 ~4 slot.container 4 gunpowder 10
replaceitem block ~-6 ~1 ~4 slot.container 5 string 11
replaceitem block ~-6 ~1 ~4 slot.container 9 iron_ingot 15
replaceitem block ~-6 ~1 ~4 slot.container 10 raw_iron 14
replaceitem block ~-6 ~1 ~4 slot.container 11 coal 16
replaceitem block ~-6 ~1 ~4 slot.container 12 emerald 7
replaceitem block ~-6 ~1 ~4 slot.container 13 cooked_beef 10
replaceitem block ~-6 ~1 ~4 slot.container 14 golden_apple 4
loot insert ~-6 ~1 ~4 loot "rsf/stony_peaks"
summon silverfish ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
