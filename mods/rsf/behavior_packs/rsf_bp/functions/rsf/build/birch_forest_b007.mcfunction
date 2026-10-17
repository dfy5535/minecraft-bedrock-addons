# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0263/4224 | 主题内编号: b007/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·八角星芒图腾祭坛 (birch_forest_altar_octagonal_star)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 birch_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 birch_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 birch_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 chiseled_stone_bricks []
setblock ~0 ~-5 ~0 lantern []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 phantom_membrane 6
replaceitem block ~4 ~-2 ~0 slot.container 1 rotten_flesh 15
replaceitem block ~4 ~-2 ~0 slot.container 2 bone 14
replaceitem block ~4 ~-2 ~0 slot.container 3 string 15
replaceitem block ~4 ~-2 ~0 slot.container 4 gunpowder 6
replaceitem block ~4 ~-2 ~0 slot.container 5 arrow 17
replaceitem block ~4 ~-2 ~0 slot.container 9 coal 12
replaceitem block ~4 ~-2 ~0 slot.container 10 golden_carrot 7
replaceitem block ~4 ~-2 ~0 slot.container 11 iron_sword 1
replaceitem block ~4 ~-2 ~0 slot.container 12 shears 1
replaceitem block ~4 ~-2 ~0 slot.container 13 torch 22
replaceitem block ~4 ~-2 ~0 slot.container 14 honeycomb 6
loot insert ~4 ~-2 ~0 loot "rsf/birch_forest"
loot insert ~4 ~-2 ~0 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 birch_planks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-6 ~1 ~-5 ~-6 ~8 ~-5 air []
fill ~6 ~1 ~-5 ~6 ~8 ~-5 air []
fill ~-6 ~1 ~5 ~-6 ~8 ~5 air []
fill ~6 ~1 ~5 ~6 ~8 ~5 air []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 birch_log []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 birch_log []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 birch_log []
fill ~5 ~1 ~4 ~5 ~7 ~4 birch_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 stone_bricks []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 birch_planks []
fill ~0 ~13 ~0 ~0 ~16 ~0 chiseled_stone_bricks []
setblock ~0 ~17 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 birch_log []
setblock ~0 ~4 ~-7 honeycomb_block []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 birch_log []
setblock ~0 ~4 ~7 honeycomb_block []
setblock ~0 ~5 ~7 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 birch_log []
setblock ~-8 ~4 ~0 honeycomb_block []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 birch_log []
setblock ~8 ~4 ~0 honeycomb_block []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 mossy_stone_bricks []
fill ~8 ~1 ~-2 ~8 ~3 ~-2 birch_log []
fill ~8 ~1 ~2 ~8 ~3 ~2 birch_log []
fill ~7 ~4 ~-2 ~8 ~4 ~2 birch_slab []
setblock ~7 ~1 ~0 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 phantom_membrane 9
replaceitem block ~5 ~1 ~3 slot.container 1 rotten_flesh 10
replaceitem block ~5 ~1 ~3 slot.container 2 bone 9
replaceitem block ~5 ~1 ~3 slot.container 3 string 10
replaceitem block ~5 ~1 ~3 slot.container 4 gunpowder 9
replaceitem block ~5 ~1 ~3 slot.container 5 arrow 20
replaceitem block ~5 ~1 ~3 slot.container 9 torch 20
replaceitem block ~5 ~1 ~3 slot.container 10 honeycomb 11
replaceitem block ~5 ~1 ~3 slot.container 11 honey_bottle 9
replaceitem block ~5 ~1 ~3 slot.container 12 birch_log 16
replaceitem block ~5 ~1 ~3 slot.container 13 cooked_chicken 9
replaceitem block ~5 ~1 ~3 slot.container 14 iron_ingot 7
loot insert ~5 ~1 ~3 loot "rsf/birch_forest"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 1 string 13
replaceitem block ~-5 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 3 arrow 23
replaceitem block ~-5 ~1 ~4 slot.container 4 spider_eye 4
replaceitem block ~-5 ~1 ~4 slot.container 5 feather 9
replaceitem block ~-5 ~1 ~4 slot.container 9 torch 18
replaceitem block ~-5 ~1 ~4 slot.container 10 honeycomb 9
replaceitem block ~-5 ~1 ~4 slot.container 11 honey_bottle 7
replaceitem block ~-5 ~1 ~4 slot.container 12 birch_log 21
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_chicken 14
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 5
loot insert ~-5 ~1 ~4 loot "rsf/birch_forest"
loot insert ~-5 ~1 ~4 loot "chests/village/village_taiga_house"
summon witch ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-2 ~0
