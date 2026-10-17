# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1835/4224 | 主题内编号: b043/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·十字四门试炼擂台 (cherry_grove_arena_cross_gauntlet)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x15 | 地上高度 5格 | 地下深度 2格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace log2
fill ~-8 ~-3 ~-7 ~8 ~-1 ~7 cherry_planks [] replace air
fill ~-8 ~-3 ~-7 ~8 ~-1 ~7 cherry_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 cherry_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 calcite []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-2 ~-6 ~7 ~-1 ~6 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~5 ~6 cherry_planks []
fill ~-7 ~1 ~-2 ~7 ~5 ~2 cherry_planks []
fill ~-1 ~1 ~-5 ~1 ~4 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~4 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 cherry_fence []
setblock ~7 ~2 ~0 cherry_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~5 ~-6 ~7 ~5 ~6 stone_bricks []
fill ~-7 ~6 ~-6 ~7 ~6 ~6 cherry_fence []
fill ~-6 ~6 ~-5 ~6 ~6 ~5 air []
setblock ~-7 ~6 ~-6 cherry_log []
setblock ~-7 ~7 ~-6 lantern []
setblock ~-7 ~6 ~6 cherry_log []
setblock ~-7 ~7 ~6 lantern []
setblock ~7 ~6 ~-6 cherry_log []
setblock ~7 ~7 ~-6 lantern []
setblock ~7 ~6 ~6 cherry_log []
setblock ~7 ~7 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 stone_bricks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 lantern []
setblock ~2 ~4 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~-2 ~0 ~-9 ~-2 ~7 ~-9 cherry_log []
fill ~2 ~0 ~-9 ~2 ~7 ~-9 cherry_log []
fill ~-3 ~7 ~-9 ~3 ~7 ~-9 cherry_slab []
fill ~-2 ~6 ~-9 ~2 ~6 ~-9 stripped_cherry_log []
setblock ~1 ~8 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 gunpowder 9
replaceitem block ~6 ~1 ~4 slot.container 1 arrow 20
replaceitem block ~6 ~1 ~4 slot.container 2 ender_pearl 7
replaceitem block ~6 ~1 ~4 slot.container 3 phantom_membrane 8
replaceitem block ~6 ~1 ~4 slot.container 4 feather 15
replaceitem block ~6 ~1 ~4 slot.container 5 rotten_flesh 8
replaceitem block ~6 ~1 ~4 slot.container 9 iron_ingot 7
replaceitem block ~6 ~1 ~4 slot.container 10 emerald 6
replaceitem block ~6 ~1 ~4 slot.container 11 amethyst_shard 9
replaceitem block ~6 ~1 ~4 slot.container 12 bow 1
replaceitem block ~6 ~1 ~4 slot.container 13 lantern 9
replaceitem block ~6 ~1 ~4 slot.container 14 cherry_log 22
loot insert ~6 ~1 ~4 loot "rsf/cherry_grove"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ender_pearl 2
replaceitem block ~-6 ~1 ~5 slot.container 1 phantom_membrane 3
replaceitem block ~-6 ~1 ~5 slot.container 2 feather 10
replaceitem block ~-6 ~1 ~5 slot.container 3 rotten_flesh 11
replaceitem block ~-6 ~1 ~5 slot.container 4 bone 12
replaceitem block ~-6 ~1 ~5 slot.container 5 string 13
replaceitem block ~-6 ~1 ~5 slot.container 9 iron_ingot 12
replaceitem block ~-6 ~1 ~5 slot.container 10 emerald 4
replaceitem block ~-6 ~1 ~5 slot.container 11 amethyst_shard 7
replaceitem block ~-6 ~1 ~5 slot.container 12 bow 1
replaceitem block ~-6 ~1 ~5 slot.container 13 lantern 7
replaceitem block ~-6 ~1 ~5 slot.container 14 cherry_log 20
loot insert ~-6 ~1 ~5 loot "rsf/cherry_grove"
loot insert ~-6 ~1 ~5 loot "chests/village/village_plains_house"
summon allay ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~2 ~0
