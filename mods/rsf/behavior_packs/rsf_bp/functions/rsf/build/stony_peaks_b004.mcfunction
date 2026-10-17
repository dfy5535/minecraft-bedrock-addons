# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2308/4224 | 主题内编号: b004/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·双子火盆高台神坛 (stony_peaks_altar_twin_brazier)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[catacomb_crypt] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 calcite [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 calcite [] replace water
fill ~-8 ~1 ~-5 ~8 ~9 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 stone_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 polished_deepslate []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 lantern []
setblock ~5 ~-7 ~0 lantern []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 bone 15
replaceitem block ~0 ~-5 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~0 ~-5 ~4 slot.container 2 gunpowder 15
replaceitem block ~0 ~-5 ~4 slot.container 3 string 8
replaceitem block ~0 ~-5 ~4 slot.container 4 arrow 17
replaceitem block ~0 ~-5 ~4 slot.container 5 spider_eye 8
replaceitem block ~0 ~-5 ~4 slot.container 9 cooked_beef 11
replaceitem block ~0 ~-5 ~4 slot.container 10 golden_apple 5
replaceitem block ~0 ~-5 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-5 ~4 slot.container 12 water_bucket 1
replaceitem block ~0 ~-5 ~4 slot.container 13 shield 1
replaceitem block ~0 ~-5 ~4 slot.container 14 lantern 5
loot insert ~0 ~-5 ~4 loot "rsf/stony_peaks"
loot insert ~0 ~-5 ~4 loot "chests/simple_dungeon"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 bone 13
replaceitem block ~0 ~-5 ~-4 slot.container 1 rotten_flesh 14
replaceitem block ~0 ~-5 ~-4 slot.container 2 gunpowder 13
replaceitem block ~0 ~-5 ~-4 slot.container 3 string 14
replaceitem block ~0 ~-5 ~-4 slot.container 4 arrow 23
replaceitem block ~0 ~-5 ~-4 slot.container 5 spider_eye 6
replaceitem block ~0 ~-5 ~-4 slot.container 9 cooked_beef 10
replaceitem block ~0 ~-5 ~-4 slot.container 10 golden_apple 4
replaceitem block ~0 ~-5 ~-4 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-5 ~-4 slot.container 12 water_bucket 1
replaceitem block ~0 ~-5 ~-4 slot.container 13 shield 1
replaceitem block ~0 ~-5 ~-4 slot.container 14 lantern 4
loot insert ~0 ~-5 ~-4 loot "rsf/stony_peaks"
loot insert ~0 ~-5 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~8 ~4 calcite []
fill ~2 ~1 ~-4 ~7 ~8 ~4 calcite []
fill ~-6 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 stone_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-4 ~-7 ~9 ~-4 spruce_log []
setblock ~-7 ~10 ~-4 torch []
fill ~-7 ~7 ~4 ~-7 ~9 ~4 spruce_log []
setblock ~-7 ~10 ~4 torch []
fill ~7 ~7 ~-4 ~7 ~9 ~-4 spruce_log []
setblock ~7 ~10 ~-4 torch []
fill ~7 ~7 ~4 ~7 ~9 ~4 spruce_log []
setblock ~7 ~10 ~4 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 stone_bricks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 spruce_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 spruce_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 stone_brick_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 9x7x5) ---
fill ~9 ~0 ~-7 ~9 ~8 ~-7 cobblestone_wall []
setblock ~9 ~9 ~-7 iron_block []
setblock ~9 ~10 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 arrow 20
replaceitem block ~-6 ~1 ~2 slot.container 1 spider_eye 11
replaceitem block ~-6 ~1 ~2 slot.container 2 ender_pearl 8
replaceitem block ~-6 ~1 ~2 slot.container 3 phantom_membrane 9
replaceitem block ~-6 ~1 ~2 slot.container 4 bone 10
replaceitem block ~-6 ~1 ~2 slot.container 5 rotten_flesh 11
replaceitem block ~-6 ~1 ~2 slot.container 9 cooked_beef 13
replaceitem block ~-6 ~1 ~2 slot.container 10 golden_apple 7
replaceitem block ~-6 ~1 ~2 slot.container 11 iron_pickaxe 1
replaceitem block ~-6 ~1 ~2 slot.container 12 water_bucket 1
replaceitem block ~-6 ~1 ~2 slot.container 13 shield 1
replaceitem block ~-6 ~1 ~2 slot.container 14 lantern 7
loot insert ~-6 ~1 ~2 loot "rsf/stony_peaks"
summon silverfish ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
