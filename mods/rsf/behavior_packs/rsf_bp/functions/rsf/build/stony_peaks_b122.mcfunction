# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2426/4224 | 主题内编号: b122/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·十字穹顶宏伟圣堂与墓窟 (stony_peaks_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 5格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 cobblestone [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 cobblestone [] replace water
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 cobblestone_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 calcite []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 deepslate_bricks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 campfire []
setblock ~4 ~-5 ~-3 campfire []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 string 8
replaceitem block ~4 ~-3 ~3 slot.container 1 arrow 17
replaceitem block ~4 ~-3 ~3 slot.container 2 spider_eye 8
replaceitem block ~4 ~-3 ~3 slot.container 3 ender_pearl 5
replaceitem block ~4 ~-3 ~3 slot.container 4 phantom_membrane 6
replaceitem block ~4 ~-3 ~3 slot.container 5 bone 15
replaceitem block ~4 ~-3 ~3 slot.container 9 raw_iron 13
replaceitem block ~4 ~-3 ~3 slot.container 10 coal 22
replaceitem block ~4 ~-3 ~3 slot.container 11 emerald 6
replaceitem block ~4 ~-3 ~3 slot.container 12 cooked_beef 9
replaceitem block ~4 ~-3 ~3 slot.container 13 golden_apple 3
replaceitem block ~4 ~-3 ~3 slot.container 14 iron_pickaxe 1
loot insert ~4 ~-3 ~3 loot "rsf/stony_peaks"
loot insert ~4 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~9 ~6 cobblestone []
fill ~-7 ~1 ~-2 ~7 ~9 ~2 cobblestone []
fill ~-1 ~1 ~-5 ~1 ~8 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~8 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 cobblestone_wall []
setblock ~7 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 mossy_cobblestone []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 cobblestone []
fill ~0 ~15 ~0 ~0 ~18 ~0 chiseled_stone_bricks []
setblock ~0 ~19 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~8 ~-2 spruce_log []
fill ~-8 ~0 ~2 ~-8 ~8 ~2 spruce_log []
fill ~8 ~0 ~-2 ~8 ~8 ~-2 spruce_log []
fill ~8 ~0 ~2 ~8 ~8 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 9x7x3) ---
fill ~9 ~0 ~-7 ~9 ~6 ~-7 cobblestone_wall []
setblock ~9 ~7 ~-7 iron_block []
setblock ~9 ~8 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-6 ~1 ~0 lectern []
setblock ~6 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 gunpowder 10
replaceitem block ~-6 ~1 ~4 slot.container 1 string 11
replaceitem block ~-6 ~1 ~4 slot.container 2 arrow 20
replaceitem block ~-6 ~1 ~4 slot.container 3 spider_eye 11
replaceitem block ~-6 ~1 ~4 slot.container 4 ender_pearl 8
replaceitem block ~-6 ~1 ~4 slot.container 5 phantom_membrane 9
replaceitem block ~-6 ~1 ~4 slot.container 9 shield 1
replaceitem block ~-6 ~1 ~4 slot.container 10 lantern 9
replaceitem block ~-6 ~1 ~4 slot.container 11 iron_ingot 16
replaceitem block ~-6 ~1 ~4 slot.container 12 raw_iron 8
replaceitem block ~-6 ~1 ~4 slot.container 13 coal 17
replaceitem block ~-6 ~1 ~4 slot.container 14 emerald 8
loot insert ~-6 ~1 ~4 loot "rsf/stony_peaks"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon silverfish ~1 ~1 ~1
summon iron_golem ~0 ~-4 ~0
