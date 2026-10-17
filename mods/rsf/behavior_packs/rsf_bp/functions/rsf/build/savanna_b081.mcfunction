# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1233/4224 | 主题内编号: b081/128
# 地形主题 #10: 热带草原与高原 (savanna) —— 带金合欢斜撑凉棚与陶瓦图腾柱
# 建筑名称: 高原部落系·双高炉重工冶炼密室 (savanna_mine_blast_smeltery)
# 建筑构造: 主体[mine_smeltery] + 屋顶[gabled_stairs] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 11x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: savanna, savanna_plateau, savanna_mutated, savanna_plateau_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-8 ~6 ~10 ~8 air [] replace leaves
fill ~-6 ~1 ~-8 ~6 ~10 ~8 air [] replace leaves2
fill ~-6 ~1 ~-8 ~6 ~10 ~8 air [] replace log
fill ~-6 ~1 ~-8 ~6 ~10 ~8 air [] replace log2
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 hardened_clay [] replace air
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 hardened_clay [] replace water
fill ~-5 ~0 ~-7 ~5 ~0 ~7 stone_brick_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 stone_bricks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 coarse_dirt []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 acacia_planks []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 ender_pearl 6
replaceitem block ~-2 ~-4 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~-2 ~-4 ~3 slot.container 2 bone 16
replaceitem block ~-2 ~-4 ~3 slot.container 3 string 15
replaceitem block ~-2 ~-4 ~3 slot.container 4 gunpowder 8
replaceitem block ~-2 ~-4 ~3 slot.container 5 arrow 17
replaceitem block ~-2 ~-4 ~3 slot.container 9 golden_apple 4
replaceitem block ~-2 ~-4 ~3 slot.container 10 iron_sword 1
replaceitem block ~-2 ~-4 ~3 slot.container 11 torch 21
replaceitem block ~-2 ~-4 ~3 slot.container 12 bread 16
replaceitem block ~-2 ~-4 ~3 slot.container 13 cooked_beef 8
replaceitem block ~-2 ~-4 ~3 slot.container 14 acacia_log 17
loot insert ~-2 ~-4 ~3 loot "rsf/savanna"
loot insert ~-2 ~-4 ~3 loot "chests/village/village_savanna_house"

# --- [阶段 3] 主体平面与空间几何 (mine_smeltery) ---
fill ~-4 ~1 ~-6 ~4 ~6 ~6 hardened_clay []
fill ~-3 ~1 ~-5 ~3 ~5 ~5 air []
fill ~-4 ~1 ~6 ~-5 ~9 ~6 acacia_planks []
setblock ~-4 ~10 ~6 campfire []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~7 ~-7 ~-5 ~7 ~7 acacia_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-7 ~5 ~7 ~7 acacia_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~-4 ~8 ~6 acacia_stairs ["weirdo_direction"=0]
fill ~4 ~8 ~-6 ~4 ~8 ~6 acacia_stairs ["weirdo_direction"=1]
fill ~-3 ~8 ~-6 ~3 ~8 ~6 stone_brick_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 acacia_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 acacia_planks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 stripped_acacia_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 stripped_acacia_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 stone_brick_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (savanna 独有建筑构件 | 几何特征参数 6x8x3) ---
fill ~6 ~0 ~8 ~6 ~6 ~8 acacia_log []
fill ~5 ~6 ~7 ~7 ~6 ~9 acacia_slab []
setblock ~6 ~7 ~8 orange_terracotta []
setblock ~6 ~8 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-3 ~1 ~5 blast_furnace []
setblock ~-2 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 bone 11
replaceitem block ~3 ~1 ~5 slot.container 1 string 10
replaceitem block ~3 ~1 ~5 slot.container 2 gunpowder 11
replaceitem block ~3 ~1 ~5 slot.container 3 arrow 20
replaceitem block ~3 ~1 ~5 slot.container 4 leather 13
replaceitem block ~3 ~1 ~5 slot.container 5 spider_eye 10
replaceitem block ~3 ~1 ~5 slot.container 9 torch 17
replaceitem block ~3 ~1 ~5 slot.container 10 bread 12
replaceitem block ~3 ~1 ~5 slot.container 11 cooked_beef 11
replaceitem block ~3 ~1 ~5 slot.container 12 acacia_log 20
replaceitem block ~3 ~1 ~5 slot.container 13 iron_ingot 11
replaceitem block ~3 ~1 ~5 slot.container 14 gold_ingot 10
loot insert ~3 ~1 ~5 loot "rsf/savanna"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
