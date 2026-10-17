# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1272/4224 | 主题内编号: b120/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·引水渠跨桥水培温室 (savanna_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log2
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 acacia_planks [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 acacia_planks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 acacia_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cobblestone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 acacia_planks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 emerald_block []
setblock ~0 ~-6 ~0 torch []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~0 slot.container 1 rotten_flesh 17
replaceitem block ~3 ~-3 ~0 slot.container 2 bone 16
replaceitem block ~3 ~-3 ~0 slot.container 3 string 15
replaceitem block ~3 ~-3 ~0 slot.container 4 gunpowder 8
replaceitem block ~3 ~-3 ~0 slot.container 5 arrow 17
replaceitem block ~3 ~-3 ~0 slot.container 9 iron_ingot 8
replaceitem block ~3 ~-3 ~0 slot.container 10 gold_ingot 7
replaceitem block ~3 ~-3 ~0 slot.container 11 emerald 7
replaceitem block ~3 ~-3 ~0 slot.container 12 saddle 1
replaceitem block ~3 ~-3 ~0 slot.container 13 golden_apple 7
replaceitem block ~3 ~-3 ~0 slot.container 14 iron_sword 1
loot insert ~3 ~-3 ~0 loot "rsf/savanna"
loot insert ~3 ~-3 ~0 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 acacia_planks []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-5 ~5 ~6 ~5 stone_bricks []
fill ~-4 ~7 ~-4 ~4 ~8 ~4 glass []
fill ~-3 ~7 ~-3 ~3 ~7 ~3 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~7 ~0 ~7 ~7 ~5 ~7 acacia_log []
fill ~6 ~5 ~6 ~8 ~5 ~8 acacia_slab []
setblock ~7 ~6 ~7 orange_terracotta []
setblock ~7 ~7 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 crafting_table []
setblock ~-3 ~1 ~4 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-4 ~1 ~4 slot.container 2 string 10
replaceitem block ~-4 ~1 ~4 slot.container 3 gunpowder 11
replaceitem block ~-4 ~1 ~4 slot.container 4 arrow 20
replaceitem block ~-4 ~1 ~4 slot.container 5 leather 13
replaceitem block ~-4 ~1 ~4 slot.container 9 saddle 1
replaceitem block ~-4 ~1 ~4 slot.container 10 golden_apple 7
replaceitem block ~-4 ~1 ~4 slot.container 11 iron_sword 1
replaceitem block ~-4 ~1 ~4 slot.container 12 torch 17
replaceitem block ~-4 ~1 ~4 slot.container 13 bread 12
replaceitem block ~-4 ~1 ~4 slot.container 14 cooked_beef 11
loot insert ~-4 ~1 ~4 loot "rsf/savanna"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 string 13
replaceitem block ~4 ~1 ~4 slot.container 1 gunpowder 14
replaceitem block ~4 ~1 ~4 slot.container 2 arrow 23
replaceitem block ~4 ~1 ~4 slot.container 3 leather 8
replaceitem block ~4 ~1 ~4 slot.container 4 spider_eye 5
replaceitem block ~4 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~4 slot.container 9 saddle 1
replaceitem block ~4 ~1 ~4 slot.container 10 golden_apple 5
replaceitem block ~4 ~1 ~4 slot.container 11 iron_sword 1
replaceitem block ~4 ~1 ~4 slot.container 12 torch 22
replaceitem block ~4 ~1 ~4 slot.container 13 bread 10
replaceitem block ~4 ~1 ~4 slot.container 14 cooked_beef 9
loot insert ~4 ~1 ~4 loot "rsf/savanna"
loot insert ~4 ~1 ~4 loot "chests/village/village_savanna_house"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
