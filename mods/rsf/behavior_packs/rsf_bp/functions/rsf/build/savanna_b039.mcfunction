# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1191/4224 | 主题内编号: b039/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·永恒圣火图腾方尖塔 (savanna_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 9x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace log2
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 cobblestone [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 cobblestone [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 acacia_planks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 cobblestone []
fill ~-1 ~-5 ~-2 ~1 ~-1 ~2 air []
setblock ~-1 ~-5 ~0 blast_furnace []
setblock ~1 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~2 anvil []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~1 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-3 ~2 slot.container 0 gunpowder 8
replaceitem block ~1 ~-3 ~2 slot.container 1 arrow 17
replaceitem block ~1 ~-3 ~2 slot.container 2 leather 10
replaceitem block ~1 ~-3 ~2 slot.container 3 spider_eye 7
replaceitem block ~1 ~-3 ~2 slot.container 4 ender_pearl 6
replaceitem block ~1 ~-3 ~2 slot.container 5 rotten_flesh 17
replaceitem block ~1 ~-3 ~2 slot.container 9 torch 16
replaceitem block ~1 ~-3 ~2 slot.container 10 bread 11
replaceitem block ~1 ~-3 ~2 slot.container 11 cooked_beef 10
replaceitem block ~1 ~-3 ~2 slot.container 12 acacia_log 19
replaceitem block ~1 ~-3 ~2 slot.container 13 iron_ingot 10
replaceitem block ~1 ~-3 ~2 slot.container 14 gold_ingot 9
loot insert ~1 ~-3 ~2 loot "rsf/savanna"
loot insert ~1 ~-3 ~2 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~10 ~4 cobblestone []
fill ~-2 ~1 ~-3 ~2 ~9 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~10 ~-4 acacia_log []
fill ~-3 ~1 ~4 ~-3 ~10 ~4 acacia_log []
fill ~3 ~1 ~-4 ~3 ~10 ~-4 acacia_log []
fill ~3 ~1 ~4 ~3 ~10 ~4 acacia_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 orange_terracotta []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 cobblestone []
fill ~0 ~16 ~0 ~0 ~18 ~0 emerald_block []
setblock ~0 ~19 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 stone_bricks []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 5x6x6) ---
fill ~5 ~0 ~6 ~5 ~9 ~6 acacia_log []
fill ~4 ~9 ~5 ~6 ~9 ~7 acacia_slab []
setblock ~5 ~10 ~6 orange_terracotta []
setblock ~5 ~11 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-2 ~1 ~3 smoker []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~2 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~2 ~1 ~3 slot.container 2 bone 11
replaceitem block ~2 ~1 ~3 slot.container 3 string 10
replaceitem block ~2 ~1 ~3 slot.container 4 gunpowder 11
replaceitem block ~2 ~1 ~3 slot.container 5 arrow 20
replaceitem block ~2 ~1 ~3 slot.container 9 iron_ingot 7
replaceitem block ~2 ~1 ~3 slot.container 10 gold_ingot 6
replaceitem block ~2 ~1 ~3 slot.container 11 emerald 6
replaceitem block ~2 ~1 ~3 slot.container 12 saddle 1
replaceitem block ~2 ~1 ~3 slot.container 13 golden_apple 6
replaceitem block ~2 ~1 ~3 slot.container 14 iron_sword 1
loot insert ~2 ~1 ~3 loot "rsf/savanna"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
