# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2418/4224 | 主题内编号: b114/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·双联拱顶植物培育馆 (stony_peaks_conservatory_twin_house)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[ossuary_tomb] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 cobblestone [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 cobblestone [] replace water
fill ~-8 ~1 ~-5 ~8 ~8 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 cobblestone_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 stone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 calcite []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 cobblestone []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 stone_bricks []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 campfire []
setblock ~2 ~-5 ~0 campfire []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 phantom_membrane 6
replaceitem block ~0 ~-3 ~-2 slot.container 1 bone 15
replaceitem block ~0 ~-3 ~-2 slot.container 2 rotten_flesh 16
replaceitem block ~0 ~-3 ~-2 slot.container 3 gunpowder 15
replaceitem block ~0 ~-3 ~-2 slot.container 4 string 8
replaceitem block ~0 ~-3 ~-2 slot.container 5 arrow 17
replaceitem block ~0 ~-3 ~-2 slot.container 9 raw_iron 10
replaceitem block ~0 ~-3 ~-2 slot.container 10 coal 19
replaceitem block ~0 ~-3 ~-2 slot.container 11 emerald 10
replaceitem block ~0 ~-3 ~-2 slot.container 12 cooked_beef 13
replaceitem block ~0 ~-3 ~-2 slot.container 13 golden_apple 7
replaceitem block ~0 ~-3 ~-2 slot.container 14 iron_pickaxe 1
loot insert ~0 ~-3 ~-2 loot "rsf/stony_peaks"
loot insert ~0 ~-3 ~-2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~7 ~4 cobblestone []
fill ~2 ~1 ~-4 ~7 ~7 ~4 cobblestone []
fill ~-6 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 mossy_cobblestone []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 mossy_cobblestone []
fill ~-6 ~7 ~-3 ~6 ~8 ~3 glass []
fill ~-5 ~7 ~-2 ~5 ~7 ~2 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 calcite []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 9x6x5) ---
fill ~9 ~0 ~-6 ~9 ~8 ~-6 cobblestone_wall []
setblock ~9 ~9 ~-6 iron_block []
setblock ~9 ~10 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-6 ~1 ~3 smoker []
setblock ~-5 ~1 ~3 furnace []
setblock ~0 ~1 ~3 crafting_table []
setblock ~6 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 gunpowder 10
replaceitem block ~-6 ~1 ~2 slot.container 1 string 11
replaceitem block ~-6 ~1 ~2 slot.container 2 arrow 20
replaceitem block ~-6 ~1 ~2 slot.container 3 spider_eye 11
replaceitem block ~-6 ~1 ~2 slot.container 4 ender_pearl 8
replaceitem block ~-6 ~1 ~2 slot.container 5 phantom_membrane 9
replaceitem block ~-6 ~1 ~2 slot.container 9 cooked_beef 11
replaceitem block ~-6 ~1 ~2 slot.container 10 golden_apple 5
replaceitem block ~-6 ~1 ~2 slot.container 11 iron_pickaxe 1
replaceitem block ~-6 ~1 ~2 slot.container 12 water_bucket 1
replaceitem block ~-6 ~1 ~2 slot.container 13 shield 1
replaceitem block ~-6 ~1 ~2 slot.container 14 lantern 5
loot insert ~-6 ~1 ~2 loot "rsf/stony_peaks"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
