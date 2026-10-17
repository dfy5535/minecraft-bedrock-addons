# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1160/4224 | 主题内编号: b008/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·凯旋双拱圣物祭坛 (savanna_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log2
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 acacia_planks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 acacia_planks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 acacia_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cobblestone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~7 ~5 acacia_planks []
fill ~-4 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-5 ~5 ~7 ~5 stone_bricks []
fill ~-5 ~8 ~-5 ~5 ~8 ~5 acacia_fence []
fill ~-4 ~8 ~-4 ~4 ~8 ~4 air []
setblock ~-5 ~8 ~-5 acacia_log []
setblock ~-5 ~9 ~-5 torch []
setblock ~-5 ~8 ~5 acacia_log []
setblock ~-5 ~9 ~5 torch []
setblock ~5 ~8 ~-5 acacia_log []
setblock ~5 ~9 ~-5 torch []
setblock ~5 ~8 ~5 acacia_log []
setblock ~5 ~9 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 acacia_planks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~7 ~0 ~6 ~7 ~8 ~6 acacia_log []
fill ~6 ~8 ~5 ~8 ~8 ~7 acacia_slab []
setblock ~7 ~9 ~6 orange_terracotta []
setblock ~7 ~10 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-4 ~1 ~4 slot.container 2 string 10
replaceitem block ~-4 ~1 ~4 slot.container 3 gunpowder 11
replaceitem block ~-4 ~1 ~4 slot.container 4 arrow 20
replaceitem block ~-4 ~1 ~4 slot.container 5 leather 13
replaceitem block ~-4 ~1 ~4 slot.container 9 bread 15
replaceitem block ~-4 ~1 ~4 slot.container 10 cooked_beef 14
replaceitem block ~-4 ~1 ~4 slot.container 11 acacia_log 16
replaceitem block ~-4 ~1 ~4 slot.container 12 iron_ingot 7
replaceitem block ~-4 ~1 ~4 slot.container 13 gold_ingot 6
replaceitem block ~-4 ~1 ~4 slot.container 14 emerald 6
loot insert ~-4 ~1 ~4 loot "rsf/savanna"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 string 13
replaceitem block ~4 ~1 ~4 slot.container 1 gunpowder 14
replaceitem block ~4 ~1 ~4 slot.container 2 arrow 23
replaceitem block ~4 ~1 ~4 slot.container 3 leather 8
replaceitem block ~4 ~1 ~4 slot.container 4 spider_eye 5
replaceitem block ~4 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~4 slot.container 9 bread 13
replaceitem block ~4 ~1 ~4 slot.container 10 cooked_beef 12
replaceitem block ~4 ~1 ~4 slot.container 11 acacia_log 21
replaceitem block ~4 ~1 ~4 slot.container 12 iron_ingot 12
replaceitem block ~4 ~1 ~4 slot.container 13 gold_ingot 4
replaceitem block ~4 ~1 ~4 slot.container 14 emerald 4
loot insert ~4 ~1 ~4 loot "rsf/savanna"
loot insert ~4 ~1 ~4 loot "chests/village/village_savanna_house"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon llama ~0 ~2 ~0
