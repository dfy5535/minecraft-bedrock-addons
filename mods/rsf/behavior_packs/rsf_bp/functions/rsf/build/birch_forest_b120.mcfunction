# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0376/4224 | 主题内编号: b120/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·引水渠跨桥水培温室 (birch_forest_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~9 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~9 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~9 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~9 ~6 air [] replace log2
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 stone_bricks [] replace air
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 stone_bricks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 stone_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 mossy_stone_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-4 ~-3 ~5 ~-1 ~3 birch_planks []
fill ~-4 ~-5 ~-2 ~4 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-3 ~2 slot.container 0 string 15
replaceitem block ~-4 ~-3 ~2 slot.container 1 gunpowder 6
replaceitem block ~-4 ~-3 ~2 slot.container 2 arrow 17
replaceitem block ~-4 ~-3 ~2 slot.container 3 spider_eye 6
replaceitem block ~-4 ~-3 ~2 slot.container 4 feather 11
replaceitem block ~-4 ~-3 ~2 slot.container 5 phantom_membrane 6
replaceitem block ~-4 ~-3 ~2 slot.container 9 iron_ingot 11
replaceitem block ~-4 ~-3 ~2 slot.container 10 coal 10
replaceitem block ~-4 ~-3 ~2 slot.container 11 golden_carrot 5
replaceitem block ~-4 ~-3 ~2 slot.container 12 iron_sword 1
replaceitem block ~-4 ~-3 ~2 slot.container 13 shears 1
replaceitem block ~-4 ~-3 ~2 slot.container 14 torch 20
loot insert ~-4 ~-3 ~2 loot "rsf/birch_forest"
loot insert ~-4 ~-3 ~2 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~5 ~4 stone_bricks []
fill ~-5 ~1 ~-3 ~5 ~4 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~5 ~-4 ~6 ~5 ~4 birch_planks []
fill ~-5 ~6 ~-3 ~5 ~7 ~3 glass []
fill ~-4 ~6 ~-2 ~4 ~6 ~2 air []
setblock ~0 ~7 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 birch_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 torch []
setblock ~2 ~4 ~-7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x5x5) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 stone_bricks []
fill ~8 ~1 ~-2 ~8 ~6 ~-2 stripped_birch_log []
fill ~8 ~1 ~2 ~8 ~6 ~2 stripped_birch_log []
fill ~7 ~7 ~-2 ~8 ~7 ~2 stone_brick_slab []
setblock ~7 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~3 smithing_table []
setblock ~-4 ~1 ~3 anvil []
setblock ~4 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 rotten_flesh 10
replaceitem block ~-5 ~1 ~2 slot.container 1 bone 9
replaceitem block ~-5 ~1 ~2 slot.container 2 string 10
replaceitem block ~-5 ~1 ~2 slot.container 3 gunpowder 9
replaceitem block ~-5 ~1 ~2 slot.container 4 arrow 20
replaceitem block ~-5 ~1 ~2 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~2 slot.container 9 shears 1
replaceitem block ~-5 ~1 ~2 slot.container 10 torch 22
replaceitem block ~-5 ~1 ~2 slot.container 11 honeycomb 6
replaceitem block ~-5 ~1 ~2 slot.container 12 honey_bottle 4
replaceitem block ~-5 ~1 ~2 slot.container 13 birch_log 18
replaceitem block ~-5 ~1 ~2 slot.container 14 cooked_chicken 11
loot insert ~-5 ~1 ~2 loot "rsf/birch_forest"
summon bee ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
