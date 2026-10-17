# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2356/4224 | 主题内编号: b052/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·重檐行商旅店客栈 (stony_peaks_outpost_caravan_inn)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 calcite [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 calcite [] replace water
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 polished_deepslate []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 cobblestone []
fill ~-4 ~-7 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-7 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-7 ~2 lantern []
setblock ~3 ~-7 ~-2 lantern []
setblock ~3 ~-5 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-5 ~2 slot.container 0 arrow 17
replaceitem block ~3 ~-5 ~2 slot.container 1 spider_eye 8
replaceitem block ~3 ~-5 ~2 slot.container 2 ender_pearl 5
replaceitem block ~3 ~-5 ~2 slot.container 3 phantom_membrane 6
replaceitem block ~3 ~-5 ~2 slot.container 4 bone 15
replaceitem block ~3 ~-5 ~2 slot.container 5 rotten_flesh 16
replaceitem block ~3 ~-5 ~2 slot.container 9 iron_ingot 11
replaceitem block ~3 ~-5 ~2 slot.container 10 raw_iron 10
replaceitem block ~3 ~-5 ~2 slot.container 11 coal 19
replaceitem block ~3 ~-5 ~2 slot.container 12 emerald 10
replaceitem block ~3 ~-5 ~2 slot.container 13 cooked_beef 13
replaceitem block ~3 ~-5 ~2 slot.container 14 golden_apple 7
loot insert ~3 ~-5 ~2 loot "rsf/stony_peaks"
loot insert ~3 ~-5 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-6 ~6 ~3 ~6 calcite []
fill ~-5 ~1 ~-5 ~5 ~2 ~5 air []
fill ~-7 ~3 ~-7 ~7 ~3 ~7 stone_brick_slab []
fill ~-5 ~4 ~-5 ~5 ~7 ~5 deepslate_bricks []
fill ~-4 ~4 ~-4 ~4 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~4 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-7 ~7 ~7 ~7 stone_brick_slab []
fill ~-5 ~8 ~-5 ~5 ~9 ~5 deepslate_bricks []
fill ~-6 ~10 ~-6 ~6 ~10 ~6 deepslate_brick_slab []
setblock ~0 ~11 ~0 iron_block []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 stone_bricks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 spruce_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 spruce_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 stone_brick_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x9x3) ---
fill ~8 ~0 ~-9 ~8 ~6 ~-9 cobblestone_wall []
setblock ~8 ~7 ~-9 iron_block []
setblock ~8 ~8 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~5 smoker []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 crafting_table []
setblock ~5 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 arrow 20
replaceitem block ~-5 ~1 ~4 slot.container 1 spider_eye 11
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 8
replaceitem block ~-5 ~1 ~4 slot.container 3 phantom_membrane 9
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 10
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 11
replaceitem block ~-5 ~1 ~4 slot.container 9 shield 1
replaceitem block ~-5 ~1 ~4 slot.container 10 lantern 9
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_ingot 16
replaceitem block ~-5 ~1 ~4 slot.container 12 raw_iron 8
replaceitem block ~-5 ~1 ~4 slot.container 13 coal 17
replaceitem block ~-5 ~1 ~4 slot.container 14 emerald 8
loot insert ~-5 ~1 ~4 loot "rsf/stony_peaks"
summon silverfish ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
