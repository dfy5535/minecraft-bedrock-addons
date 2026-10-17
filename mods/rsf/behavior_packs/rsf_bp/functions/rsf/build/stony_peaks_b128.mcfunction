# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2432/4224 | 主题内编号: b128/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·U型紫禁朝堂大殿与地底金库 (stony_peaks_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 5格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 calcite [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 calcite [] replace water
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_deepslate []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 mossy_cobblestone []
fill ~-4 ~-7 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 water []
fill ~0 ~-7 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-5 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-5 ~3 slot.container 0 bone 15
replaceitem block ~-4 ~-5 ~3 slot.container 1 rotten_flesh 16
replaceitem block ~-4 ~-5 ~3 slot.container 2 gunpowder 15
replaceitem block ~-4 ~-5 ~3 slot.container 3 string 8
replaceitem block ~-4 ~-5 ~3 slot.container 4 arrow 17
replaceitem block ~-4 ~-5 ~3 slot.container 5 spider_eye 8
replaceitem block ~-4 ~-5 ~3 slot.container 9 iron_ingot 12
replaceitem block ~-4 ~-5 ~3 slot.container 10 raw_iron 11
replaceitem block ~-4 ~-5 ~3 slot.container 11 coal 20
replaceitem block ~-4 ~-5 ~3 slot.container 12 emerald 11
replaceitem block ~-4 ~-5 ~3 slot.container 13 cooked_beef 14
replaceitem block ~-4 ~-5 ~3 slot.container 14 golden_apple 1
loot insert ~-4 ~-5 ~3 loot "rsf/stony_peaks"
loot insert ~-4 ~-5 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-7 ~1 ~-6 ~7 ~8 ~6 calcite []
fill ~-6 ~1 ~-5 ~6 ~7 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~8 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 cobblestone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~8 ~-7 ~8 ~8 ~7 stone_brick_slab []
fill ~-6 ~9 ~-5 ~6 ~10 ~5 deepslate_bricks []
fill ~-7 ~11 ~-6 ~7 ~11 ~6 deepslate_brick_slab []
setblock ~0 ~12 ~0 iron_block []
setblock ~0 ~13 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 cobblestone_wall []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 9x7x4) ---
fill ~9 ~0 ~-7 ~9 ~7 ~-7 cobblestone_wall []
setblock ~9 ~8 ~-7 iron_block []
setblock ~9 ~9 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-6 ~1 ~5 blast_furnace []
setblock ~-5 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 bone 10
replaceitem block ~-6 ~1 ~4 slot.container 1 rotten_flesh 11
replaceitem block ~-6 ~1 ~4 slot.container 2 gunpowder 10
replaceitem block ~-6 ~1 ~4 slot.container 3 string 11
replaceitem block ~-6 ~1 ~4 slot.container 4 arrow 20
replaceitem block ~-6 ~1 ~4 slot.container 5 spider_eye 11
replaceitem block ~-6 ~1 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~-6 ~1 ~4 slot.container 10 water_bucket 1
replaceitem block ~-6 ~1 ~4 slot.container 11 shield 1
replaceitem block ~-6 ~1 ~4 slot.container 12 lantern 10
replaceitem block ~-6 ~1 ~4 slot.container 13 iron_ingot 10
replaceitem block ~-6 ~1 ~4 slot.container 14 raw_iron 9
loot insert ~-6 ~1 ~4 loot "rsf/stony_peaks"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon silverfish ~1 ~1 ~1
summon iron_golem ~0 ~-4 ~0
