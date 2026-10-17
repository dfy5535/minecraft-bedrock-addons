# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1252/4224 | 主题内编号: b100/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·半地下暗堡火力点 (savanna_bunker_sunken_pillbox)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 11x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 acacia_planks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 acacia_planks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 acacia_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 acacia_planks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
setblock ~-2 ~-5 ~0 blast_furnace []
setblock ~2 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~2 ~-3 ~3 slot.container 1 bone 16
replaceitem block ~2 ~-3 ~3 slot.container 2 string 15
replaceitem block ~2 ~-3 ~3 slot.container 3 gunpowder 8
replaceitem block ~2 ~-3 ~3 slot.container 4 arrow 17
replaceitem block ~2 ~-3 ~3 slot.container 5 leather 10
replaceitem block ~2 ~-3 ~3 slot.container 9 acacia_log 21
replaceitem block ~2 ~-3 ~3 slot.container 10 iron_ingot 12
replaceitem block ~2 ~-3 ~3 slot.container 11 gold_ingot 4
replaceitem block ~2 ~-3 ~3 slot.container 12 emerald 4
replaceitem block ~2 ~-3 ~3 slot.container 13 saddle 1
replaceitem block ~2 ~-3 ~3 slot.container 14 golden_apple 4
loot insert ~2 ~-3 ~3 loot "rsf/savanna"
loot insert ~2 ~-3 ~3 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 acacia_planks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 stone_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~5 ~-5 ~4 ~5 ~5 stone_bricks []
fill ~-4 ~6 ~-5 ~4 ~6 ~5 acacia_fence []
fill ~-3 ~6 ~-4 ~3 ~6 ~4 air []
setblock ~-4 ~6 ~-5 acacia_log []
setblock ~-4 ~7 ~-5 torch []
setblock ~-4 ~6 ~5 acacia_log []
setblock ~-4 ~7 ~5 torch []
setblock ~4 ~6 ~-5 acacia_log []
setblock ~4 ~7 ~-5 torch []
setblock ~4 ~6 ~5 acacia_log []
setblock ~4 ~7 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 acacia_log []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 acacia_log []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 acacia_log []
fill ~7 ~0 ~2 ~7 ~5 ~2 acacia_log []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 6x8x2) ---
fill ~6 ~0 ~8 ~6 ~5 ~8 acacia_log []
fill ~5 ~5 ~7 ~7 ~5 ~9 acacia_slab []
setblock ~6 ~6 ~8 orange_terracotta []
setblock ~6 ~7 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 arrow 20
replaceitem block ~-3 ~1 ~4 slot.container 1 leather 13
replaceitem block ~-3 ~1 ~4 slot.container 2 spider_eye 10
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 9 saddle 1
replaceitem block ~-3 ~1 ~4 slot.container 10 golden_apple 1
replaceitem block ~-3 ~1 ~4 slot.container 11 iron_sword 1
replaceitem block ~-3 ~1 ~4 slot.container 12 torch 18
replaceitem block ~-3 ~1 ~4 slot.container 13 bread 13
replaceitem block ~-3 ~1 ~4 slot.container 14 cooked_beef 12
loot insert ~-3 ~1 ~4 loot "rsf/savanna"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 spider_eye 5
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 3 bone 14
replaceitem block ~3 ~1 ~4 slot.container 4 string 13
replaceitem block ~3 ~1 ~4 slot.container 5 gunpowder 14
replaceitem block ~3 ~1 ~4 slot.container 9 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 10 golden_apple 6
replaceitem block ~3 ~1 ~4 slot.container 11 iron_sword 1
replaceitem block ~3 ~1 ~4 slot.container 12 torch 16
replaceitem block ~3 ~1 ~4 slot.container 13 bread 11
replaceitem block ~3 ~1 ~4 slot.container 14 cooked_beef 10
loot insert ~3 ~1 ~4 loot "rsf/savanna"
loot insert ~3 ~1 ~4 loot "chests/village/village_savanna_house"
summon pillager ~0 ~1 ~-1
summon llama ~-1 ~1 ~1
summon husk ~1 ~1 ~1
