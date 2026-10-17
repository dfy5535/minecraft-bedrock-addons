# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1813/4224 | 主题内编号: b021/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·U型合院天井秘宝房 (cherry_grove_chamber_courtyard_villa)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 2格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 calcite [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 calcite [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cherry_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 cherry_planks []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~5 ~5 calcite []
fill ~-5 ~1 ~-4 ~5 ~4 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~5 ~-6 ~7 ~5 ~6 cherry_slab []
fill ~-5 ~6 ~-4 ~5 ~7 ~4 cherry_planks []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 cherry_slab []
setblock ~0 ~9 ~0 amethyst_block []
setblock ~0 ~10 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 cherry_planks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 campfire []
setblock ~2 ~4 ~-8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~-2 ~0 ~-7 ~-2 ~5 ~-7 cherry_log []
fill ~2 ~0 ~-7 ~2 ~5 ~-7 cherry_log []
fill ~-3 ~5 ~-7 ~3 ~5 ~-7 cherry_slab []
fill ~-2 ~4 ~-7 ~2 ~4 ~-7 stripped_cherry_log []
setblock ~-3 ~6 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 7
replaceitem block ~5 ~1 ~3 slot.container 1 phantom_membrane 8
replaceitem block ~5 ~1 ~3 slot.container 2 feather 15
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 8
replaceitem block ~5 ~1 ~3 slot.container 4 bone 9
replaceitem block ~5 ~1 ~3 slot.container 5 string 10
replaceitem block ~5 ~1 ~3 slot.container 9 lantern 4
replaceitem block ~5 ~1 ~3 slot.container 10 cherry_log 17
replaceitem block ~5 ~1 ~3 slot.container 11 cherry_sapling 6
replaceitem block ~5 ~1 ~3 slot.container 12 honey_bottle 7
replaceitem block ~5 ~1 ~3 slot.container 13 honeycomb 10
replaceitem block ~5 ~1 ~3 slot.container 14 golden_apple 7
loot insert ~5 ~1 ~3 loot "rsf/cherry_grove"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 feather 10
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 11
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 3 string 13
replaceitem block ~-5 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 5 arrow 23
replaceitem block ~-5 ~1 ~4 slot.container 9 lantern 9
replaceitem block ~-5 ~1 ~4 slot.container 10 cherry_log 22
replaceitem block ~-5 ~1 ~4 slot.container 11 cherry_sapling 4
replaceitem block ~-5 ~1 ~4 slot.container 12 honey_bottle 5
replaceitem block ~-5 ~1 ~4 slot.container 13 honeycomb 8
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 5
loot insert ~-5 ~1 ~4 loot "rsf/cherry_grove"
loot insert ~-5 ~1 ~4 loot "chests/village/village_plains_house"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
