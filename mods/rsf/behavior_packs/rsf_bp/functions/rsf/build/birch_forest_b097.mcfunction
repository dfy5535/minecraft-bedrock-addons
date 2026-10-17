# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0353/4224 | 主题内编号: b097/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·八角射击孔防御棱堡 (birch_forest_bunker_octagonal_bastion)
# 建筑构造: 主体[octagonal_keep] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 calcite [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 calcite [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 mossy_cobblestone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 spider_eye 6
replaceitem block ~4 ~-2 ~3 slot.container 1 feather 11
replaceitem block ~4 ~-2 ~3 slot.container 2 phantom_membrane 6
replaceitem block ~4 ~-2 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~4 ~-2 ~3 slot.container 4 bone 14
replaceitem block ~4 ~-2 ~3 slot.container 5 string 15
replaceitem block ~4 ~-2 ~3 slot.container 9 cooked_chicken 14
replaceitem block ~4 ~-2 ~3 slot.container 10 iron_ingot 5
replaceitem block ~4 ~-2 ~3 slot.container 11 coal 11
replaceitem block ~4 ~-2 ~3 slot.container 12 golden_carrot 6
replaceitem block ~4 ~-2 ~3 slot.container 13 iron_sword 1
replaceitem block ~4 ~-2 ~3 slot.container 14 shears 1
loot insert ~4 ~-2 ~3 loot "rsf/birch_forest"
loot insert ~4 ~-2 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 calcite []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 air []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 air []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 air []
fill ~6 ~1 ~5 ~6 ~7 ~5 air []
fill ~-5 ~1 ~-4 ~-5 ~6 ~-4 birch_log []
fill ~5 ~1 ~-4 ~5 ~6 ~-4 birch_log []
fill ~-5 ~1 ~4 ~-5 ~6 ~4 birch_log []
fill ~5 ~1 ~4 ~5 ~6 ~4 birch_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 birch_planks []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 birch_fence []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 air []
setblock ~-6 ~7 ~-5 birch_log []
setblock ~-6 ~8 ~-5 lantern []
setblock ~-6 ~7 ~5 birch_log []
setblock ~-6 ~8 ~5 lantern []
setblock ~6 ~7 ~-5 birch_log []
setblock ~6 ~8 ~-5 lantern []
setblock ~6 ~7 ~5 birch_log []
setblock ~6 ~8 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 birch_log []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 birch_log []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 birch_log []
fill ~7 ~0 ~2 ~7 ~5 ~2 birch_log []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 stone_bricks []
fill ~8 ~1 ~-2 ~8 ~3 ~-2 birch_log []
fill ~8 ~1 ~2 ~8 ~3 ~2 birch_log []
fill ~7 ~4 ~-2 ~8 ~4 ~2 stone_brick_slab []
setblock ~7 ~1 ~0 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 bone 9
replaceitem block ~5 ~1 ~3 slot.container 1 string 10
replaceitem block ~5 ~1 ~3 slot.container 2 gunpowder 9
replaceitem block ~5 ~1 ~3 slot.container 3 arrow 20
replaceitem block ~5 ~1 ~3 slot.container 4 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 5 feather 14
replaceitem block ~5 ~1 ~3 slot.container 9 torch 19
replaceitem block ~5 ~1 ~3 slot.container 10 honeycomb 10
replaceitem block ~5 ~1 ~3 slot.container 11 honey_bottle 8
replaceitem block ~5 ~1 ~3 slot.container 12 birch_log 22
replaceitem block ~5 ~1 ~3 slot.container 13 cooked_chicken 8
replaceitem block ~5 ~1 ~3 slot.container 14 iron_ingot 6
loot insert ~5 ~1 ~3 loot "rsf/birch_forest"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 1 arrow 23
replaceitem block ~-5 ~1 ~4 slot.container 2 spider_eye 4
replaceitem block ~-5 ~1 ~4 slot.container 3 feather 9
replaceitem block ~-5 ~1 ~4 slot.container 4 phantom_membrane 4
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 13
replaceitem block ~-5 ~1 ~4 slot.container 9 torch 17
replaceitem block ~-5 ~1 ~4 slot.container 10 honeycomb 8
replaceitem block ~-5 ~1 ~4 slot.container 11 honey_bottle 6
replaceitem block ~-5 ~1 ~4 slot.container 12 birch_log 20
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_chicken 13
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 11
loot insert ~-5 ~1 ~4 loot "rsf/birch_forest"
loot insert ~-5 ~1 ~4 loot "chests/village/village_taiga_house"
summon witch ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-2 ~0
