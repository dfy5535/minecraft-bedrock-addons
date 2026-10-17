# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2397/4224 | 主题内编号: b093/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·U型庭院神道祈福祠 (stony_peaks_shrine_courtyard_torii)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 deepslate_bricks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 deepslate_brick_slab []
fill ~-5 ~7 ~-4 ~5 ~8 ~4 cobblestone []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 cobblestone_slab []
setblock ~0 ~10 ~0 gold_block []
setblock ~0 ~11 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~8 ~0 ~-7 ~8 ~7 ~-7 cobblestone_wall []
setblock ~8 ~8 ~-7 iron_block []
setblock ~8 ~9 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 spider_eye 11
replaceitem block ~5 ~1 ~3 slot.container 1 ender_pearl 8
replaceitem block ~5 ~1 ~3 slot.container 2 phantom_membrane 9
replaceitem block ~5 ~1 ~3 slot.container 3 bone 10
replaceitem block ~5 ~1 ~3 slot.container 4 rotten_flesh 11
replaceitem block ~5 ~1 ~3 slot.container 5 gunpowder 10
replaceitem block ~5 ~1 ~3 slot.container 9 raw_iron 11
replaceitem block ~5 ~1 ~3 slot.container 10 coal 20
replaceitem block ~5 ~1 ~3 slot.container 11 emerald 11
replaceitem block ~5 ~1 ~3 slot.container 12 cooked_beef 14
replaceitem block ~5 ~1 ~3 slot.container 13 golden_apple 1
replaceitem block ~5 ~1 ~3 slot.container 14 iron_pickaxe 1
loot insert ~5 ~1 ~3 loot "rsf/stony_peaks"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 phantom_membrane 4
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 13
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 14
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 13
replaceitem block ~-5 ~1 ~4 slot.container 4 string 14
replaceitem block ~-5 ~1 ~4 slot.container 5 arrow 23
replaceitem block ~-5 ~1 ~4 slot.container 9 raw_iron 9
replaceitem block ~-5 ~1 ~4 slot.container 10 coal 18
replaceitem block ~-5 ~1 ~4 slot.container 11 emerald 9
replaceitem block ~-5 ~1 ~4 slot.container 12 cooked_beef 12
replaceitem block ~-5 ~1 ~4 slot.container 13 golden_apple 6
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_pickaxe 1
loot insert ~-5 ~1 ~4 loot "rsf/stony_peaks"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon silverfish ~-1 ~1 ~1
