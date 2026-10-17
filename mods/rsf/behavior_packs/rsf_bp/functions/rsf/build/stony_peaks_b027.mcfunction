# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2331/4224 | 主题内编号: b027/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·双子连廊警戒塔楼 (stony_peaks_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x9 | 地上高度 9格 | 地下深度 2格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 stone_bricks [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 stone_bricks [] replace water
fill ~-7 ~1 ~-4 ~7 ~11 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 stone_brick_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 calcite []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 polished_deepslate []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 cobblestone []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~10 ~3 stone_bricks []
fill ~2 ~1 ~-3 ~6 ~10 ~3 stone_bricks []
fill ~-5 ~1 ~-2 ~-3 ~9 ~2 air []
fill ~3 ~1 ~-2 ~5 ~9 ~2 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 cobblestone []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~9 ~-3 ~6 ~9 ~3 cobblestone []
fill ~-6 ~10 ~-3 ~6 ~10 ~3 cobblestone_wall []
fill ~-5 ~10 ~-2 ~5 ~10 ~2 air []
setblock ~-6 ~10 ~-3 chiseled_stone_bricks []
setblock ~-6 ~11 ~-3 lantern []
setblock ~-6 ~10 ~3 chiseled_stone_bricks []
setblock ~-6 ~11 ~3 lantern []
setblock ~6 ~10 ~-3 chiseled_stone_bricks []
setblock ~6 ~11 ~-3 lantern []
setblock ~6 ~10 ~3 chiseled_stone_bricks []
setblock ~6 ~11 ~3 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-7 ~-9 ~4 ~-7 spruce_log []
setblock ~-9 ~5 ~-7 torch []
fill ~-9 ~0 ~7 ~-9 ~4 ~7 spruce_log []
setblock ~-9 ~5 ~7 torch []
fill ~9 ~0 ~-7 ~9 ~4 ~-7 spruce_log []
setblock ~9 ~5 ~-7 torch []
fill ~9 ~0 ~7 ~9 ~4 ~7 spruce_log []
setblock ~9 ~5 ~7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x5x3) ---
fill ~8 ~0 ~-5 ~8 ~6 ~-5 cobblestone_wall []
setblock ~8 ~7 ~-5 iron_block []
setblock ~8 ~8 ~-5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 string 11
replaceitem block ~5 ~1 ~1 slot.container 1 arrow 20
replaceitem block ~5 ~1 ~1 slot.container 2 spider_eye 11
replaceitem block ~5 ~1 ~1 slot.container 3 ender_pearl 8
replaceitem block ~5 ~1 ~1 slot.container 4 phantom_membrane 9
replaceitem block ~5 ~1 ~1 slot.container 5 bone 10
replaceitem block ~5 ~1 ~1 slot.container 9 emerald 6
replaceitem block ~5 ~1 ~1 slot.container 10 cooked_beef 9
replaceitem block ~5 ~1 ~1 slot.container 11 golden_apple 3
replaceitem block ~5 ~1 ~1 slot.container 12 iron_pickaxe 1
replaceitem block ~5 ~1 ~1 slot.container 13 water_bucket 1
replaceitem block ~5 ~1 ~1 slot.container 14 shield 1
loot insert ~5 ~1 ~1 loot "rsf/stony_peaks"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 spider_eye 6
replaceitem block ~-5 ~1 ~2 slot.container 1 ender_pearl 3
replaceitem block ~-5 ~1 ~2 slot.container 2 phantom_membrane 4
replaceitem block ~-5 ~1 ~2 slot.container 3 bone 13
replaceitem block ~-5 ~1 ~2 slot.container 4 rotten_flesh 14
replaceitem block ~-5 ~1 ~2 slot.container 5 gunpowder 13
replaceitem block ~-5 ~1 ~2 slot.container 9 emerald 11
replaceitem block ~-5 ~1 ~2 slot.container 10 cooked_beef 14
replaceitem block ~-5 ~1 ~2 slot.container 11 golden_apple 1
replaceitem block ~-5 ~1 ~2 slot.container 12 iron_pickaxe 1
replaceitem block ~-5 ~1 ~2 slot.container 13 water_bucket 1
replaceitem block ~-5 ~1 ~2 slot.container 14 shield 1
loot insert ~-5 ~1 ~2 loot "rsf/stony_peaks"
loot insert ~-5 ~1 ~2 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon silverfish ~-1 ~1 ~1
