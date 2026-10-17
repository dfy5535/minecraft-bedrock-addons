# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0333/4224 | 主题内编号: b077/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·双子鸟居图腾神道 (birch_forest_totem_twin_spirit_gate)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 2格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace log2
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 calcite [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 calcite [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 stone_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 stone_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-4 ~6 ~-1 ~4 birch_planks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~6 ~4 calcite []
fill ~-5 ~1 ~-3 ~5 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-5 ~7 ~6 ~5 stone_brick_slab []
fill ~-5 ~7 ~-3 ~5 ~8 ~3 mossy_cobblestone []
fill ~-6 ~9 ~-4 ~6 ~9 ~4 birch_slab []
setblock ~0 ~10 ~0 bookshelf []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 birch_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 stone_bricks []
fill ~8 ~1 ~-2 ~8 ~3 ~-2 birch_log []
fill ~8 ~1 ~2 ~8 ~3 ~2 birch_log []
fill ~7 ~4 ~-2 ~8 ~4 ~2 stone_brick_slab []
setblock ~7 ~1 ~0 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~2 composter []
setblock ~2 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~2 slot.container 1 feather 14
replaceitem block ~5 ~1 ~2 slot.container 2 phantom_membrane 9
replaceitem block ~5 ~1 ~2 slot.container 3 rotten_flesh 10
replaceitem block ~5 ~1 ~2 slot.container 4 bone 9
replaceitem block ~5 ~1 ~2 slot.container 5 string 10
replaceitem block ~5 ~1 ~2 slot.container 9 torch 20
replaceitem block ~5 ~1 ~2 slot.container 10 honeycomb 11
replaceitem block ~5 ~1 ~2 slot.container 11 honey_bottle 9
replaceitem block ~5 ~1 ~2 slot.container 12 birch_log 16
replaceitem block ~5 ~1 ~2 slot.container 13 cooked_chicken 9
replaceitem block ~5 ~1 ~2 slot.container 14 iron_ingot 7
loot insert ~5 ~1 ~2 loot "rsf/birch_forest"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 phantom_membrane 4
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 13
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 3 string 13
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 5 arrow 23
replaceitem block ~-5 ~1 ~3 slot.container 9 torch 18
replaceitem block ~-5 ~1 ~3 slot.container 10 honeycomb 9
replaceitem block ~-5 ~1 ~3 slot.container 11 honey_bottle 7
replaceitem block ~-5 ~1 ~3 slot.container 12 birch_log 21
replaceitem block ~-5 ~1 ~3 slot.container 13 cooked_chicken 14
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_ingot 5
loot insert ~-5 ~1 ~3 loot "rsf/birch_forest"
loot insert ~-5 ~1 ~3 loot "chests/village/village_taiga_house"
summon pillager ~0 ~1 ~-1
summon bee ~-1 ~1 ~1
