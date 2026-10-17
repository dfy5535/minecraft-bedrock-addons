# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0355/4224 | 主题内编号: b099/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·铁闸门瓮城防御堡 (birch_forest_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace log2
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 birch_planks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 birch_planks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 birch_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 cobblestone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-3 ~5 ~-1 ~3 stone_bricks []
fill ~-4 ~-4 ~-2 ~4 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~2 slot.container 0 phantom_membrane 6
replaceitem block ~4 ~-2 ~2 slot.container 1 rotten_flesh 15
replaceitem block ~4 ~-2 ~2 slot.container 2 bone 14
replaceitem block ~4 ~-2 ~2 slot.container 3 string 15
replaceitem block ~4 ~-2 ~2 slot.container 4 gunpowder 6
replaceitem block ~4 ~-2 ~2 slot.container 5 arrow 17
replaceitem block ~4 ~-2 ~2 slot.container 9 torch 17
replaceitem block ~4 ~-2 ~2 slot.container 10 honeycomb 8
replaceitem block ~4 ~-2 ~2 slot.container 11 honey_bottle 6
replaceitem block ~4 ~-2 ~2 slot.container 12 birch_log 20
replaceitem block ~4 ~-2 ~2 slot.container 13 cooked_chicken 13
replaceitem block ~4 ~-2 ~2 slot.container 14 iron_ingot 11
loot insert ~4 ~-2 ~2 loot "rsf/birch_forest"
loot insert ~4 ~-2 ~2 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~6 ~4 birch_planks []
fill ~-5 ~1 ~-3 ~5 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-4 ~6 ~6 ~4 stone_bricks []
fill ~-6 ~7 ~-4 ~6 ~7 ~4 birch_fence []
fill ~-5 ~7 ~-3 ~5 ~7 ~3 air []
setblock ~-6 ~7 ~-4 birch_log []
setblock ~-6 ~8 ~-4 lantern []
setblock ~-6 ~7 ~4 birch_log []
setblock ~-6 ~8 ~4 lantern []
setblock ~6 ~7 ~-4 birch_log []
setblock ~6 ~8 ~-4 lantern []
setblock ~6 ~7 ~4 birch_log []
setblock ~6 ~8 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x5x4) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 mossy_stone_bricks []
fill ~8 ~1 ~-2 ~8 ~5 ~-2 birch_log []
fill ~8 ~1 ~2 ~8 ~5 ~2 birch_log []
fill ~7 ~6 ~-2 ~8 ~6 ~2 birch_slab []
setblock ~7 ~1 ~0 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 gunpowder 9
replaceitem block ~5 ~1 ~2 slot.container 1 arrow 20
replaceitem block ~5 ~1 ~2 slot.container 2 spider_eye 9
replaceitem block ~5 ~1 ~2 slot.container 3 feather 14
replaceitem block ~5 ~1 ~2 slot.container 4 phantom_membrane 9
replaceitem block ~5 ~1 ~2 slot.container 5 rotten_flesh 10
replaceitem block ~5 ~1 ~2 slot.container 9 coal 15
replaceitem block ~5 ~1 ~2 slot.container 10 golden_carrot 10
replaceitem block ~5 ~1 ~2 slot.container 11 iron_sword 1
replaceitem block ~5 ~1 ~2 slot.container 12 shears 1
replaceitem block ~5 ~1 ~2 slot.container 13 torch 18
replaceitem block ~5 ~1 ~2 slot.container 14 honeycomb 9
loot insert ~5 ~1 ~2 loot "rsf/birch_forest"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 spider_eye 4
replaceitem block ~-5 ~1 ~3 slot.container 1 feather 9
replaceitem block ~-5 ~1 ~3 slot.container 2 phantom_membrane 4
replaceitem block ~-5 ~1 ~3 slot.container 3 rotten_flesh 13
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 5 string 13
replaceitem block ~-5 ~1 ~3 slot.container 9 coal 13
replaceitem block ~-5 ~1 ~3 slot.container 10 golden_carrot 8
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_sword 1
replaceitem block ~-5 ~1 ~3 slot.container 12 shears 1
replaceitem block ~-5 ~1 ~3 slot.container 13 torch 16
replaceitem block ~-5 ~1 ~3 slot.container 14 honeycomb 7
loot insert ~-5 ~1 ~3 loot "rsf/birch_forest"
loot insert ~-5 ~1 ~3 loot "chests/village/village_taiga_house"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
