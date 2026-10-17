# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1242/4224 | 主题内编号: b090/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·八角攒尖悬灯神龛 (savanna_shrine_octagonal_gazebo)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 acacia_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 coarse_dirt []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 acacia_planks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 acacia_planks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-2 ~3 slot.container 0 arrow 17
replaceitem block ~-2 ~-2 ~3 slot.container 1 leather 10
replaceitem block ~-2 ~-2 ~3 slot.container 2 spider_eye 7
replaceitem block ~-2 ~-2 ~3 slot.container 3 ender_pearl 6
replaceitem block ~-2 ~-2 ~3 slot.container 4 rotten_flesh 17
replaceitem block ~-2 ~-2 ~3 slot.container 5 bone 16
replaceitem block ~-2 ~-2 ~3 slot.container 9 bread 16
replaceitem block ~-2 ~-2 ~3 slot.container 10 cooked_beef 8
replaceitem block ~-2 ~-2 ~3 slot.container 11 acacia_log 17
replaceitem block ~-2 ~-2 ~3 slot.container 12 iron_ingot 8
replaceitem block ~-2 ~-2 ~3 slot.container 13 gold_ingot 7
replaceitem block ~-2 ~-2 ~3 slot.container 14 emerald 7
loot insert ~-2 ~-2 ~3 loot "rsf/savanna"
loot insert ~-2 ~-2 ~3 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~7 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 air []
fill ~4 ~1 ~5 ~4 ~8 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 acacia_log []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 acacia_log []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 acacia_log []
fill ~3 ~1 ~4 ~3 ~7 ~4 acacia_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 acacia_planks []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 cobblestone []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 gold_block []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~4 ~-7 acacia_log []
setblock ~-6 ~5 ~-7 lantern []
fill ~-6 ~0 ~7 ~-6 ~4 ~7 acacia_log []
setblock ~-6 ~5 ~7 lantern []
fill ~6 ~0 ~-7 ~6 ~4 ~-7 acacia_log []
setblock ~6 ~5 ~-7 lantern []
fill ~6 ~0 ~7 ~6 ~4 ~7 acacia_log []
setblock ~6 ~5 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~6 ~0 ~7 ~6 ~5 ~7 acacia_log []
fill ~5 ~5 ~6 ~7 ~5 ~8 acacia_slab []
setblock ~6 ~6 ~7 orange_terracotta []
setblock ~6 ~7 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 string 10
replaceitem block ~-3 ~1 ~4 slot.container 1 gunpowder 11
replaceitem block ~-3 ~1 ~4 slot.container 2 arrow 20
replaceitem block ~-3 ~1 ~4 slot.container 3 leather 13
replaceitem block ~-3 ~1 ~4 slot.container 4 spider_eye 10
replaceitem block ~-3 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 9 saddle 1
replaceitem block ~-3 ~1 ~4 slot.container 10 golden_apple 5
replaceitem block ~-3 ~1 ~4 slot.container 11 iron_sword 1
replaceitem block ~-3 ~1 ~4 slot.container 12 torch 22
replaceitem block ~-3 ~1 ~4 slot.container 13 bread 10
replaceitem block ~-3 ~1 ~4 slot.container 14 cooked_beef 9
loot insert ~-3 ~1 ~4 loot "rsf/savanna"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 arrow 23
replaceitem block ~3 ~1 ~4 slot.container 1 leather 8
replaceitem block ~3 ~1 ~4 slot.container 2 spider_eye 5
replaceitem block ~3 ~1 ~4 slot.container 3 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 5 bone 14
replaceitem block ~3 ~1 ~4 slot.container 9 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 10 golden_apple 3
replaceitem block ~3 ~1 ~4 slot.container 11 iron_sword 1
replaceitem block ~3 ~1 ~4 slot.container 12 torch 20
replaceitem block ~3 ~1 ~4 slot.container 13 bread 15
replaceitem block ~3 ~1 ~4 slot.container 14 cooked_beef 14
loot insert ~3 ~1 ~4 loot "rsf/savanna"
loot insert ~3 ~1 ~4 loot "chests/village/village_savanna_house"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
