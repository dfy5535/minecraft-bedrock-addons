# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2328/4224 | 主题内编号: b024/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·半地下掩体储藏室 (stony_peaks_chamber_sunken_bunker)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 5格 | 地下深度 5格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 calcite [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 calcite [] replace water
fill ~-6 ~1 ~-5 ~6 ~7 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
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
fill ~-5 ~1 ~-4 ~5 ~2 ~4 calcite []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 stone_bricks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~5 ~-4 ~5 ~5 ~4 stone_bricks []
fill ~-5 ~6 ~-4 ~5 ~6 ~4 cobblestone_wall []
fill ~-4 ~6 ~-3 ~4 ~6 ~3 air []
setblock ~-5 ~6 ~-4 spruce_log []
setblock ~-5 ~7 ~-4 torch []
setblock ~-5 ~6 ~4 spruce_log []
setblock ~-5 ~7 ~4 torch []
setblock ~5 ~6 ~-4 spruce_log []
setblock ~5 ~7 ~-4 torch []
setblock ~5 ~6 ~4 spruce_log []
setblock ~5 ~7 ~4 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~5 ~-2 spruce_log []
fill ~-8 ~0 ~2 ~-8 ~5 ~2 spruce_log []
fill ~8 ~0 ~-2 ~8 ~5 ~-2 spruce_log []
fill ~8 ~0 ~2 ~8 ~5 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~7 ~0 ~-6 ~7 ~8 ~-6 cobblestone_wall []
setblock ~7 ~9 ~-6 iron_block []
setblock ~7 ~10 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~4 bookshelf []
setblock ~5 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 bone 10
replaceitem block ~-4 ~1 ~2 slot.container 1 rotten_flesh 11
replaceitem block ~-4 ~1 ~2 slot.container 2 gunpowder 10
replaceitem block ~-4 ~1 ~2 slot.container 3 string 11
replaceitem block ~-4 ~1 ~2 slot.container 4 arrow 20
replaceitem block ~-4 ~1 ~2 slot.container 5 spider_eye 11
replaceitem block ~-4 ~1 ~2 slot.container 9 cooked_beef 12
replaceitem block ~-4 ~1 ~2 slot.container 10 golden_apple 6
replaceitem block ~-4 ~1 ~2 slot.container 11 iron_pickaxe 1
replaceitem block ~-4 ~1 ~2 slot.container 12 water_bucket 1
replaceitem block ~-4 ~1 ~2 slot.container 13 shield 1
replaceitem block ~-4 ~1 ~2 slot.container 14 lantern 6
loot insert ~-4 ~1 ~2 loot "rsf/stony_peaks"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
