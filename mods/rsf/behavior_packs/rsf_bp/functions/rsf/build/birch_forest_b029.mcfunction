# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0285/4224 | 主题内编号: b029/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·奥术星象琉璃塔 (birch_forest_tower_mage_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 3格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 calcite [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 calcite [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 mossy_cobblestone []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 bookshelf []
setblock ~0 ~-5 ~0 lantern []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 spider_eye 6
replaceitem block ~3 ~-2 ~0 slot.container 1 feather 11
replaceitem block ~3 ~-2 ~0 slot.container 2 phantom_membrane 6
replaceitem block ~3 ~-2 ~0 slot.container 3 rotten_flesh 15
replaceitem block ~3 ~-2 ~0 slot.container 4 bone 14
replaceitem block ~3 ~-2 ~0 slot.container 5 string 15
replaceitem block ~3 ~-2 ~0 slot.container 9 honey_bottle 6
replaceitem block ~3 ~-2 ~0 slot.container 10 birch_log 20
replaceitem block ~3 ~-2 ~0 slot.container 11 cooked_chicken 13
replaceitem block ~3 ~-2 ~0 slot.container 12 iron_ingot 11
replaceitem block ~3 ~-2 ~0 slot.container 13 coal 10
replaceitem block ~3 ~-2 ~0 slot.container 14 golden_carrot 5
loot insert ~3 ~-2 ~0 loot "rsf/birch_forest"
loot insert ~3 ~-2 ~0 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-5 ~1 ~-4 ~5 ~9 ~4 calcite []
fill ~-4 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 birch_slab []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~3 ~0 ~9 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 birch_planks []
fill ~-4 ~10 ~-3 ~4 ~11 ~3 glass []
fill ~-3 ~10 ~-2 ~3 ~10 ~2 air []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 birch_log []
setblock ~0 ~4 ~-6 gold_block []
setblock ~0 ~5 ~-6 lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 birch_log []
setblock ~0 ~4 ~6 gold_block []
setblock ~0 ~5 ~6 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 birch_log []
setblock ~-7 ~4 ~0 gold_block []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 birch_log []
setblock ~7 ~4 ~0 gold_block []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~6 ~0 ~-2 ~7 ~0 ~2 stone_bricks []
fill ~7 ~1 ~-2 ~7 ~5 ~-2 birch_log []
fill ~7 ~1 ~2 ~7 ~5 ~2 birch_log []
fill ~6 ~6 ~-2 ~7 ~6 ~2 stone_brick_slab []
setblock ~6 ~1 ~0 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~3 smithing_table []
setblock ~-4 ~1 ~3 anvil []
setblock ~4 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 spider_eye 9
replaceitem block ~4 ~1 ~2 slot.container 1 feather 14
replaceitem block ~4 ~1 ~2 slot.container 2 phantom_membrane 9
replaceitem block ~4 ~1 ~2 slot.container 3 rotten_flesh 10
replaceitem block ~4 ~1 ~2 slot.container 4 bone 9
replaceitem block ~4 ~1 ~2 slot.container 5 string 10
replaceitem block ~4 ~1 ~2 slot.container 9 coal 15
replaceitem block ~4 ~1 ~2 slot.container 10 golden_carrot 10
replaceitem block ~4 ~1 ~2 slot.container 11 iron_sword 1
replaceitem block ~4 ~1 ~2 slot.container 12 shears 1
replaceitem block ~4 ~1 ~2 slot.container 13 torch 18
replaceitem block ~4 ~1 ~2 slot.container 14 honeycomb 9
loot insert ~4 ~1 ~2 loot "rsf/birch_forest"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 phantom_membrane 4
replaceitem block ~-4 ~1 ~3 slot.container 1 rotten_flesh 13
replaceitem block ~-4 ~1 ~3 slot.container 2 bone 12
replaceitem block ~-4 ~1 ~3 slot.container 3 string 13
replaceitem block ~-4 ~1 ~3 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~3 slot.container 5 arrow 23
replaceitem block ~-4 ~1 ~3 slot.container 9 coal 13
replaceitem block ~-4 ~1 ~3 slot.container 10 golden_carrot 8
replaceitem block ~-4 ~1 ~3 slot.container 11 iron_sword 1
replaceitem block ~-4 ~1 ~3 slot.container 12 shears 1
replaceitem block ~-4 ~1 ~3 slot.container 13 torch 16
replaceitem block ~-4 ~1 ~3 slot.container 14 honeycomb 7
loot insert ~-4 ~1 ~3 loot "rsf/birch_forest"
loot insert ~-4 ~1 ~3 loot "chests/village/village_taiga_house"
summon pillager ~0 ~1 ~-1
summon bee ~-1 ~1 ~1
