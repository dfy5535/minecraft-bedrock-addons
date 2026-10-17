# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1274/4224 | 主题内编号: b122/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·十字穹顶宏伟圣堂与墓窟 (savanna_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 acacia_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 coarse_dirt []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 acacia_planks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 acacia_planks []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 ender_pearl 6
replaceitem block ~-2 ~-4 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~-2 ~-4 ~3 slot.container 2 bone 16
replaceitem block ~-2 ~-4 ~3 slot.container 3 string 15
replaceitem block ~-2 ~-4 ~3 slot.container 4 gunpowder 8
replaceitem block ~-2 ~-4 ~3 slot.container 5 arrow 17
replaceitem block ~-2 ~-4 ~3 slot.container 9 golden_apple 4
replaceitem block ~-2 ~-4 ~3 slot.container 10 iron_sword 1
replaceitem block ~-2 ~-4 ~3 slot.container 11 torch 21
replaceitem block ~-2 ~-4 ~3 slot.container 12 bread 16
replaceitem block ~-2 ~-4 ~3 slot.container 13 cooked_beef 8
replaceitem block ~-2 ~-4 ~3 slot.container 14 acacia_log 17
loot insert ~-2 ~-4 ~3 loot "rsf/savanna"
loot insert ~-2 ~-4 ~3 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~9 ~7 stone_bricks []
fill ~-6 ~1 ~-2 ~6 ~9 ~2 stone_bricks []
fill ~-1 ~1 ~-6 ~1 ~8 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~8 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 acacia_fence []
setblock ~6 ~2 ~0 acacia_fence []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 acacia_planks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 stone_bricks []
fill ~0 ~15 ~0 ~0 ~17 ~0 gold_block []
setblock ~0 ~18 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~8 ~-2 acacia_log []
fill ~-7 ~0 ~2 ~-7 ~8 ~2 acacia_log []
fill ~7 ~0 ~-2 ~7 ~8 ~-2 acacia_log []
fill ~7 ~0 ~2 ~7 ~8 ~2 acacia_log []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~8 ~0 ~8 ~8 ~7 ~8 acacia_log []
fill ~7 ~7 ~7 ~9 ~7 ~9 acacia_slab []
setblock ~8 ~8 ~8 orange_terracotta []
setblock ~8 ~9 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~6 ~2 ~2 ~6 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 string 10
replaceitem block ~-5 ~1 ~6 slot.container 1 gunpowder 11
replaceitem block ~-5 ~1 ~6 slot.container 2 arrow 20
replaceitem block ~-5 ~1 ~6 slot.container 3 leather 13
replaceitem block ~-5 ~1 ~6 slot.container 4 spider_eye 10
replaceitem block ~-5 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 9 acacia_log 16
replaceitem block ~-5 ~1 ~6 slot.container 10 iron_ingot 7
replaceitem block ~-5 ~1 ~6 slot.container 11 gold_ingot 6
replaceitem block ~-5 ~1 ~6 slot.container 12 emerald 6
replaceitem block ~-5 ~1 ~6 slot.container 13 saddle 1
replaceitem block ~-5 ~1 ~6 slot.container 14 golden_apple 6
loot insert ~-5 ~1 ~6 loot "rsf/savanna"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 arrow 23
replaceitem block ~5 ~1 ~6 slot.container 1 leather 8
replaceitem block ~5 ~1 ~6 slot.container 2 spider_eye 5
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 5 bone 14
replaceitem block ~5 ~1 ~6 slot.container 9 acacia_log 21
replaceitem block ~5 ~1 ~6 slot.container 10 iron_ingot 12
replaceitem block ~5 ~1 ~6 slot.container 11 gold_ingot 4
replaceitem block ~5 ~1 ~6 slot.container 12 emerald 4
replaceitem block ~5 ~1 ~6 slot.container 13 saddle 1
replaceitem block ~5 ~1 ~6 slot.container 14 golden_apple 4
loot insert ~5 ~1 ~6 loot "rsf/savanna"
loot insert ~5 ~1 ~6 loot "chests/village/village_savanna_house"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon llama ~0 ~-3 ~0
