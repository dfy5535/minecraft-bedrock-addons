# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2324/4224 | 主题内编号: b020/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·重甲防爆金库房间 (stony_peaks_chamber_fortified_strongbox)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 calcite [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 calcite [] replace water
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 iron_block []

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
fill ~-5 ~1 ~-4 ~5 ~6 ~4 calcite []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~-5 ~1 ~-4 ~-4 ~8 ~-3 stone_bricks []
setblock ~-5 ~9 ~-4 torch []
fill ~-5 ~1 ~3 ~-4 ~8 ~4 stone_bricks []
setblock ~-5 ~9 ~3 torch []
fill ~4 ~1 ~-4 ~5 ~8 ~-3 stone_bricks []
setblock ~4 ~9 ~-4 torch []
fill ~4 ~1 ~3 ~5 ~8 ~4 stone_bricks []
setblock ~4 ~9 ~3 torch []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 stone_bricks []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 cobblestone_wall []
fill ~-4 ~7 ~-3 ~4 ~7 ~3 air []
setblock ~-5 ~7 ~-4 spruce_log []
setblock ~-5 ~8 ~-4 torch []
setblock ~-5 ~7 ~4 spruce_log []
setblock ~-5 ~8 ~4 torch []
setblock ~5 ~7 ~-4 spruce_log []
setblock ~5 ~8 ~-4 torch []
setblock ~5 ~7 ~4 spruce_log []
setblock ~5 ~8 ~4 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~5 ~-2 spruce_log []
fill ~-6 ~0 ~2 ~-6 ~5 ~2 spruce_log []
fill ~6 ~0 ~-2 ~6 ~5 ~-2 spruce_log []
fill ~6 ~0 ~2 ~6 ~5 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 7x5x6) ---
fill ~7 ~0 ~-5 ~7 ~9 ~-5 cobblestone_wall []
setblock ~7 ~10 ~-5 iron_block []
setblock ~7 ~11 ~-5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 arrow 20
replaceitem block ~-4 ~1 ~2 slot.container 1 spider_eye 11
replaceitem block ~-4 ~1 ~2 slot.container 2 ender_pearl 8
replaceitem block ~-4 ~1 ~2 slot.container 3 phantom_membrane 9
replaceitem block ~-4 ~1 ~2 slot.container 4 bone 10
replaceitem block ~-4 ~1 ~2 slot.container 5 rotten_flesh 11
replaceitem block ~-4 ~1 ~2 slot.container 9 coal 16
replaceitem block ~-4 ~1 ~2 slot.container 10 emerald 7
replaceitem block ~-4 ~1 ~2 slot.container 11 cooked_beef 10
replaceitem block ~-4 ~1 ~2 slot.container 12 golden_apple 4
replaceitem block ~-4 ~1 ~2 slot.container 13 iron_pickaxe 1
replaceitem block ~-4 ~1 ~2 slot.container 14 water_bucket 1
loot insert ~-4 ~1 ~2 loot "rsf/stony_peaks"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon silverfish ~1 ~1 ~1
summon iron_golem ~0 ~-3 ~0
