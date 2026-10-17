# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1237/4224 | 主题内编号: b085/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·双子烟囱砖石窑厂 (savanna_mine_twin_kiln)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log2
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 hardened_clay [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 hardened_clay [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 coarse_dirt []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 hardened_clay []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 bone 16
replaceitem block ~3 ~-3 ~3 slot.container 1 string 15
replaceitem block ~3 ~-3 ~3 slot.container 2 gunpowder 8
replaceitem block ~3 ~-3 ~3 slot.container 3 arrow 17
replaceitem block ~3 ~-3 ~3 slot.container 4 leather 10
replaceitem block ~3 ~-3 ~3 slot.container 5 spider_eye 7
replaceitem block ~3 ~-3 ~3 slot.container 9 golden_apple 5
replaceitem block ~3 ~-3 ~3 slot.container 10 iron_sword 1
replaceitem block ~3 ~-3 ~3 slot.container 11 torch 22
replaceitem block ~3 ~-3 ~3 slot.container 12 bread 10
replaceitem block ~3 ~-3 ~3 slot.container 13 cooked_beef 9
replaceitem block ~3 ~-3 ~3 slot.container 14 acacia_log 18
loot insert ~3 ~-3 ~3 loot "rsf/savanna"
loot insert ~3 ~-3 ~3 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~9 ~5 hardened_clay []
fill ~2 ~1 ~-5 ~5 ~9 ~5 hardened_clay []
fill ~-4 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~4 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 acacia_planks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 acacia_planks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 hardened_clay []
fill ~0 ~14 ~0 ~0 ~16 ~0 hay_block []
setblock ~0 ~17 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 stone_bricks []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~7 ~0 ~8 ~7 ~5 ~8 acacia_log []
fill ~6 ~5 ~7 ~8 ~5 ~9 acacia_slab []
setblock ~7 ~6 ~8 orange_terracotta []
setblock ~7 ~7 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 leather 13
replaceitem block ~4 ~1 ~4 slot.container 1 spider_eye 10
replaceitem block ~4 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~4 slot.container 4 bone 11
replaceitem block ~4 ~1 ~4 slot.container 5 string 10
replaceitem block ~4 ~1 ~4 slot.container 9 cooked_beef 13
replaceitem block ~4 ~1 ~4 slot.container 10 acacia_log 22
replaceitem block ~4 ~1 ~4 slot.container 11 iron_ingot 6
replaceitem block ~4 ~1 ~4 slot.container 12 gold_ingot 5
replaceitem block ~4 ~1 ~4 slot.container 13 emerald 5
replaceitem block ~4 ~1 ~4 slot.container 14 saddle 1
loot insert ~4 ~1 ~4 loot "rsf/savanna"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1
