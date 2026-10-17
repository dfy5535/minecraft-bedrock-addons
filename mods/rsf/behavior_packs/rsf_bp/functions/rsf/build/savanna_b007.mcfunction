# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1159/4224 | 主题内编号: b007/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·八角星芒图腾祭坛 (savanna_altar_octagonal_star)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[portal_chamber] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobblestone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 acacia_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 emerald_block []

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
fill ~-5 ~1 ~-6 ~5 ~8 ~6 cobblestone []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~9 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~9 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~9 ~6 air []
fill ~5 ~1 ~6 ~5 ~9 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 acacia_log []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 acacia_log []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 acacia_log []
fill ~4 ~1 ~5 ~4 ~8 ~5 acacia_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 orange_terracotta []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 cobblestone []
fill ~0 ~14 ~0 ~0 ~16 ~0 emerald_block []
setblock ~0 ~17 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 stone_bricks []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x9x4) ---
fill ~7 ~0 ~9 ~7 ~7 ~9 acacia_log []
fill ~6 ~7 ~8 ~8 ~7 ~10 acacia_slab []
setblock ~7 ~8 ~9 orange_terracotta []
setblock ~7 ~9 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 emerald_block []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 2 bone 11
replaceitem block ~4 ~1 ~5 slot.container 3 string 10
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 11
replaceitem block ~4 ~1 ~5 slot.container 5 arrow 20
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 5
replaceitem block ~4 ~1 ~5 slot.container 10 iron_sword 1
replaceitem block ~4 ~1 ~5 slot.container 11 torch 22
replaceitem block ~4 ~1 ~5 slot.container 12 bread 10
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_beef 9
replaceitem block ~4 ~1 ~5 slot.container 14 acacia_log 18
loot insert ~4 ~1 ~5 loot "rsf/savanna"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
