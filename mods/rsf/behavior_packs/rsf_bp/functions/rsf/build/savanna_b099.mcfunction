# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1251/4224 | 主题内编号: b099/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·铁闸门瓮城防御堡 (savanna_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log2
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 cobblestone [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 cobblestone [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 cobblestone_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 acacia_planks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 acacia_planks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~3 ~-3 ~3 slot.container 2 bone 16
replaceitem block ~3 ~-3 ~3 slot.container 3 string 15
replaceitem block ~3 ~-3 ~3 slot.container 4 gunpowder 8
replaceitem block ~3 ~-3 ~3 slot.container 5 arrow 17
replaceitem block ~3 ~-3 ~3 slot.container 9 golden_apple 2
replaceitem block ~3 ~-3 ~3 slot.container 10 iron_sword 1
replaceitem block ~3 ~-3 ~3 slot.container 11 torch 19
replaceitem block ~3 ~-3 ~3 slot.container 12 bread 14
replaceitem block ~3 ~-3 ~3 slot.container 13 cooked_beef 13
replaceitem block ~3 ~-3 ~3 slot.container 14 acacia_log 22
loot insert ~3 ~-3 ~3 loot "rsf/savanna"
loot insert ~3 ~-3 ~3 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~7 ~5 cobblestone []
fill ~-4 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-5 ~5 ~7 ~5 orange_terracotta []
fill ~-5 ~8 ~-5 ~5 ~8 ~5 cobblestone_wall []
fill ~-4 ~8 ~-4 ~4 ~8 ~4 air []
setblock ~-5 ~8 ~-5 acacia_log []
setblock ~-5 ~9 ~-5 torch []
setblock ~-5 ~8 ~5 acacia_log []
setblock ~-5 ~9 ~5 torch []
setblock ~5 ~8 ~-5 acacia_log []
setblock ~5 ~9 ~-5 torch []
setblock ~5 ~8 ~5 acacia_log []
setblock ~5 ~9 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 acacia_log []
setblock ~0 ~4 ~-8 chiseled_stone_bricks []
setblock ~0 ~5 ~-8 torch []
fill ~0 ~0 ~8 ~0 ~3 ~8 acacia_log []
setblock ~0 ~4 ~8 chiseled_stone_bricks []
setblock ~0 ~5 ~8 torch []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 acacia_log []
setblock ~-7 ~4 ~0 chiseled_stone_bricks []
setblock ~-7 ~5 ~0 torch []
fill ~7 ~0 ~0 ~7 ~3 ~0 acacia_log []
setblock ~7 ~4 ~0 chiseled_stone_bricks []
setblock ~7 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~7 ~0 ~7 ~7 ~9 ~7 acacia_log []
fill ~6 ~9 ~6 ~8 ~9 ~8 acacia_slab []
setblock ~7 ~10 ~7 orange_terracotta []
setblock ~7 ~11 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-3 ~1 ~5 smoker []
setblock ~-2 ~1 ~5 furnace []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 gunpowder 11
replaceitem block ~4 ~1 ~4 slot.container 1 arrow 20
replaceitem block ~4 ~1 ~4 slot.container 2 leather 13
replaceitem block ~4 ~1 ~4 slot.container 3 spider_eye 10
replaceitem block ~4 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~4 slot.container 9 iron_ingot 11
replaceitem block ~4 ~1 ~4 slot.container 10 gold_ingot 10
replaceitem block ~4 ~1 ~4 slot.container 11 emerald 3
replaceitem block ~4 ~1 ~4 slot.container 12 saddle 1
replaceitem block ~4 ~1 ~4 slot.container 13 golden_apple 3
replaceitem block ~4 ~1 ~4 slot.container 14 iron_sword 1
loot insert ~4 ~1 ~4 loot "rsf/savanna"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
