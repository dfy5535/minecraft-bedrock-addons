# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1248/4224 | 主题内编号: b096/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·高台三阶献祭神祠 (savanna_shrine_stepped_offering)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log2
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
replaceitem block ~2 ~-2 ~3 slot.container 0 arrow 17
replaceitem block ~2 ~-2 ~3 slot.container 1 leather 10
replaceitem block ~2 ~-2 ~3 slot.container 2 spider_eye 7
replaceitem block ~2 ~-2 ~3 slot.container 3 ender_pearl 6
replaceitem block ~2 ~-2 ~3 slot.container 4 rotten_flesh 17
replaceitem block ~2 ~-2 ~3 slot.container 5 bone 16
replaceitem block ~2 ~-2 ~3 slot.container 9 iron_sword 1
replaceitem block ~2 ~-2 ~3 slot.container 10 torch 22
replaceitem block ~2 ~-2 ~3 slot.container 11 bread 10
replaceitem block ~2 ~-2 ~3 slot.container 12 cooked_beef 9
replaceitem block ~2 ~-2 ~3 slot.container 13 acacia_log 18
replaceitem block ~2 ~-2 ~3 slot.container 14 iron_ingot 9
loot insert ~2 ~-2 ~3 loot "rsf/savanna"
loot insert ~2 ~-2 ~3 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 acacia_planks []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 stone_bricks []
fill ~-2 ~5 ~-3 ~2 ~7 ~3 hardened_clay []
fill ~-2 ~1 ~-3 ~2 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 acacia_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 stone_bricks []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 hardened_clay []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 chiseled_stone_bricks []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~6 ~0 ~7 ~6 ~6 ~7 acacia_log []
fill ~5 ~6 ~6 ~7 ~6 ~8 acacia_slab []
setblock ~6 ~7 ~7 orange_terracotta []
setblock ~6 ~8 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-4 ~1 ~5 smoker []
setblock ~4 ~1 ~5 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 2 string 10
replaceitem block ~-3 ~1 ~4 slot.container 3 gunpowder 11
replaceitem block ~-3 ~1 ~4 slot.container 4 arrow 20
replaceitem block ~-3 ~1 ~4 slot.container 5 leather 13
replaceitem block ~-3 ~1 ~4 slot.container 9 gold_ingot 6
replaceitem block ~-3 ~1 ~4 slot.container 10 emerald 6
replaceitem block ~-3 ~1 ~4 slot.container 11 saddle 1
replaceitem block ~-3 ~1 ~4 slot.container 12 golden_apple 6
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_sword 1
replaceitem block ~-3 ~1 ~4 slot.container 14 torch 16
loot insert ~-3 ~1 ~4 loot "rsf/savanna"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 string 13
replaceitem block ~3 ~1 ~4 slot.container 1 gunpowder 14
replaceitem block ~3 ~1 ~4 slot.container 2 arrow 23
replaceitem block ~3 ~1 ~4 slot.container 3 leather 8
replaceitem block ~3 ~1 ~4 slot.container 4 spider_eye 5
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 9 gold_ingot 4
replaceitem block ~3 ~1 ~4 slot.container 10 emerald 4
replaceitem block ~3 ~1 ~4 slot.container 11 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 12 golden_apple 4
replaceitem block ~3 ~1 ~4 slot.container 13 iron_sword 1
replaceitem block ~3 ~1 ~4 slot.container 14 torch 21
loot insert ~3 ~1 ~4 loot "rsf/savanna"
loot insert ~3 ~1 ~4 loot "chests/village/village_savanna_house"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
