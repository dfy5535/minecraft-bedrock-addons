# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1178/4224 | 主题内编号: b026/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·尖顶信标引航高塔 (savanna_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 9x11 | 地上高度 11格 | 地下深度 3格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace log2
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 stone_bricks [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 stone_bricks [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 acacia_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 coarse_dirt []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 acacia_planks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 hardened_clay []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~4 campfire []
setblock ~3 ~-6 ~-4 campfire []
setblock ~3 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~4 slot.container 0 gunpowder 8
replaceitem block ~3 ~-4 ~4 slot.container 1 arrow 17
replaceitem block ~3 ~-4 ~4 slot.container 2 leather 10
replaceitem block ~3 ~-4 ~4 slot.container 3 spider_eye 7
replaceitem block ~3 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-4 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-4 ~4 slot.container 9 emerald 4
replaceitem block ~3 ~-4 ~4 slot.container 10 saddle 1
replaceitem block ~3 ~-4 ~4 slot.container 11 golden_apple 4
replaceitem block ~3 ~-4 ~4 slot.container 12 iron_sword 1
replaceitem block ~3 ~-4 ~4 slot.container 13 torch 21
replaceitem block ~3 ~-4 ~4 slot.container 14 bread 16
loot insert ~3 ~-4 ~4 loot "rsf/savanna"
loot insert ~3 ~-4 ~4 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-3 ~1 ~-4 ~3 ~11 ~4 stone_bricks []
fill ~-2 ~1 ~-3 ~2 ~10 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~12 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~12 ~-4 air []
fill ~-3 ~1 ~4 ~-3 ~12 ~4 air []
fill ~3 ~1 ~4 ~3 ~12 ~4 air []
fill ~-2 ~1 ~-3 ~-2 ~11 ~-3 acacia_log []
fill ~2 ~1 ~-3 ~2 ~11 ~-3 acacia_log []
fill ~-2 ~1 ~3 ~-2 ~11 ~3 acacia_log []
fill ~2 ~1 ~3 ~2 ~11 ~3 acacia_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 acacia_planks []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 stone_bricks []
fill ~0 ~17 ~0 ~0 ~19 ~0 gold_block []
setblock ~0 ~20 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~10 ~-2 acacia_log []
fill ~-4 ~0 ~2 ~-4 ~10 ~2 acacia_log []
fill ~4 ~0 ~-2 ~4 ~10 ~-2 acacia_log []
fill ~4 ~0 ~2 ~4 ~10 ~2 acacia_log []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 5x5x3) ---
fill ~5 ~0 ~5 ~5 ~6 ~5 acacia_log []
fill ~4 ~6 ~4 ~6 ~6 ~6 acacia_slab []
setblock ~5 ~7 ~5 orange_terracotta []
setblock ~5 ~8 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~10 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 gold_block []
setblock ~0 ~1 ~0 emerald_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~3 slot.container 0 string 10
replaceitem block ~-2 ~1 ~3 slot.container 1 gunpowder 11
replaceitem block ~-2 ~1 ~3 slot.container 2 arrow 20
replaceitem block ~-2 ~1 ~3 slot.container 3 leather 13
replaceitem block ~-2 ~1 ~3 slot.container 4 spider_eye 10
replaceitem block ~-2 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-2 ~1 ~3 slot.container 9 gold_ingot 6
replaceitem block ~-2 ~1 ~3 slot.container 10 emerald 6
replaceitem block ~-2 ~1 ~3 slot.container 11 saddle 1
replaceitem block ~-2 ~1 ~3 slot.container 12 golden_apple 6
replaceitem block ~-2 ~1 ~3 slot.container 13 iron_sword 1
replaceitem block ~-2 ~1 ~3 slot.container 14 torch 16
loot insert ~-2 ~1 ~3 loot "rsf/savanna"
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 arrow 23
replaceitem block ~2 ~1 ~3 slot.container 1 leather 8
replaceitem block ~2 ~1 ~3 slot.container 2 spider_eye 5
replaceitem block ~2 ~1 ~3 slot.container 3 ender_pearl 4
replaceitem block ~2 ~1 ~3 slot.container 4 rotten_flesh 15
replaceitem block ~2 ~1 ~3 slot.container 5 bone 14
replaceitem block ~2 ~1 ~3 slot.container 9 gold_ingot 4
replaceitem block ~2 ~1 ~3 slot.container 10 emerald 4
replaceitem block ~2 ~1 ~3 slot.container 11 saddle 1
replaceitem block ~2 ~1 ~3 slot.container 12 golden_apple 4
replaceitem block ~2 ~1 ~3 slot.container 13 iron_sword 1
replaceitem block ~2 ~1 ~3 slot.container 14 torch 21
loot insert ~2 ~1 ~3 loot "rsf/savanna"
loot insert ~2 ~1 ~3 loot "chests/village/village_savanna_house"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon llama ~0 ~-2 ~0
