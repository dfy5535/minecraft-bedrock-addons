# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2390/4224 | 主题内编号: b086/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·重装矿石金库碉堡 (stony_peaks_mine_fortified_ore_vault)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 calcite []
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
fill ~-6 ~1 ~-5 ~6 ~6 ~5 cobblestone []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~8 ~-4 mossy_cobblestone []
setblock ~-6 ~9 ~-5 lantern []
fill ~-6 ~1 ~4 ~-5 ~8 ~5 mossy_cobblestone []
setblock ~-6 ~9 ~4 lantern []
fill ~5 ~1 ~-5 ~6 ~8 ~-4 mossy_cobblestone []
setblock ~5 ~9 ~-5 lantern []
fill ~5 ~1 ~4 ~6 ~8 ~5 mossy_cobblestone []
setblock ~5 ~9 ~4 lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 mossy_cobblestone []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 cobblestone_wall []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 air []
setblock ~-6 ~7 ~-5 spruce_log []
setblock ~-6 ~8 ~-5 lantern []
setblock ~-6 ~7 ~5 spruce_log []
setblock ~-6 ~8 ~5 lantern []
setblock ~6 ~7 ~-5 spruce_log []
setblock ~6 ~8 ~-5 lantern []
setblock ~6 ~7 ~5 spruce_log []
setblock ~6 ~8 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x6x2) ---
fill ~8 ~0 ~-6 ~8 ~5 ~-6 cobblestone_wall []
setblock ~8 ~6 ~-6 iron_block []
setblock ~8 ~7 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 1 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 10
replaceitem block ~-5 ~1 ~3 slot.container 3 rotten_flesh 11
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 10
replaceitem block ~-5 ~1 ~3 slot.container 5 string 11
replaceitem block ~-5 ~1 ~3 slot.container 9 iron_ingot 13
replaceitem block ~-5 ~1 ~3 slot.container 10 raw_iron 12
replaceitem block ~-5 ~1 ~3 slot.container 11 coal 21
replaceitem block ~-5 ~1 ~3 slot.container 12 emerald 12
replaceitem block ~-5 ~1 ~3 slot.container 13 cooked_beef 8
replaceitem block ~-5 ~1 ~3 slot.container 14 golden_apple 2
loot insert ~-5 ~1 ~3 loot "rsf/stony_peaks"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon silverfish ~1 ~1 ~1
summon iron_golem ~0 ~-3 ~0
