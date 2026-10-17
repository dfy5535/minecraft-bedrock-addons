# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1199/4224 | 主题内编号: b047/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·深渊跨桥决斗长台 (savanna_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[ruined_skylight] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 acacia_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 orange_terracotta []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-4 ~3 slot.container 0 bone 16
replaceitem block ~-4 ~-4 ~3 slot.container 1 string 15
replaceitem block ~-4 ~-4 ~3 slot.container 2 gunpowder 8
replaceitem block ~-4 ~-4 ~3 slot.container 3 arrow 17
replaceitem block ~-4 ~-4 ~3 slot.container 4 leather 10
replaceitem block ~-4 ~-4 ~3 slot.container 5 spider_eye 7
replaceitem block ~-4 ~-4 ~3 slot.container 9 iron_ingot 9
replaceitem block ~-4 ~-4 ~3 slot.container 10 gold_ingot 8
replaceitem block ~-4 ~-4 ~3 slot.container 11 emerald 8
replaceitem block ~-4 ~-4 ~3 slot.container 12 saddle 1
replaceitem block ~-4 ~-4 ~3 slot.container 13 golden_apple 1
replaceitem block ~-4 ~-4 ~3 slot.container 14 iron_sword 1
loot insert ~-4 ~-4 ~3 loot "rsf/savanna"
loot insert ~-4 ~-4 ~3 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 cobblestone []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 acacia_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~4 ~-7 acacia_log []
setblock ~-8 ~5 ~-7 torch []
fill ~-8 ~0 ~7 ~-8 ~4 ~7 acacia_log []
setblock ~-8 ~5 ~7 torch []
fill ~8 ~0 ~-7 ~8 ~4 ~-7 acacia_log []
setblock ~8 ~5 ~-7 torch []
fill ~8 ~0 ~7 ~8 ~4 ~7 acacia_log []
setblock ~8 ~5 ~7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~8 ~0 ~6 ~8 ~7 ~6 acacia_log []
fill ~7 ~7 ~5 ~9 ~7 ~7 acacia_slab []
setblock ~8 ~8 ~6 orange_terracotta []
setblock ~8 ~9 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 2 bone 11
replaceitem block ~5 ~1 ~4 slot.container 3 string 10
replaceitem block ~5 ~1 ~4 slot.container 4 gunpowder 11
replaceitem block ~5 ~1 ~4 slot.container 5 arrow 20
replaceitem block ~5 ~1 ~4 slot.container 9 golden_apple 3
replaceitem block ~5 ~1 ~4 slot.container 10 iron_sword 1
replaceitem block ~5 ~1 ~4 slot.container 11 torch 20
replaceitem block ~5 ~1 ~4 slot.container 12 bread 15
replaceitem block ~5 ~1 ~4 slot.container 13 cooked_beef 14
replaceitem block ~5 ~1 ~4 slot.container 14 acacia_log 16
loot insert ~5 ~1 ~4 loot "rsf/savanna"
summon llama ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-4 ~0
