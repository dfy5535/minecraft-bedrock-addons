# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2427/4224 | 主题内编号: b123/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·四角塔楼领主城堡复合体 (stony_peaks_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 calcite []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~4 lantern []
setblock ~5 ~-5 ~-4 lantern []
setblock ~5 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~4 slot.container 0 spider_eye 8
replaceitem block ~5 ~-3 ~4 slot.container 1 ender_pearl 5
replaceitem block ~5 ~-3 ~4 slot.container 2 phantom_membrane 6
replaceitem block ~5 ~-3 ~4 slot.container 3 bone 15
replaceitem block ~5 ~-3 ~4 slot.container 4 rotten_flesh 16
replaceitem block ~5 ~-3 ~4 slot.container 5 gunpowder 15
replaceitem block ~5 ~-3 ~4 slot.container 9 emerald 6
replaceitem block ~5 ~-3 ~4 slot.container 10 cooked_beef 9
replaceitem block ~5 ~-3 ~4 slot.container 11 golden_apple 3
replaceitem block ~5 ~-3 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~5 ~-3 ~4 slot.container 13 water_bucket 1
replaceitem block ~5 ~-3 ~4 slot.container 14 shield 1
loot insert ~5 ~-3 ~4 loot "rsf/stony_peaks"
loot insert ~5 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~8 ~6 stone_bricks []
fill ~-6 ~1 ~-5 ~6 ~7 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~10 ~-5 cobblestone []
setblock ~-7 ~11 ~-6 lantern []
fill ~-7 ~1 ~5 ~-6 ~10 ~6 cobblestone []
setblock ~-7 ~11 ~5 lantern []
fill ~6 ~1 ~-6 ~7 ~10 ~-5 cobblestone []
setblock ~6 ~11 ~-6 lantern []
fill ~6 ~1 ~5 ~7 ~10 ~6 cobblestone []
setblock ~6 ~11 ~5 lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 cobblestone []
fill ~-7 ~9 ~-6 ~7 ~9 ~6 cobblestone_wall []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 air []
setblock ~-7 ~9 ~-6 chiseled_stone_bricks []
setblock ~-7 ~10 ~-6 lantern []
setblock ~-7 ~9 ~6 chiseled_stone_bricks []
setblock ~-7 ~10 ~6 lantern []
setblock ~7 ~9 ~-6 chiseled_stone_bricks []
setblock ~7 ~10 ~-6 lantern []
setblock ~7 ~9 ~6 chiseled_stone_bricks []
setblock ~7 ~10 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 torch []
setblock ~2 ~4 ~-7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 9x8x4) ---
fill ~9 ~0 ~-8 ~9 ~7 ~-8 cobblestone_wall []
setblock ~9 ~8 ~-8 iron_block []
setblock ~9 ~9 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 string 11
replaceitem block ~6 ~1 ~4 slot.container 1 arrow 20
replaceitem block ~6 ~1 ~4 slot.container 2 spider_eye 11
replaceitem block ~6 ~1 ~4 slot.container 3 ender_pearl 8
replaceitem block ~6 ~1 ~4 slot.container 4 phantom_membrane 9
replaceitem block ~6 ~1 ~4 slot.container 5 bone 10
replaceitem block ~6 ~1 ~4 slot.container 9 raw_iron 13
replaceitem block ~6 ~1 ~4 slot.container 10 coal 22
replaceitem block ~6 ~1 ~4 slot.container 11 emerald 6
replaceitem block ~6 ~1 ~4 slot.container 12 cooked_beef 9
replaceitem block ~6 ~1 ~4 slot.container 13 golden_apple 3
replaceitem block ~6 ~1 ~4 slot.container 14 iron_pickaxe 1
loot insert ~6 ~1 ~4 loot "rsf/stony_peaks"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 spider_eye 6
replaceitem block ~-6 ~1 ~5 slot.container 1 ender_pearl 3
replaceitem block ~-6 ~1 ~5 slot.container 2 phantom_membrane 4
replaceitem block ~-6 ~1 ~5 slot.container 3 bone 13
replaceitem block ~-6 ~1 ~5 slot.container 4 rotten_flesh 14
replaceitem block ~-6 ~1 ~5 slot.container 5 gunpowder 13
replaceitem block ~-6 ~1 ~5 slot.container 9 raw_iron 11
replaceitem block ~-6 ~1 ~5 slot.container 10 coal 20
replaceitem block ~-6 ~1 ~5 slot.container 11 emerald 11
replaceitem block ~-6 ~1 ~5 slot.container 12 cooked_beef 14
replaceitem block ~-6 ~1 ~5 slot.container 13 golden_apple 1
replaceitem block ~-6 ~1 ~5 slot.container 14 iron_pickaxe 1
loot insert ~-6 ~1 ~5 loot "rsf/stony_peaks"
loot insert ~-6 ~1 ~5 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon silverfish ~-1 ~1 ~1
