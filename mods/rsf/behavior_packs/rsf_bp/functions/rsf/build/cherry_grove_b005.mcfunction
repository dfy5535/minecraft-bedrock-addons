# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1797/4224 | 主题内编号: b005/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·下沉圣泉秘宝祭坛 (cherry_grove_altar_sunken_well)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x11 | 地上高度 4格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 calcite [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 calcite [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cherry_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 cherry_planks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 feather 12
replaceitem block ~-3 ~-3 ~2 slot.container 1 rotten_flesh 13
replaceitem block ~-3 ~-3 ~2 slot.container 2 bone 14
replaceitem block ~-3 ~-3 ~2 slot.container 3 string 15
replaceitem block ~-3 ~-3 ~2 slot.container 4 gunpowder 6
replaceitem block ~-3 ~-3 ~2 slot.container 5 arrow 17
replaceitem block ~-3 ~-3 ~2 slot.container 9 amethyst_shard 12
replaceitem block ~-3 ~-3 ~2 slot.container 10 bow 1
replaceitem block ~-3 ~-3 ~2 slot.container 11 lantern 5
replaceitem block ~-3 ~-3 ~2 slot.container 12 cherry_log 18
replaceitem block ~-3 ~-3 ~2 slot.container 13 cherry_sapling 7
replaceitem block ~-3 ~-3 ~2 slot.container 14 honey_bottle 8
loot insert ~-3 ~-3 ~2 loot "rsf/cherry_grove"
loot insert ~-3 ~-3 ~2 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 calcite []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 cherry_planks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 cherry_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~4 ~-4 ~-5 ~6 ~-4 cherry_log []
setblock ~-5 ~7 ~-4 campfire []
fill ~-5 ~4 ~4 ~-5 ~6 ~4 cherry_log []
setblock ~-5 ~7 ~4 campfire []
fill ~5 ~4 ~-4 ~5 ~6 ~-4 cherry_log []
setblock ~5 ~7 ~-4 campfire []
fill ~5 ~4 ~4 ~5 ~6 ~4 cherry_log []
setblock ~5 ~7 ~4 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 cherry_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~-2 ~0 ~-8 ~-2 ~4 ~-8 cherry_log []
fill ~2 ~0 ~-8 ~2 ~4 ~-8 cherry_log []
fill ~-3 ~4 ~-8 ~3 ~4 ~-8 cherry_slab []
fill ~-2 ~3 ~-8 ~2 ~3 ~-8 stripped_cherry_log []
setblock ~-2 ~5 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 ender_pearl 7
replaceitem block ~4 ~1 ~2 slot.container 1 phantom_membrane 8
replaceitem block ~4 ~1 ~2 slot.container 2 feather 15
replaceitem block ~4 ~1 ~2 slot.container 3 rotten_flesh 8
replaceitem block ~4 ~1 ~2 slot.container 4 bone 9
replaceitem block ~4 ~1 ~2 slot.container 5 string 10
replaceitem block ~4 ~1 ~2 slot.container 9 cherry_sapling 9
replaceitem block ~4 ~1 ~2 slot.container 10 honey_bottle 10
replaceitem block ~4 ~1 ~2 slot.container 11 honeycomb 6
replaceitem block ~4 ~1 ~2 slot.container 12 golden_apple 3
replaceitem block ~4 ~1 ~2 slot.container 13 iron_ingot 8
replaceitem block ~4 ~1 ~2 slot.container 14 emerald 7
loot insert ~4 ~1 ~2 loot "rsf/cherry_grove"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 feather 10
replaceitem block ~-4 ~1 ~3 slot.container 1 rotten_flesh 11
replaceitem block ~-4 ~1 ~3 slot.container 2 bone 12
replaceitem block ~-4 ~1 ~3 slot.container 3 string 13
replaceitem block ~-4 ~1 ~3 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~3 slot.container 5 arrow 23
replaceitem block ~-4 ~1 ~3 slot.container 9 cherry_sapling 7
replaceitem block ~-4 ~1 ~3 slot.container 10 honey_bottle 8
replaceitem block ~-4 ~1 ~3 slot.container 11 honeycomb 11
replaceitem block ~-4 ~1 ~3 slot.container 12 golden_apple 8
replaceitem block ~-4 ~1 ~3 slot.container 13 iron_ingot 6
replaceitem block ~-4 ~1 ~3 slot.container 14 emerald 5
loot insert ~-4 ~1 ~3 loot "rsf/cherry_grove"
loot insert ~-4 ~1 ~3 loot "chests/village/village_plains_house"
summon spider ~0 ~1 ~-1
summon bee ~-1 ~1 ~1
