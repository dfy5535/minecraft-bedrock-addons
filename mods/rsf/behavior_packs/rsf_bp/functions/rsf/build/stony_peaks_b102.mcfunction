# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2406/4224 | 主题内编号: b102/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·双子箭塔联防碉楼 (stony_peaks_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[trial_pit] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 17x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 cobblestone [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 cobblestone [] replace water
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 cobblestone_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 stone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 calcite []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 emerald_block []
setblock ~-4 ~-5 ~-3 lantern []
setblock ~4 ~-5 ~3 lantern []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 string 8
replaceitem block ~0 ~-3 ~3 slot.container 1 arrow 17
replaceitem block ~0 ~-3 ~3 slot.container 2 spider_eye 8
replaceitem block ~0 ~-3 ~3 slot.container 3 ender_pearl 5
replaceitem block ~0 ~-3 ~3 slot.container 4 phantom_membrane 6
replaceitem block ~0 ~-3 ~3 slot.container 5 bone 15
replaceitem block ~0 ~-3 ~3 slot.container 9 water_bucket 1
replaceitem block ~0 ~-3 ~3 slot.container 10 shield 1
replaceitem block ~0 ~-3 ~3 slot.container 11 lantern 8
replaceitem block ~0 ~-3 ~3 slot.container 12 iron_ingot 15
replaceitem block ~0 ~-3 ~3 slot.container 13 raw_iron 14
replaceitem block ~0 ~-3 ~3 slot.container 14 coal 16
loot insert ~0 ~-3 ~3 loot "rsf/stony_peaks"
loot insert ~0 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~9 ~4 cobblestone []
fill ~2 ~1 ~-4 ~7 ~9 ~4 cobblestone []
fill ~-6 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~6 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 mossy_cobblestone []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~8 ~-4 ~7 ~8 ~4 mossy_cobblestone []
fill ~-7 ~9 ~-4 ~7 ~9 ~4 cobblestone_wall []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 air []
setblock ~-7 ~9 ~-4 spruce_log []
setblock ~-7 ~10 ~-4 lantern []
setblock ~-7 ~9 ~4 spruce_log []
setblock ~-7 ~10 ~4 lantern []
setblock ~7 ~9 ~-4 spruce_log []
setblock ~7 ~10 ~-4 lantern []
setblock ~7 ~9 ~4 spruce_log []
setblock ~7 ~10 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~7 ~-2 spruce_log []
fill ~-8 ~0 ~2 ~-8 ~7 ~2 spruce_log []
fill ~8 ~0 ~-2 ~8 ~7 ~-2 spruce_log []
fill ~8 ~0 ~2 ~8 ~7 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 9x6x3) ---
fill ~9 ~0 ~-6 ~9 ~6 ~-6 cobblestone_wall []
setblock ~9 ~7 ~-6 iron_block []
setblock ~9 ~8 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-6 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~6 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 ender_pearl 8
replaceitem block ~-6 ~1 ~2 slot.container 1 phantom_membrane 9
replaceitem block ~-6 ~1 ~2 slot.container 2 bone 10
replaceitem block ~-6 ~1 ~2 slot.container 3 rotten_flesh 11
replaceitem block ~-6 ~1 ~2 slot.container 4 gunpowder 10
replaceitem block ~-6 ~1 ~2 slot.container 5 string 11
replaceitem block ~-6 ~1 ~2 slot.container 9 shield 1
replaceitem block ~-6 ~1 ~2 slot.container 10 lantern 10
replaceitem block ~-6 ~1 ~2 slot.container 11 iron_ingot 10
replaceitem block ~-6 ~1 ~2 slot.container 12 raw_iron 9
replaceitem block ~-6 ~1 ~2 slot.container 13 coal 18
replaceitem block ~-6 ~1 ~2 slot.container 14 emerald 9
loot insert ~-6 ~1 ~2 loot "rsf/stony_peaks"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
