# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0276/4224 | 主题内编号: b020/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·重甲防爆金库房间 (birch_forest_chamber_fortified_strongbox)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 calcite []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 rotten_flesh 15
replaceitem block ~3 ~-3 ~2 slot.container 1 bone 14
replaceitem block ~3 ~-3 ~2 slot.container 2 string 15
replaceitem block ~3 ~-3 ~2 slot.container 3 gunpowder 6
replaceitem block ~3 ~-3 ~2 slot.container 4 arrow 17
replaceitem block ~3 ~-3 ~2 slot.container 5 spider_eye 6
replaceitem block ~3 ~-3 ~2 slot.container 9 birch_log 22
replaceitem block ~3 ~-3 ~2 slot.container 10 cooked_chicken 8
replaceitem block ~3 ~-3 ~2 slot.container 11 iron_ingot 6
replaceitem block ~3 ~-3 ~2 slot.container 12 coal 12
replaceitem block ~3 ~-3 ~2 slot.container 13 golden_carrot 7
replaceitem block ~3 ~-3 ~2 slot.container 14 iron_sword 1
loot insert ~3 ~-3 ~2 loot "rsf/birch_forest"
loot insert ~3 ~-3 ~2 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-4 ~5 ~5 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~4 ~3 air []
fill ~-5 ~1 ~-4 ~-4 ~7 ~-3 birch_planks []
setblock ~-5 ~8 ~-4 torch []
fill ~-5 ~1 ~3 ~-4 ~7 ~4 birch_planks []
setblock ~-5 ~8 ~3 torch []
fill ~4 ~1 ~-4 ~5 ~7 ~-3 birch_planks []
setblock ~4 ~8 ~-4 torch []
fill ~4 ~1 ~3 ~5 ~7 ~4 birch_planks []
setblock ~4 ~8 ~3 torch []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~5 ~-4 ~5 ~5 ~4 birch_planks []
fill ~-5 ~6 ~-4 ~5 ~6 ~4 cobblestone_wall []
fill ~-4 ~6 ~-3 ~4 ~6 ~3 air []
setblock ~-5 ~6 ~-4 stripped_birch_log []
setblock ~-5 ~7 ~-4 torch []
setblock ~-5 ~6 ~4 stripped_birch_log []
setblock ~-5 ~7 ~4 torch []
setblock ~5 ~6 ~-4 stripped_birch_log []
setblock ~5 ~7 ~-4 torch []
setblock ~5 ~6 ~4 stripped_birch_log []
setblock ~5 ~7 ~4 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~4 ~-2 stripped_birch_log []
fill ~-6 ~0 ~2 ~-6 ~4 ~2 stripped_birch_log []
fill ~6 ~0 ~-2 ~6 ~4 ~-2 stripped_birch_log []
fill ~6 ~0 ~2 ~6 ~4 ~2 stripped_birch_log []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~6 ~0 ~-2 ~7 ~0 ~2 stone_bricks []
fill ~7 ~1 ~-2 ~7 ~6 ~-2 stripped_birch_log []
fill ~7 ~1 ~2 ~7 ~6 ~2 stripped_birch_log []
fill ~6 ~7 ~-2 ~7 ~7 ~2 stone_brick_slab []
setblock ~6 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 arrow 20
replaceitem block ~-4 ~1 ~2 slot.container 1 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 2 feather 14
replaceitem block ~-4 ~1 ~2 slot.container 3 phantom_membrane 9
replaceitem block ~-4 ~1 ~2 slot.container 4 rotten_flesh 10
replaceitem block ~-4 ~1 ~2 slot.container 5 bone 9
replaceitem block ~-4 ~1 ~2 slot.container 9 shears 1
replaceitem block ~-4 ~1 ~2 slot.container 10 torch 20
replaceitem block ~-4 ~1 ~2 slot.container 11 honeycomb 11
replaceitem block ~-4 ~1 ~2 slot.container 12 honey_bottle 9
replaceitem block ~-4 ~1 ~2 slot.container 13 birch_log 16
replaceitem block ~-4 ~1 ~2 slot.container 14 cooked_chicken 9
loot insert ~-4 ~1 ~2 loot "rsf/birch_forest"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
