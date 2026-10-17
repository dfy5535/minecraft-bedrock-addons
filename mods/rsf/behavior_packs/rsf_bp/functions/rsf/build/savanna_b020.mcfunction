# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1172/4224 | 主题内编号: b020/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·重甲防爆金库房间 (savanna_chamber_fortified_strongbox)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 acacia_planks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 acacia_planks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 acacia_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 hardened_clay []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~2 ~-2 ~3 slot.container 1 bone 16
replaceitem block ~2 ~-2 ~3 slot.container 2 string 15
replaceitem block ~2 ~-2 ~3 slot.container 3 gunpowder 8
replaceitem block ~2 ~-2 ~3 slot.container 4 arrow 17
replaceitem block ~2 ~-2 ~3 slot.container 5 leather 10
replaceitem block ~2 ~-2 ~3 slot.container 9 bread 16
replaceitem block ~2 ~-2 ~3 slot.container 10 cooked_beef 8
replaceitem block ~2 ~-2 ~3 slot.container 11 acacia_log 17
replaceitem block ~2 ~-2 ~3 slot.container 12 iron_ingot 8
replaceitem block ~2 ~-2 ~3 slot.container 13 gold_ingot 7
replaceitem block ~2 ~-2 ~3 slot.container 14 emerald 7
loot insert ~2 ~-2 ~3 loot "rsf/savanna"
loot insert ~2 ~-2 ~3 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-4 ~1 ~-5 ~4 ~6 ~5 acacia_planks []
fill ~-3 ~1 ~-4 ~3 ~5 ~4 air []
fill ~-4 ~1 ~-5 ~-3 ~8 ~-4 stone_bricks []
setblock ~-4 ~9 ~-5 torch []
fill ~-4 ~1 ~4 ~-3 ~8 ~5 stone_bricks []
setblock ~-4 ~9 ~4 torch []
fill ~3 ~1 ~-5 ~4 ~8 ~-4 stone_bricks []
setblock ~3 ~9 ~-5 torch []
fill ~3 ~1 ~4 ~4 ~8 ~5 stone_bricks []
setblock ~3 ~9 ~4 torch []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~6 ~-5 ~4 ~6 ~5 stone_bricks []
fill ~-4 ~7 ~-5 ~4 ~7 ~5 acacia_fence []
fill ~-3 ~7 ~-4 ~3 ~7 ~4 air []
setblock ~-4 ~7 ~-5 acacia_log []
setblock ~-4 ~8 ~-5 torch []
setblock ~-4 ~7 ~5 acacia_log []
setblock ~-4 ~8 ~5 torch []
setblock ~4 ~7 ~-5 acacia_log []
setblock ~4 ~8 ~-5 torch []
setblock ~4 ~7 ~5 acacia_log []
setblock ~4 ~8 ~5 torch []

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

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 6x6x2) ---
fill ~6 ~0 ~6 ~6 ~5 ~6 acacia_log []
fill ~5 ~5 ~5 ~7 ~5 ~7 acacia_slab []
setblock ~6 ~6 ~6 orange_terracotta []
setblock ~6 ~7 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 arrow 20
replaceitem block ~-3 ~1 ~4 slot.container 1 leather 13
replaceitem block ~-3 ~1 ~4 slot.container 2 spider_eye 10
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 9 saddle 1
replaceitem block ~-3 ~1 ~4 slot.container 10 golden_apple 5
replaceitem block ~-3 ~1 ~4 slot.container 11 iron_sword 1
replaceitem block ~-3 ~1 ~4 slot.container 12 torch 22
replaceitem block ~-3 ~1 ~4 slot.container 13 bread 10
replaceitem block ~-3 ~1 ~4 slot.container 14 cooked_beef 9
loot insert ~-3 ~1 ~4 loot "rsf/savanna"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 spider_eye 5
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 3 bone 14
replaceitem block ~3 ~1 ~4 slot.container 4 string 13
replaceitem block ~3 ~1 ~4 slot.container 5 gunpowder 14
replaceitem block ~3 ~1 ~4 slot.container 9 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 10 golden_apple 3
replaceitem block ~3 ~1 ~4 slot.container 11 iron_sword 1
replaceitem block ~3 ~1 ~4 slot.container 12 torch 20
replaceitem block ~3 ~1 ~4 slot.container 13 bread 15
replaceitem block ~3 ~1 ~4 slot.container 14 cooked_beef 14
loot insert ~3 ~1 ~4 loot "rsf/savanna"
loot insert ~3 ~1 ~4 loot "chests/village/village_savanna_house"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon llama ~0 ~-2 ~0
