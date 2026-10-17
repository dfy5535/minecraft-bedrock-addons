# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2388/4224 | 主题内编号: b084/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·露天采石场与矿道库 (stony_peaks_mine_sunken_quarry)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 5格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 calcite [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 calcite [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 calcite []
fill ~-3 ~-6 ~-2 ~3 ~-1 ~2 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~2 anvil []
fill ~0 ~-6 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~2 slot.container 0 arrow 17
replaceitem block ~3 ~-4 ~2 slot.container 1 spider_eye 8
replaceitem block ~3 ~-4 ~2 slot.container 2 ender_pearl 5
replaceitem block ~3 ~-4 ~2 slot.container 3 phantom_membrane 6
replaceitem block ~3 ~-4 ~2 slot.container 4 bone 15
replaceitem block ~3 ~-4 ~2 slot.container 5 rotten_flesh 16
replaceitem block ~3 ~-4 ~2 slot.container 9 iron_ingot 13
replaceitem block ~3 ~-4 ~2 slot.container 10 raw_iron 12
replaceitem block ~3 ~-4 ~2 slot.container 11 coal 21
replaceitem block ~3 ~-4 ~2 slot.container 12 emerald 12
replaceitem block ~3 ~-4 ~2 slot.container 13 cooked_beef 8
replaceitem block ~3 ~-4 ~2 slot.container 14 golden_apple 2
loot insert ~3 ~-4 ~2 loot "rsf/stony_peaks"
loot insert ~3 ~-4 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 calcite []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 stone_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~5 ~-5 ~-6 ~7 ~-5 spruce_log []
setblock ~-6 ~8 ~-5 torch []
fill ~-6 ~5 ~5 ~-6 ~7 ~5 spruce_log []
setblock ~-6 ~8 ~5 torch []
fill ~6 ~5 ~-5 ~6 ~7 ~-5 spruce_log []
setblock ~6 ~8 ~-5 torch []
fill ~6 ~5 ~5 ~6 ~7 ~5 spruce_log []
setblock ~6 ~8 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~8 ~0 ~-7 ~8 ~8 ~-7 cobblestone_wall []
setblock ~8 ~9 ~-7 iron_block []
setblock ~8 ~10 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 1 spider_eye 11
replaceitem block ~-5 ~1 ~3 slot.container 2 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 3 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 10
replaceitem block ~-5 ~1 ~3 slot.container 5 rotten_flesh 11
replaceitem block ~-5 ~1 ~3 slot.container 9 cooked_beef 9
replaceitem block ~-5 ~1 ~3 slot.container 10 golden_apple 3
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_pickaxe 1
replaceitem block ~-5 ~1 ~3 slot.container 12 water_bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 13 shield 1
replaceitem block ~-5 ~1 ~3 slot.container 14 lantern 10
loot insert ~-5 ~1 ~3 loot "rsf/stony_peaks"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
