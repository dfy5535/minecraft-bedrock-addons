# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1887/4224 | 主题内编号: b095/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·双子灯笼守卫神龛 (cherry_grove_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x9 | 地上高度 6格 | 地下深度 2格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air [] replace log2
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 cherry_planks [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 cherry_planks [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 cherry_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 calcite []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 quartz_block []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~7 ~3 cherry_planks []
fill ~2 ~1 ~-3 ~6 ~7 ~3 cherry_planks []
fill ~-5 ~1 ~-2 ~-3 ~6 ~2 air []
fill ~3 ~1 ~-2 ~5 ~6 ~2 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 stone_bricks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 cherry_slab []
fill ~-5 ~7 ~-2 ~5 ~8 ~2 stone_bricks []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 stone_brick_slab []
setblock ~0 ~10 ~0 chiseled_stone_bricks []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-5 ~-8 ~3 ~-5 cherry_log []
setblock ~-8 ~4 ~-5 lantern []
fill ~-8 ~0 ~5 ~-8 ~3 ~5 cherry_log []
setblock ~-8 ~4 ~5 lantern []
fill ~8 ~0 ~-5 ~8 ~3 ~-5 cherry_log []
setblock ~8 ~4 ~-5 lantern []
fill ~8 ~0 ~5 ~8 ~3 ~5 cherry_log []
setblock ~8 ~4 ~5 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-2 ~0 ~-7 ~-2 ~4 ~-7 cherry_log []
fill ~2 ~0 ~-7 ~2 ~4 ~-7 cherry_log []
fill ~-3 ~4 ~-7 ~3 ~4 ~-7 cherry_slab []
fill ~-2 ~3 ~-7 ~2 ~3 ~-7 stripped_cherry_log []
setblock ~-1 ~5 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~3 blast_furnace []
setblock ~-4 ~1 ~3 furnace []
setblock ~0 ~1 ~3 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 feather 15
replaceitem block ~5 ~1 ~1 slot.container 1 rotten_flesh 8
replaceitem block ~5 ~1 ~1 slot.container 2 bone 9
replaceitem block ~5 ~1 ~1 slot.container 3 string 10
replaceitem block ~5 ~1 ~1 slot.container 4 gunpowder 9
replaceitem block ~5 ~1 ~1 slot.container 5 arrow 20
replaceitem block ~5 ~1 ~1 slot.container 9 cherry_sapling 8
replaceitem block ~5 ~1 ~1 slot.container 10 honey_bottle 9
replaceitem block ~5 ~1 ~1 slot.container 11 honeycomb 12
replaceitem block ~5 ~1 ~1 slot.container 12 golden_apple 2
replaceitem block ~5 ~1 ~1 slot.container 13 iron_ingot 7
replaceitem block ~5 ~1 ~1 slot.container 14 emerald 6
loot insert ~5 ~1 ~1 loot "rsf/cherry_grove"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~2 slot.container 1 string 13
replaceitem block ~-5 ~1 ~2 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~2 slot.container 3 arrow 23
replaceitem block ~-5 ~1 ~2 slot.container 4 ender_pearl 2
replaceitem block ~-5 ~1 ~2 slot.container 5 phantom_membrane 3
replaceitem block ~-5 ~1 ~2 slot.container 9 cherry_sapling 6
replaceitem block ~-5 ~1 ~2 slot.container 10 honey_bottle 7
replaceitem block ~-5 ~1 ~2 slot.container 11 honeycomb 10
replaceitem block ~-5 ~1 ~2 slot.container 12 golden_apple 7
replaceitem block ~-5 ~1 ~2 slot.container 13 iron_ingot 12
replaceitem block ~-5 ~1 ~2 slot.container 14 emerald 4
loot insert ~-5 ~1 ~2 loot "rsf/cherry_grove"
loot insert ~-5 ~1 ~2 loot "chests/village/village_plains_house"
summon spider ~0 ~1 ~-1
summon bee ~-1 ~1 ~1
