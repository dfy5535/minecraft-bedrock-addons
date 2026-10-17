# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2358/4224 | 主题内编号: b054/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·切石与伐木工匠棚屋 (stony_peaks_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 cobblestone [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 cobblestone [] replace water
fill ~-7 ~1 ~-5 ~7 ~8 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 cobblestone_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 stone_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 calcite []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-4 ~6 ~-1 ~4 mossy_cobblestone []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~7 ~4 cobblestone []
fill ~2 ~1 ~-4 ~6 ~7 ~4 cobblestone []
fill ~-5 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 mossy_cobblestone []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-5 ~-7 ~7 ~5 stone_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-5 ~7 ~7 ~5 stone_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-4 ~-6 ~8 ~4 stone_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-4 ~6 ~8 ~4 stone_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-4 ~5 ~8 ~4 cobblestone_slab []
fill ~0 ~9 ~-5 ~0 ~9 ~5 mossy_cobblestone []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-7 ~-9 ~4 ~-7 spruce_log []
setblock ~-9 ~5 ~-7 torch []
fill ~-9 ~0 ~7 ~-9 ~4 ~7 spruce_log []
setblock ~-9 ~5 ~7 torch []
fill ~9 ~0 ~-7 ~9 ~4 ~-7 spruce_log []
setblock ~9 ~5 ~-7 torch []
fill ~9 ~0 ~7 ~9 ~4 ~7 spruce_log []
setblock ~9 ~5 ~7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x6x5) ---
fill ~8 ~0 ~-6 ~8 ~8 ~-6 cobblestone_wall []
setblock ~8 ~9 ~-6 iron_block []
setblock ~8 ~10 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-5 ~1 ~2 smithing_table []
setblock ~-4 ~1 ~2 anvil []
setblock ~4 ~1 ~2 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 ender_pearl 8
replaceitem block ~-5 ~1 ~2 slot.container 1 phantom_membrane 9
replaceitem block ~-5 ~1 ~2 slot.container 2 bone 10
replaceitem block ~-5 ~1 ~2 slot.container 3 rotten_flesh 11
replaceitem block ~-5 ~1 ~2 slot.container 4 gunpowder 10
replaceitem block ~-5 ~1 ~2 slot.container 5 string 11
replaceitem block ~-5 ~1 ~2 slot.container 9 cooked_beef 14
replaceitem block ~-5 ~1 ~2 slot.container 10 golden_apple 1
replaceitem block ~-5 ~1 ~2 slot.container 11 iron_pickaxe 1
replaceitem block ~-5 ~1 ~2 slot.container 12 water_bucket 1
replaceitem block ~-5 ~1 ~2 slot.container 13 shield 1
replaceitem block ~-5 ~1 ~2 slot.container 14 lantern 8
loot insert ~-5 ~1 ~2 loot "rsf/stony_peaks"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
