# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2380/4224 | 主题内编号: b076/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·阶梯高台图腾战阵 (stony_peaks_totem_stepped_altar_ring)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 calcite [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 calcite [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cobblestone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-2 ~3 slot.container 0 spider_eye 8
replaceitem block ~-4 ~-2 ~3 slot.container 1 ender_pearl 5
replaceitem block ~-4 ~-2 ~3 slot.container 2 phantom_membrane 6
replaceitem block ~-4 ~-2 ~3 slot.container 3 bone 15
replaceitem block ~-4 ~-2 ~3 slot.container 4 rotten_flesh 16
replaceitem block ~-4 ~-2 ~3 slot.container 5 gunpowder 15
replaceitem block ~-4 ~-2 ~3 slot.container 9 emerald 11
replaceitem block ~-4 ~-2 ~3 slot.container 10 cooked_beef 14
replaceitem block ~-4 ~-2 ~3 slot.container 11 golden_apple 1
replaceitem block ~-4 ~-2 ~3 slot.container 12 iron_pickaxe 1
replaceitem block ~-4 ~-2 ~3 slot.container 13 water_bucket 1
replaceitem block ~-4 ~-2 ~3 slot.container 14 shield 1
loot insert ~-4 ~-2 ~3 loot "rsf/stony_peaks"
loot insert ~-4 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 calcite []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 stone_bricks []
fill ~-4 ~5 ~-3 ~4 ~8 ~3 deepslate_bricks []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 calcite []
fill ~0 ~14 ~0 ~0 ~17 ~0 iron_block []
setblock ~0 ~18 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 spruce_log []
setblock ~0 ~4 ~-7 gold_block []
setblock ~0 ~5 ~-7 torch []
fill ~0 ~0 ~7 ~0 ~3 ~7 spruce_log []
setblock ~0 ~4 ~7 gold_block []
setblock ~0 ~5 ~7 torch []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 spruce_log []
setblock ~-8 ~4 ~0 gold_block []
setblock ~-8 ~5 ~0 torch []
fill ~8 ~0 ~0 ~8 ~3 ~0 spruce_log []
setblock ~8 ~4 ~0 gold_block []
setblock ~8 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~8 ~0 ~-8 ~8 ~5 ~-8 cobblestone_wall []
setblock ~8 ~6 ~-8 iron_block []
setblock ~8 ~7 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 1 spider_eye 11
replaceitem block ~-5 ~1 ~3 slot.container 2 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 3 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 10
replaceitem block ~-5 ~1 ~3 slot.container 5 rotten_flesh 11
replaceitem block ~-5 ~1 ~3 slot.container 9 iron_ingot 10
replaceitem block ~-5 ~1 ~3 slot.container 10 raw_iron 9
replaceitem block ~-5 ~1 ~3 slot.container 11 coal 18
replaceitem block ~-5 ~1 ~3 slot.container 12 emerald 9
replaceitem block ~-5 ~1 ~3 slot.container 13 cooked_beef 12
replaceitem block ~-5 ~1 ~3 slot.container 14 golden_apple 6
loot insert ~-5 ~1 ~3 loot "rsf/stony_peaks"
summon silverfish ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
