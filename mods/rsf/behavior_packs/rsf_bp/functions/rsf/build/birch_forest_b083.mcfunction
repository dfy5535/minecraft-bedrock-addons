# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0339/4224 | 主题内编号: b083/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·铁砧锻造与模具工坊 (birch_forest_mine_smithing_foundry)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 birch_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 birch_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 birch_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 birch_planks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
setblock ~-4 ~-4 ~0 blast_furnace []
setblock ~4 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~3 anvil []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 phantom_membrane 6
replaceitem block ~4 ~-2 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~4 ~-2 ~3 slot.container 2 bone 14
replaceitem block ~4 ~-2 ~3 slot.container 3 string 15
replaceitem block ~4 ~-2 ~3 slot.container 4 gunpowder 6
replaceitem block ~4 ~-2 ~3 slot.container 5 arrow 17
replaceitem block ~4 ~-2 ~3 slot.container 9 cooked_chicken 10
replaceitem block ~4 ~-2 ~3 slot.container 10 iron_ingot 8
replaceitem block ~4 ~-2 ~3 slot.container 11 coal 14
replaceitem block ~4 ~-2 ~3 slot.container 12 golden_carrot 9
replaceitem block ~4 ~-2 ~3 slot.container 13 iron_sword 1
replaceitem block ~4 ~-2 ~3 slot.container 14 shears 1
loot insert ~4 ~-2 ~3 loot "rsf/birch_forest"
loot insert ~4 ~-2 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~5 ~5 birch_planks []
fill ~-6 ~1 ~0 ~6 ~4 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~-1 ~4 ~4 air []
fill ~-1 ~1 ~1 ~5 ~3 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-6 ~-7 ~6 ~6 birch_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-6 ~7 ~6 ~6 birch_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 birch_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 birch_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~5 ~7 ~5 birch_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 birch_log []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 birch_log []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 birch_log []
fill ~7 ~0 ~2 ~7 ~4 ~2 birch_log []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 mossy_stone_bricks []
fill ~8 ~1 ~-2 ~8 ~4 ~-2 birch_log []
fill ~8 ~1 ~2 ~8 ~4 ~2 birch_log []
fill ~7 ~5 ~-2 ~8 ~5 ~2 birch_slab []
setblock ~7 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~3 smithing_table []
setblock ~-4 ~1 ~3 anvil []
setblock ~4 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 gunpowder 9
replaceitem block ~5 ~1 ~3 slot.container 1 arrow 20
replaceitem block ~5 ~1 ~3 slot.container 2 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 3 feather 14
replaceitem block ~5 ~1 ~3 slot.container 4 phantom_membrane 9
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 10
replaceitem block ~5 ~1 ~3 slot.container 9 iron_sword 1
replaceitem block ~5 ~1 ~3 slot.container 10 shears 1
replaceitem block ~5 ~1 ~3 slot.container 11 torch 21
replaceitem block ~5 ~1 ~3 slot.container 12 honeycomb 12
replaceitem block ~5 ~1 ~3 slot.container 13 honey_bottle 3
replaceitem block ~5 ~1 ~3 slot.container 14 birch_log 17
loot insert ~5 ~1 ~3 loot "rsf/birch_forest"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 spider_eye 4
replaceitem block ~-5 ~1 ~4 slot.container 1 feather 9
replaceitem block ~-5 ~1 ~4 slot.container 2 phantom_membrane 4
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 13
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 5 string 13
replaceitem block ~-5 ~1 ~4 slot.container 9 iron_sword 1
replaceitem block ~-5 ~1 ~4 slot.container 10 shears 1
replaceitem block ~-5 ~1 ~4 slot.container 11 torch 19
replaceitem block ~-5 ~1 ~4 slot.container 12 honeycomb 10
replaceitem block ~-5 ~1 ~4 slot.container 13 honey_bottle 8
replaceitem block ~-5 ~1 ~4 slot.container 14 birch_log 22
loot insert ~-5 ~1 ~4 loot "rsf/birch_forest"
loot insert ~-5 ~1 ~4 loot "chests/village/village_taiga_house"
summon pillager ~0 ~1 ~-1
summon bee ~-1 ~1 ~1
