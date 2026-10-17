# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2398/4224 | 主题内编号: b094/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·圆形圣泉祈祷亭 (stony_peaks_shrine_rotunda_fountain)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[gabled_stairs] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone [] replace water
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 calcite []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 mossy_cobblestone []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 bone 15
replaceitem block ~-3 ~-3 ~2 slot.container 1 rotten_flesh 16
replaceitem block ~-3 ~-3 ~2 slot.container 2 gunpowder 15
replaceitem block ~-3 ~-3 ~2 slot.container 3 string 8
replaceitem block ~-3 ~-3 ~2 slot.container 4 arrow 17
replaceitem block ~-3 ~-3 ~2 slot.container 5 spider_eye 8
replaceitem block ~-3 ~-3 ~2 slot.container 9 iron_ingot 15
replaceitem block ~-3 ~-3 ~2 slot.container 10 raw_iron 14
replaceitem block ~-3 ~-3 ~2 slot.container 11 coal 16
replaceitem block ~-3 ~-3 ~2 slot.container 12 emerald 7
replaceitem block ~-3 ~-3 ~2 slot.container 13 cooked_beef 10
replaceitem block ~-3 ~-3 ~2 slot.container 14 golden_apple 4
loot insert ~-3 ~-3 ~2 loot "rsf/stony_peaks"
loot insert ~-3 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 mossy_cobblestone []
fill ~-5 ~1 ~-4 ~-5 ~6 ~-4 spruce_log []
fill ~-5 ~1 ~4 ~-5 ~6 ~4 spruce_log []
fill ~-3 ~1 ~-4 ~-3 ~6 ~-4 spruce_log []
fill ~-3 ~1 ~4 ~-3 ~6 ~4 spruce_log []
fill ~-1 ~1 ~-4 ~-1 ~6 ~-4 spruce_log []
fill ~-1 ~1 ~4 ~-1 ~6 ~4 spruce_log []
fill ~1 ~1 ~-4 ~1 ~6 ~-4 spruce_log []
fill ~1 ~1 ~4 ~1 ~6 ~4 spruce_log []
fill ~3 ~1 ~-4 ~3 ~6 ~-4 spruce_log []
fill ~3 ~1 ~4 ~3 ~6 ~4 spruce_log []
fill ~5 ~1 ~-4 ~5 ~6 ~-4 spruce_log []
fill ~5 ~1 ~4 ~5 ~6 ~4 spruce_log []
fill ~-5 ~1 ~-2 ~-5 ~6 ~-2 spruce_log []
fill ~5 ~1 ~-2 ~5 ~6 ~-2 spruce_log []
fill ~-5 ~1 ~0 ~-5 ~6 ~0 spruce_log []
fill ~5 ~1 ~0 ~5 ~6 ~0 spruce_log []
fill ~-5 ~1 ~2 ~-5 ~6 ~2 spruce_log []
fill ~5 ~1 ~2 ~5 ~6 ~2 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~7 ~-5 ~-8 ~7 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~8 ~7 ~-5 ~8 ~7 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-7 ~8 ~-4 ~-7 ~8 ~4 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-4 ~7 ~8 ~4 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-4 ~6 ~8 ~4 stone_brick_slab []
fill ~0 ~9 ~-5 ~0 ~9 ~5 stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 spruce_log []
setblock ~0 ~4 ~-6 emerald_block []
setblock ~0 ~5 ~-6 lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 spruce_log []
setblock ~0 ~4 ~6 emerald_block []
setblock ~0 ~5 ~6 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 spruce_log []
setblock ~-7 ~4 ~0 emerald_block []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 spruce_log []
setblock ~7 ~4 ~0 emerald_block []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~7 ~0 ~-7 ~7 ~8 ~-7 cobblestone_wall []
setblock ~7 ~9 ~-7 iron_block []
setblock ~7 ~10 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-1 ~1 ~3 brewing_stand []
setblock ~1 ~1 ~3 cauldron []
setblock ~0 ~1 ~3 chiseled_stone_bricks []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 ender_pearl 8
replaceitem block ~-4 ~1 ~2 slot.container 1 phantom_membrane 9
replaceitem block ~-4 ~1 ~2 slot.container 2 bone 10
replaceitem block ~-4 ~1 ~2 slot.container 3 rotten_flesh 11
replaceitem block ~-4 ~1 ~2 slot.container 4 gunpowder 10
replaceitem block ~-4 ~1 ~2 slot.container 5 string 11
replaceitem block ~-4 ~1 ~2 slot.container 9 cooked_beef 12
replaceitem block ~-4 ~1 ~2 slot.container 10 golden_apple 6
replaceitem block ~-4 ~1 ~2 slot.container 11 iron_pickaxe 1
replaceitem block ~-4 ~1 ~2 slot.container 12 water_bucket 1
replaceitem block ~-4 ~1 ~2 slot.container 13 shield 1
replaceitem block ~-4 ~1 ~2 slot.container 14 lantern 6
loot insert ~-4 ~1 ~2 loot "rsf/stony_peaks"
summon silverfish ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
