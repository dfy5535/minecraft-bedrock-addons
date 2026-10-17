# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1190/4224 | 主题内编号: b038/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·四方凯旋衣冠冢 (savanna_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pagoda_double] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 acacia_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 coarse_dirt []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 acacia_planks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 acacia_planks []
setblock ~0 ~-5 ~0 emerald_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-2 ~-3 slot.container 1 bone 16
replaceitem block ~0 ~-2 ~-3 slot.container 2 string 15
replaceitem block ~0 ~-2 ~-3 slot.container 3 gunpowder 8
replaceitem block ~0 ~-2 ~-3 slot.container 4 arrow 17
replaceitem block ~0 ~-2 ~-3 slot.container 5 leather 10
replaceitem block ~0 ~-2 ~-3 slot.container 9 saddle 1
replaceitem block ~0 ~-2 ~-3 slot.container 10 golden_apple 5
replaceitem block ~0 ~-2 ~-3 slot.container 11 iron_sword 1
replaceitem block ~0 ~-2 ~-3 slot.container 12 torch 22
replaceitem block ~0 ~-2 ~-3 slot.container 13 bread 10
replaceitem block ~0 ~-2 ~-3 slot.container 14 cooked_beef 9
loot insert ~0 ~-2 ~-3 loot "rsf/savanna"
loot insert ~0 ~-2 ~-3 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~8 ~5 stone_bricks []
fill ~-4 ~1 ~-2 ~4 ~8 ~2 stone_bricks []
fill ~-1 ~1 ~-4 ~1 ~7 ~4 air []
fill ~-3 ~1 ~-1 ~3 ~7 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-4 ~2 ~0 acacia_fence []
setblock ~4 ~2 ~0 acacia_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 acacia_slab []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 cobblestone []
fill ~-4 ~11 ~-5 ~4 ~11 ~5 cobblestone_slab []
setblock ~0 ~12 ~0 gold_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 acacia_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 acacia_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 acacia_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 acacia_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 6x6x5) ---
fill ~6 ~0 ~6 ~6 ~8 ~6 acacia_log []
fill ~5 ~8 ~5 ~7 ~8 ~7 acacia_slab []
setblock ~6 ~9 ~6 orange_terracotta []
setblock ~6 ~10 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~7 ~0 lantern []
fill ~-3 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 spider_eye 10
replaceitem block ~-3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 4 string 10
replaceitem block ~-3 ~1 ~4 slot.container 5 gunpowder 11
replaceitem block ~-3 ~1 ~4 slot.container 9 bread 10
replaceitem block ~-3 ~1 ~4 slot.container 10 cooked_beef 9
replaceitem block ~-3 ~1 ~4 slot.container 11 acacia_log 18
replaceitem block ~-3 ~1 ~4 slot.container 12 iron_ingot 9
replaceitem block ~-3 ~1 ~4 slot.container 13 gold_ingot 8
replaceitem block ~-3 ~1 ~4 slot.container 14 emerald 8
loot insert ~-3 ~1 ~4 loot "rsf/savanna"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 1 bone 14
replaceitem block ~3 ~1 ~4 slot.container 2 string 13
replaceitem block ~3 ~1 ~4 slot.container 3 gunpowder 14
replaceitem block ~3 ~1 ~4 slot.container 4 arrow 23
replaceitem block ~3 ~1 ~4 slot.container 5 leather 8
replaceitem block ~3 ~1 ~4 slot.container 9 bread 15
replaceitem block ~3 ~1 ~4 slot.container 10 cooked_beef 14
replaceitem block ~3 ~1 ~4 slot.container 11 acacia_log 16
replaceitem block ~3 ~1 ~4 slot.container 12 iron_ingot 7
replaceitem block ~3 ~1 ~4 slot.container 13 gold_ingot 6
replaceitem block ~3 ~1 ~4 slot.container 14 emerald 6
loot insert ~3 ~1 ~4 loot "rsf/savanna"
loot insert ~3 ~1 ~4 loot "chests/village/village_savanna_house"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon llama ~0 ~-2 ~0
