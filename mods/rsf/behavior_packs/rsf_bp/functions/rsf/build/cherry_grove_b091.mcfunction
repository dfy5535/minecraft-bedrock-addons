# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1883/4224 | 主题内编号: b091/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·跨水拱桥水神小祠 (cherry_grove_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x9 | 地上高度 6格 | 地下深度 3格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air [] replace log2
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 cherry_planks [] replace air
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 cherry_planks [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 cherry_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 calcite []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 quartz_block []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-3 ~-2 ~5 ~-1 ~2 stone_bricks []
fill ~-4 ~-4 ~-1 ~4 ~-1 ~1 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-1 ~0 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-2 ~1 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-2 ~1 slot.container 0 ender_pearl 4
replaceitem block ~-4 ~-2 ~1 slot.container 1 phantom_membrane 5
replaceitem block ~-4 ~-2 ~1 slot.container 2 feather 12
replaceitem block ~-4 ~-2 ~1 slot.container 3 rotten_flesh 13
replaceitem block ~-4 ~-2 ~1 slot.container 4 bone 14
replaceitem block ~-4 ~-2 ~1 slot.container 5 string 15
replaceitem block ~-4 ~-2 ~1 slot.container 9 iron_ingot 7
replaceitem block ~-4 ~-2 ~1 slot.container 10 emerald 6
replaceitem block ~-4 ~-2 ~1 slot.container 11 amethyst_shard 9
replaceitem block ~-4 ~-2 ~1 slot.container 12 bow 1
replaceitem block ~-4 ~-2 ~1 slot.container 13 lantern 9
replaceitem block ~-4 ~-2 ~1 slot.container 14 cherry_log 22
loot insert ~-4 ~-2 ~1 loot "rsf/cherry_grove"
loot insert ~-4 ~-2 ~1 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-3 ~6 ~6 ~3 cherry_planks []
fill ~-5 ~1 ~-2 ~5 ~5 ~2 air []
fill ~-1 ~1 ~-3 ~1 ~3 ~3 air []
fill ~-1 ~3 ~-3 ~1 ~3 ~-3 iron_bars []
fill ~-1 ~3 ~3 ~1 ~3 ~3 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 cherry_slab []
fill ~-5 ~7 ~-2 ~5 ~8 ~2 stone_bricks []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 stone_brick_slab []
setblock ~0 ~10 ~0 chiseled_stone_bricks []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 stone_bricks []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 lantern []
setblock ~2 ~4 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 7x5x3) ---
fill ~-2 ~0 ~-6 ~-2 ~5 ~-6 cherry_log []
fill ~2 ~0 ~-6 ~2 ~5 ~-6 cherry_log []
fill ~-3 ~5 ~-6 ~3 ~5 ~-6 cherry_slab []
fill ~-2 ~4 ~-6 ~2 ~4 ~-6 stripped_cherry_log []
setblock ~1 ~6 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 gunpowder 9
replaceitem block ~5 ~1 ~1 slot.container 1 arrow 20
replaceitem block ~5 ~1 ~1 slot.container 2 ender_pearl 7
replaceitem block ~5 ~1 ~1 slot.container 3 phantom_membrane 8
replaceitem block ~5 ~1 ~1 slot.container 4 feather 15
replaceitem block ~5 ~1 ~1 slot.container 5 rotten_flesh 8
replaceitem block ~5 ~1 ~1 slot.container 9 lantern 4
replaceitem block ~5 ~1 ~1 slot.container 10 cherry_log 17
replaceitem block ~5 ~1 ~1 slot.container 11 cherry_sapling 6
replaceitem block ~5 ~1 ~1 slot.container 12 honey_bottle 7
replaceitem block ~5 ~1 ~1 slot.container 13 honeycomb 10
replaceitem block ~5 ~1 ~1 slot.container 14 golden_apple 7
loot insert ~5 ~1 ~1 loot "rsf/cherry_grove"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 ender_pearl 2
replaceitem block ~-5 ~1 ~2 slot.container 1 phantom_membrane 3
replaceitem block ~-5 ~1 ~2 slot.container 2 feather 10
replaceitem block ~-5 ~1 ~2 slot.container 3 rotten_flesh 11
replaceitem block ~-5 ~1 ~2 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~2 slot.container 5 string 13
replaceitem block ~-5 ~1 ~2 slot.container 9 lantern 9
replaceitem block ~-5 ~1 ~2 slot.container 10 cherry_log 22
replaceitem block ~-5 ~1 ~2 slot.container 11 cherry_sapling 4
replaceitem block ~-5 ~1 ~2 slot.container 12 honey_bottle 5
replaceitem block ~-5 ~1 ~2 slot.container 13 honeycomb 8
replaceitem block ~-5 ~1 ~2 slot.container 14 golden_apple 5
loot insert ~-5 ~1 ~2 loot "rsf/cherry_grove"
loot insert ~-5 ~1 ~2 loot "chests/village/village_plains_house"
summon allay ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-2 ~0
