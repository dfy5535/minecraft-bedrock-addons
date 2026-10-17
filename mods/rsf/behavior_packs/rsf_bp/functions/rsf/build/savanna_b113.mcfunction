# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1265/4224 | 主题内编号: b113/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·八角全采光生态温室 (savanna_conservatory_glass_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 hardened_clay [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 hardened_clay [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 coarse_dirt []
setblock ~0 ~0 ~0 hay_block []

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

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~7 ~5 hardened_clay []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 air []
fill ~4 ~1 ~5 ~4 ~8 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 stripped_acacia_log []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 stripped_acacia_log []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 stripped_acacia_log []
fill ~3 ~1 ~4 ~3 ~7 ~4 stripped_acacia_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 acacia_planks []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 glass []
fill ~-2 ~8 ~-3 ~2 ~8 ~3 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 acacia_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 stripped_acacia_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 stripped_acacia_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 6x6x5) ---
fill ~6 ~0 ~6 ~6 ~8 ~6 acacia_log []
fill ~5 ~8 ~5 ~7 ~8 ~7 acacia_slab []
setblock ~6 ~9 ~6 orange_terracotta []
setblock ~6 ~10 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 11
replaceitem block ~3 ~1 ~4 slot.container 1 string 10
replaceitem block ~3 ~1 ~4 slot.container 2 gunpowder 11
replaceitem block ~3 ~1 ~4 slot.container 3 arrow 20
replaceitem block ~3 ~1 ~4 slot.container 4 leather 13
replaceitem block ~3 ~1 ~4 slot.container 5 spider_eye 10
replaceitem block ~3 ~1 ~4 slot.container 9 emerald 8
replaceitem block ~3 ~1 ~4 slot.container 10 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 11 golden_apple 1
replaceitem block ~3 ~1 ~4 slot.container 12 iron_sword 1
replaceitem block ~3 ~1 ~4 slot.container 13 torch 18
replaceitem block ~3 ~1 ~4 slot.container 14 bread 13
loot insert ~3 ~1 ~4 loot "rsf/savanna"
summon llama ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
