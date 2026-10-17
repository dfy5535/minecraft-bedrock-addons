# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2342/4224 | 主题内编号: b038/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·四方凯旋衣冠冢 (stony_peaks_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 calcite []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 mossy_cobblestone []
setblock ~0 ~-6 ~0 emerald_block []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 bone 15
replaceitem block ~0 ~-3 ~-2 slot.container 1 rotten_flesh 16
replaceitem block ~0 ~-3 ~-2 slot.container 2 gunpowder 15
replaceitem block ~0 ~-3 ~-2 slot.container 3 string 8
replaceitem block ~0 ~-3 ~-2 slot.container 4 arrow 17
replaceitem block ~0 ~-3 ~-2 slot.container 5 spider_eye 8
replaceitem block ~0 ~-3 ~-2 slot.container 9 coal 16
replaceitem block ~0 ~-3 ~-2 slot.container 10 emerald 7
replaceitem block ~0 ~-3 ~-2 slot.container 11 cooked_beef 10
replaceitem block ~0 ~-3 ~-2 slot.container 12 golden_apple 4
replaceitem block ~0 ~-3 ~-2 slot.container 13 iron_pickaxe 1
replaceitem block ~0 ~-3 ~-2 slot.container 14 water_bucket 1
loot insert ~0 ~-3 ~-2 loot "rsf/stony_peaks"
loot insert ~0 ~-3 ~-2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-4 ~2 ~8 ~4 cobblestone []
fill ~-5 ~1 ~-2 ~5 ~8 ~2 cobblestone []
fill ~-1 ~1 ~-3 ~1 ~7 ~3 air []
fill ~-4 ~1 ~-1 ~4 ~7 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~4 ~0 ~2 ~4 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 mossy_cobblestone []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 chiseled_stone_bricks []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~8 ~-2 spruce_log []
fill ~-8 ~0 ~2 ~-8 ~8 ~2 spruce_log []
fill ~8 ~0 ~-2 ~8 ~8 ~-2 spruce_log []
fill ~8 ~0 ~2 ~8 ~8 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 7x5x4) ---
fill ~7 ~0 ~-5 ~7 ~7 ~-5 cobblestone_wall []
setblock ~7 ~8 ~-5 iron_block []
setblock ~7 ~9 ~-5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-6 ~1 ~5 fletching_table []
setblock ~0 ~1 ~5 target []
setblock ~6 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 ender_pearl 8
replaceitem block ~-4 ~1 ~2 slot.container 1 phantom_membrane 9
replaceitem block ~-4 ~1 ~2 slot.container 2 bone 10
replaceitem block ~-4 ~1 ~2 slot.container 3 rotten_flesh 11
replaceitem block ~-4 ~1 ~2 slot.container 4 gunpowder 10
replaceitem block ~-4 ~1 ~2 slot.container 5 string 11
replaceitem block ~-4 ~1 ~2 slot.container 9 iron_pickaxe 1
replaceitem block ~-4 ~1 ~2 slot.container 10 water_bucket 1
replaceitem block ~-4 ~1 ~2 slot.container 11 shield 1
replaceitem block ~-4 ~1 ~2 slot.container 12 lantern 4
replaceitem block ~-4 ~1 ~2 slot.container 13 iron_ingot 11
replaceitem block ~-4 ~1 ~2 slot.container 14 raw_iron 10
loot insert ~-4 ~1 ~2 loot "rsf/stony_peaks"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon silverfish ~1 ~1 ~1
summon iron_golem ~0 ~-3 ~0
