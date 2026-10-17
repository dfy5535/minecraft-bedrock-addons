# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2379/4224 | 主题内编号: b075/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·远古巨石环廊法阵 (stony_peaks_totem_rotunda_henge)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 calcite []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 calcite []
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 cobblestone []
setblock ~0 ~-5 ~0 iron_block []
fill ~0 ~-4 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-4 slot.container 0 spider_eye 8
replaceitem block ~0 ~-2 ~-4 slot.container 1 ender_pearl 5
replaceitem block ~0 ~-2 ~-4 slot.container 2 phantom_membrane 6
replaceitem block ~0 ~-2 ~-4 slot.container 3 bone 15
replaceitem block ~0 ~-2 ~-4 slot.container 4 rotten_flesh 16
replaceitem block ~0 ~-2 ~-4 slot.container 5 gunpowder 15
replaceitem block ~0 ~-2 ~-4 slot.container 9 emerald 8
replaceitem block ~0 ~-2 ~-4 slot.container 10 cooked_beef 11
replaceitem block ~0 ~-2 ~-4 slot.container 11 golden_apple 5
replaceitem block ~0 ~-2 ~-4 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-2 ~-4 slot.container 13 water_bucket 1
replaceitem block ~0 ~-2 ~-4 slot.container 14 shield 1
loot insert ~0 ~-2 ~-4 loot "rsf/stony_peaks"
loot insert ~0 ~-2 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 cobblestone []
fill ~-7 ~1 ~-6 ~-7 ~6 ~-6 chiseled_stone_bricks []
fill ~-7 ~1 ~6 ~-7 ~6 ~6 chiseled_stone_bricks []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 chiseled_stone_bricks []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 chiseled_stone_bricks []
fill ~-3 ~1 ~-6 ~-3 ~6 ~-6 chiseled_stone_bricks []
fill ~-3 ~1 ~6 ~-3 ~6 ~6 chiseled_stone_bricks []
fill ~-1 ~1 ~-6 ~-1 ~6 ~-6 chiseled_stone_bricks []
fill ~-1 ~1 ~6 ~-1 ~6 ~6 chiseled_stone_bricks []
fill ~1 ~1 ~-6 ~1 ~6 ~-6 chiseled_stone_bricks []
fill ~1 ~1 ~6 ~1 ~6 ~6 chiseled_stone_bricks []
fill ~3 ~1 ~-6 ~3 ~6 ~-6 chiseled_stone_bricks []
fill ~3 ~1 ~6 ~3 ~6 ~6 chiseled_stone_bricks []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 chiseled_stone_bricks []
fill ~5 ~1 ~6 ~5 ~6 ~6 chiseled_stone_bricks []
fill ~7 ~1 ~-6 ~7 ~6 ~-6 chiseled_stone_bricks []
fill ~7 ~1 ~6 ~7 ~6 ~6 chiseled_stone_bricks []
fill ~-7 ~1 ~-4 ~-7 ~6 ~-4 chiseled_stone_bricks []
fill ~7 ~1 ~-4 ~7 ~6 ~-4 chiseled_stone_bricks []
fill ~-7 ~1 ~-2 ~-7 ~6 ~-2 chiseled_stone_bricks []
fill ~7 ~1 ~-2 ~7 ~6 ~-2 chiseled_stone_bricks []
fill ~-7 ~1 ~0 ~-7 ~6 ~0 chiseled_stone_bricks []
fill ~7 ~1 ~0 ~7 ~6 ~0 chiseled_stone_bricks []
fill ~-7 ~1 ~2 ~-7 ~6 ~2 chiseled_stone_bricks []
fill ~7 ~1 ~2 ~7 ~6 ~2 chiseled_stone_bricks []
fill ~-7 ~1 ~4 ~-7 ~6 ~4 chiseled_stone_bricks []
fill ~7 ~1 ~4 ~7 ~6 ~4 chiseled_stone_bricks []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-6 ~-7 ~9 ~-6 chiseled_stone_bricks []
setblock ~-7 ~10 ~-6 lantern []
fill ~-7 ~7 ~6 ~-7 ~9 ~6 chiseled_stone_bricks []
setblock ~-7 ~10 ~6 lantern []
fill ~7 ~7 ~-6 ~7 ~9 ~-6 chiseled_stone_bricks []
setblock ~7 ~10 ~-6 lantern []
fill ~7 ~7 ~6 ~7 ~9 ~6 chiseled_stone_bricks []
setblock ~7 ~10 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 torch []
setblock ~2 ~4 ~-7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~9 ~0 ~-8 ~9 ~9 ~-8 cobblestone_wall []
setblock ~9 ~10 ~-8 iron_block []
setblock ~9 ~11 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~3 smithing_table []
setblock ~-4 ~1 ~3 anvil []
setblock ~4 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 string 11
replaceitem block ~6 ~1 ~4 slot.container 1 arrow 20
replaceitem block ~6 ~1 ~4 slot.container 2 spider_eye 11
replaceitem block ~6 ~1 ~4 slot.container 3 ender_pearl 8
replaceitem block ~6 ~1 ~4 slot.container 4 phantom_membrane 9
replaceitem block ~6 ~1 ~4 slot.container 5 bone 10
replaceitem block ~6 ~1 ~4 slot.container 9 water_bucket 1
replaceitem block ~6 ~1 ~4 slot.container 10 shield 1
replaceitem block ~6 ~1 ~4 slot.container 11 lantern 5
replaceitem block ~6 ~1 ~4 slot.container 12 iron_ingot 12
replaceitem block ~6 ~1 ~4 slot.container 13 raw_iron 11
replaceitem block ~6 ~1 ~4 slot.container 14 coal 20
loot insert ~6 ~1 ~4 loot "rsf/stony_peaks"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 spider_eye 6
replaceitem block ~-6 ~1 ~5 slot.container 1 ender_pearl 3
replaceitem block ~-6 ~1 ~5 slot.container 2 phantom_membrane 4
replaceitem block ~-6 ~1 ~5 slot.container 3 bone 13
replaceitem block ~-6 ~1 ~5 slot.container 4 rotten_flesh 14
replaceitem block ~-6 ~1 ~5 slot.container 5 gunpowder 13
replaceitem block ~-6 ~1 ~5 slot.container 9 water_bucket 1
replaceitem block ~-6 ~1 ~5 slot.container 10 shield 1
replaceitem block ~-6 ~1 ~5 slot.container 11 lantern 10
replaceitem block ~-6 ~1 ~5 slot.container 12 iron_ingot 10
replaceitem block ~-6 ~1 ~5 slot.container 13 raw_iron 9
replaceitem block ~-6 ~1 ~5 slot.container 14 coal 18
loot insert ~-6 ~1 ~5 loot "rsf/stony_peaks"
loot insert ~-6 ~1 ~5 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon silverfish ~-1 ~1 ~1
