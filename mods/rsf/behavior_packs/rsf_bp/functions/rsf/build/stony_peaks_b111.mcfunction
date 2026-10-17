# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2415/4224 | 主题内编号: b111/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·地下禁忌书库与炼药室 (stony_peaks_arcane_sunken_archive)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 calcite []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 cobblestone []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 stone_bricks []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 campfire []
setblock ~2 ~-5 ~0 campfire []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 string 8
replaceitem block ~0 ~-3 ~-4 slot.container 1 arrow 17
replaceitem block ~0 ~-3 ~-4 slot.container 2 spider_eye 8
replaceitem block ~0 ~-3 ~-4 slot.container 3 ender_pearl 5
replaceitem block ~0 ~-3 ~-4 slot.container 4 phantom_membrane 6
replaceitem block ~0 ~-3 ~-4 slot.container 5 bone 15
replaceitem block ~0 ~-3 ~-4 slot.container 9 lantern 9
replaceitem block ~0 ~-3 ~-4 slot.container 10 iron_ingot 16
replaceitem block ~0 ~-3 ~-4 slot.container 11 raw_iron 8
replaceitem block ~0 ~-3 ~-4 slot.container 12 coal 17
replaceitem block ~0 ~-3 ~-4 slot.container 13 emerald 8
replaceitem block ~0 ~-3 ~-4 slot.container 14 cooked_beef 11
loot insert ~0 ~-3 ~-4 loot "rsf/stony_peaks"
loot insert ~0 ~-3 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 cobblestone []
fill ~0 ~1 ~-5 ~0 ~2 ~5 cobblestone []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 cobblestone []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 calcite []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 emerald_block []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~8 ~0 ~-7 ~8 ~5 ~-7 cobblestone_wall []
setblock ~8 ~6 ~-7 iron_block []
setblock ~8 ~7 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~4 bookshelf []
setblock ~5 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 phantom_membrane 9
replaceitem block ~5 ~1 ~3 slot.container 1 bone 10
replaceitem block ~5 ~1 ~3 slot.container 2 rotten_flesh 11
replaceitem block ~5 ~1 ~3 slot.container 3 gunpowder 10
replaceitem block ~5 ~1 ~3 slot.container 4 string 11
replaceitem block ~5 ~1 ~3 slot.container 5 arrow 20
replaceitem block ~5 ~1 ~3 slot.container 9 golden_apple 1
replaceitem block ~5 ~1 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~5 ~1 ~3 slot.container 11 water_bucket 1
replaceitem block ~5 ~1 ~3 slot.container 12 shield 1
replaceitem block ~5 ~1 ~3 slot.container 13 lantern 8
replaceitem block ~5 ~1 ~3 slot.container 14 iron_ingot 15
loot insert ~5 ~1 ~3 loot "rsf/stony_peaks"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 rotten_flesh 14
replaceitem block ~-5 ~1 ~4 slot.container 1 gunpowder 13
replaceitem block ~-5 ~1 ~4 slot.container 2 string 14
replaceitem block ~-5 ~1 ~4 slot.container 3 arrow 23
replaceitem block ~-5 ~1 ~4 slot.container 4 spider_eye 6
replaceitem block ~-5 ~1 ~4 slot.container 5 ender_pearl 3
replaceitem block ~-5 ~1 ~4 slot.container 9 golden_apple 6
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~-5 ~1 ~4 slot.container 11 water_bucket 1
replaceitem block ~-5 ~1 ~4 slot.container 12 shield 1
replaceitem block ~-5 ~1 ~4 slot.container 13 lantern 6
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 13
loot insert ~-5 ~1 ~4 loot "rsf/stony_peaks"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon silverfish ~-1 ~1 ~1
