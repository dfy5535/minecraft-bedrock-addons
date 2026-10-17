# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1164/4224 | 主题内编号: b012/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·双子暗门地底宝库 (savanna_dungeon_twin_vault)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 acacia_planks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 acacia_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 acacia_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 hardened_clay []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-3 ~3 slot.container 1 bone 16
replaceitem block ~4 ~-3 ~3 slot.container 2 string 15
replaceitem block ~4 ~-3 ~3 slot.container 3 gunpowder 8
replaceitem block ~4 ~-3 ~3 slot.container 4 arrow 17
replaceitem block ~4 ~-3 ~3 slot.container 5 leather 10
replaceitem block ~4 ~-3 ~3 slot.container 9 saddle 1
replaceitem block ~4 ~-3 ~3 slot.container 10 golden_apple 7
replaceitem block ~4 ~-3 ~3 slot.container 11 iron_sword 1
replaceitem block ~4 ~-3 ~3 slot.container 12 torch 17
replaceitem block ~4 ~-3 ~3 slot.container 13 bread 12
replaceitem block ~4 ~-3 ~3 slot.container 14 cooked_beef 11
loot insert ~4 ~-3 ~3 loot "rsf/savanna"
loot insert ~4 ~-3 ~3 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~7 ~5 acacia_planks []
fill ~2 ~1 ~-5 ~6 ~7 ~5 acacia_planks []
fill ~-5 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 stone_bricks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 acacia_planks []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 stone_bricks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 hay_block []
setblock ~0 ~10 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 acacia_log []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 acacia_log []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 acacia_log []
fill ~7 ~0 ~2 ~7 ~5 ~2 acacia_log []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~8 ~0 ~7 ~8 ~7 ~7 acacia_log []
fill ~7 ~7 ~6 ~9 ~7 ~8 acacia_slab []
setblock ~8 ~8 ~7 orange_terracotta []
setblock ~8 ~9 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~5 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 chiseled_stone_bricks []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 arrow 20
replaceitem block ~-5 ~1 ~4 slot.container 1 leather 13
replaceitem block ~-5 ~1 ~4 slot.container 2 spider_eye 10
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 9 acacia_log 18
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 11 gold_ingot 8
replaceitem block ~-5 ~1 ~4 slot.container 12 emerald 8
replaceitem block ~-5 ~1 ~4 slot.container 13 saddle 1
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 1
loot insert ~-5 ~1 ~4 loot "rsf/savanna"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 spider_eye 5
replaceitem block ~5 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~5 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 3 bone 14
replaceitem block ~5 ~1 ~4 slot.container 4 string 13
replaceitem block ~5 ~1 ~4 slot.container 5 gunpowder 14
replaceitem block ~5 ~1 ~4 slot.container 9 acacia_log 16
replaceitem block ~5 ~1 ~4 slot.container 10 iron_ingot 7
replaceitem block ~5 ~1 ~4 slot.container 11 gold_ingot 6
replaceitem block ~5 ~1 ~4 slot.container 12 emerald 6
replaceitem block ~5 ~1 ~4 slot.container 13 saddle 1
replaceitem block ~5 ~1 ~4 slot.container 14 golden_apple 6
loot insert ~5 ~1 ~4 loot "rsf/savanna"
loot insert ~5 ~1 ~4 loot "chests/village/village_savanna_house"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
