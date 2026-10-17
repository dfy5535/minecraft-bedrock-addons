# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2320/4224 | 主题内编号: b016/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·要塞地底重装暗牢 (stony_peaks_dungeon_citadel_undercroft)
# 建筑构造: 主体[fortress_citadel] + 屋顶[pagoda_double] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 calcite [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 calcite [] replace water
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_deepslate []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 calcite []
fill ~-6 ~-6 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-6 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-6 ~0 torch []
setblock ~5 ~-6 ~0 torch []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 ender_pearl 5
replaceitem block ~0 ~-4 ~4 slot.container 1 phantom_membrane 6
replaceitem block ~0 ~-4 ~4 slot.container 2 bone 15
replaceitem block ~0 ~-4 ~4 slot.container 3 rotten_flesh 16
replaceitem block ~0 ~-4 ~4 slot.container 4 gunpowder 15
replaceitem block ~0 ~-4 ~4 slot.container 5 string 8
replaceitem block ~0 ~-4 ~4 slot.container 9 coal 18
replaceitem block ~0 ~-4 ~4 slot.container 10 emerald 9
replaceitem block ~0 ~-4 ~4 slot.container 11 cooked_beef 12
replaceitem block ~0 ~-4 ~4 slot.container 12 golden_apple 6
replaceitem block ~0 ~-4 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~0 ~-4 ~4 slot.container 14 water_bucket 1
loot insert ~0 ~-4 ~4 loot "rsf/stony_peaks"
loot insert ~0 ~-4 ~4 loot "chests/simple_dungeon"
setblock ~0 ~-4 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-4 slot.container 0 ender_pearl 3
replaceitem block ~0 ~-4 ~-4 slot.container 1 phantom_membrane 4
replaceitem block ~0 ~-4 ~-4 slot.container 2 bone 13
replaceitem block ~0 ~-4 ~-4 slot.container 3 rotten_flesh 14
replaceitem block ~0 ~-4 ~-4 slot.container 4 gunpowder 13
replaceitem block ~0 ~-4 ~-4 slot.container 5 string 14
replaceitem block ~0 ~-4 ~-4 slot.container 9 coal 17
replaceitem block ~0 ~-4 ~-4 slot.container 10 emerald 8
replaceitem block ~0 ~-4 ~-4 slot.container 11 cooked_beef 11
replaceitem block ~0 ~-4 ~-4 slot.container 12 golden_apple 5
replaceitem block ~0 ~-4 ~-4 slot.container 13 iron_pickaxe 1
replaceitem block ~0 ~-4 ~-4 slot.container 14 water_bucket 1
loot insert ~0 ~-4 ~-4 loot "rsf/stony_peaks"
loot insert ~0 ~-4 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~6 ~6 calcite []
fill ~-6 ~1 ~-5 ~6 ~5 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~8 ~-5 stone_bricks []
setblock ~-7 ~9 ~-6 torch []
fill ~-7 ~1 ~5 ~-6 ~8 ~6 stone_bricks []
setblock ~-7 ~9 ~5 torch []
fill ~6 ~1 ~-6 ~7 ~8 ~-5 stone_bricks []
setblock ~6 ~9 ~-6 torch []
fill ~6 ~1 ~5 ~7 ~8 ~6 stone_bricks []
setblock ~6 ~9 ~5 torch []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 cobblestone_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 stone_bricks []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 stone_brick_slab []
setblock ~0 ~12 ~0 chiseled_stone_bricks []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 cobblestone_wall []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 9x9x2) ---
fill ~9 ~0 ~-9 ~9 ~5 ~-9 cobblestone_wall []
setblock ~9 ~6 ~-9 iron_block []
setblock ~9 ~7 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 bone 10
replaceitem block ~-6 ~1 ~4 slot.container 1 rotten_flesh 11
replaceitem block ~-6 ~1 ~4 slot.container 2 gunpowder 10
replaceitem block ~-6 ~1 ~4 slot.container 3 string 11
replaceitem block ~-6 ~1 ~4 slot.container 4 arrow 20
replaceitem block ~-6 ~1 ~4 slot.container 5 spider_eye 11
replaceitem block ~-6 ~1 ~4 slot.container 9 iron_ingot 13
replaceitem block ~-6 ~1 ~4 slot.container 10 raw_iron 12
replaceitem block ~-6 ~1 ~4 slot.container 11 coal 21
replaceitem block ~-6 ~1 ~4 slot.container 12 emerald 12
replaceitem block ~-6 ~1 ~4 slot.container 13 cooked_beef 8
replaceitem block ~-6 ~1 ~4 slot.container 14 golden_apple 2
loot insert ~-6 ~1 ~4 loot "rsf/stony_peaks"
summon silverfish ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
