# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1175/4224 | 主题内编号: b023/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·双层露台阁楼宝室 (savanna_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[ossuary_tomb] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 11x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-8 ~6 ~12 ~8 air [] replace leaves
fill ~-6 ~1 ~-8 ~6 ~12 ~8 air [] replace leaves2
fill ~-6 ~1 ~-8 ~6 ~12 ~8 air [] replace log
fill ~-6 ~1 ~-8 ~6 ~12 ~8 air [] replace log2
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 cobblestone [] replace air
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 cobblestone [] replace water
fill ~-5 ~0 ~-7 ~5 ~0 ~7 cobblestone_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 acacia_planks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 acacia_planks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 orange_terracotta []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 leather 10
replaceitem block ~0 ~-3 ~-4 slot.container 1 spider_eye 7
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 4 bone 16
replaceitem block ~0 ~-3 ~-4 slot.container 5 string 15
replaceitem block ~0 ~-3 ~-4 slot.container 9 cooked_beef 11
replaceitem block ~0 ~-3 ~-4 slot.container 10 acacia_log 20
replaceitem block ~0 ~-3 ~-4 slot.container 11 iron_ingot 11
replaceitem block ~0 ~-3 ~-4 slot.container 12 gold_ingot 10
replaceitem block ~0 ~-3 ~-4 slot.container 13 emerald 3
replaceitem block ~0 ~-3 ~-4 slot.container 14 saddle 1
loot insert ~0 ~-3 ~-4 loot "rsf/savanna"
loot insert ~0 ~-3 ~-4 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-6 ~4 ~4 ~6 cobblestone []
fill ~-3 ~1 ~-5 ~3 ~3 ~5 air []
fill ~-5 ~4 ~-7 ~5 ~4 ~7 cobblestone_slab []
fill ~-3 ~5 ~-5 ~3 ~8 ~5 acacia_planks []
fill ~-2 ~5 ~-4 ~2 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~5 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-7 ~5 ~8 ~7 cobblestone_slab []
fill ~-3 ~9 ~-5 ~3 ~10 ~5 acacia_planks []
fill ~-4 ~11 ~-6 ~4 ~11 ~6 acacia_slab []
setblock ~0 ~12 ~0 emerald_block []
setblock ~0 ~13 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~10 ~2 acacia_planks []
fill ~5 ~1 ~-1 ~6 ~9 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~11 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~6 ~0 ~7 ~6 ~8 ~7 acacia_log []
fill ~5 ~8 ~6 ~7 ~8 ~8 acacia_slab []
setblock ~6 ~9 ~7 orange_terracotta []
setblock ~6 ~10 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~5 slot.container 2 bone 11
replaceitem block ~3 ~1 ~5 slot.container 3 string 10
replaceitem block ~3 ~1 ~5 slot.container 4 gunpowder 11
replaceitem block ~3 ~1 ~5 slot.container 5 arrow 20
replaceitem block ~3 ~1 ~5 slot.container 9 emerald 9
replaceitem block ~3 ~1 ~5 slot.container 10 saddle 1
replaceitem block ~3 ~1 ~5 slot.container 11 golden_apple 2
replaceitem block ~3 ~1 ~5 slot.container 12 iron_sword 1
replaceitem block ~3 ~1 ~5 slot.container 13 torch 19
replaceitem block ~3 ~1 ~5 slot.container 14 bread 14
loot insert ~3 ~1 ~5 loot "rsf/savanna"
summon llama ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~2 ~0
