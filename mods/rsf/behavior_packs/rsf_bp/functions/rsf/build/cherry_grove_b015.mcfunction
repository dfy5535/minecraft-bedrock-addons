# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1807/4224 | 主题内编号: b015/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·竖井阶梯深渊地牢 (cherry_grove_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 5格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log2
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 cherry_planks [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 cherry_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cherry_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 calcite []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 quartz_block []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 cherry_planks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~2 lantern []
setblock ~3 ~-6 ~-2 lantern []
setblock ~3 ~-4 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~2 slot.container 0 bone 14
replaceitem block ~3 ~-4 ~2 slot.container 1 string 15
replaceitem block ~3 ~-4 ~2 slot.container 2 gunpowder 6
replaceitem block ~3 ~-4 ~2 slot.container 3 arrow 17
replaceitem block ~3 ~-4 ~2 slot.container 4 ender_pearl 4
replaceitem block ~3 ~-4 ~2 slot.container 5 phantom_membrane 5
replaceitem block ~3 ~-4 ~2 slot.container 9 honeycomb 9
replaceitem block ~3 ~-4 ~2 slot.container 10 golden_apple 6
replaceitem block ~3 ~-4 ~2 slot.container 11 iron_ingot 11
replaceitem block ~3 ~-4 ~2 slot.container 12 emerald 10
replaceitem block ~3 ~-4 ~2 slot.container 13 amethyst_shard 6
replaceitem block ~3 ~-4 ~2 slot.container 14 bow 1
loot insert ~3 ~-4 ~2 loot "rsf/cherry_grove"
loot insert ~3 ~-4 ~2 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 cherry_planks []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 stone_bricks []
fill ~-3 ~5 ~-2 ~3 ~6 ~2 stone_bricks []
fill ~-3 ~1 ~-2 ~3 ~5 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 cherry_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~7 ~-2 ~2 ~8 ~2 stone_bricks []
fill ~-1 ~9 ~-1 ~1 ~11 ~1 cherry_planks []
fill ~0 ~12 ~0 ~0 ~15 ~0 chiseled_stone_bricks []
setblock ~0 ~16 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 cherry_log []
setblock ~-7 ~4 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 cherry_log []
setblock ~-7 ~4 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 cherry_log []
setblock ~7 ~4 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~3 ~6 cherry_log []
setblock ~7 ~4 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 6x5x2) ---
fill ~-2 ~0 ~-6 ~-2 ~4 ~-6 cherry_log []
fill ~2 ~0 ~-6 ~2 ~4 ~-6 cherry_log []
fill ~-3 ~4 ~-6 ~3 ~4 ~-6 cherry_slab []
fill ~-2 ~3 ~-6 ~2 ~3 ~-6 stripped_cherry_log []
setblock ~-2 ~5 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 feather 15
replaceitem block ~4 ~1 ~2 slot.container 1 rotten_flesh 8
replaceitem block ~4 ~1 ~2 slot.container 2 bone 9
replaceitem block ~4 ~1 ~2 slot.container 3 string 10
replaceitem block ~4 ~1 ~2 slot.container 4 gunpowder 9
replaceitem block ~4 ~1 ~2 slot.container 5 arrow 20
replaceitem block ~4 ~1 ~2 slot.container 9 cherry_sapling 5
replaceitem block ~4 ~1 ~2 slot.container 10 honey_bottle 6
replaceitem block ~4 ~1 ~2 slot.container 11 honeycomb 9
replaceitem block ~4 ~1 ~2 slot.container 12 golden_apple 6
replaceitem block ~4 ~1 ~2 slot.container 13 iron_ingot 11
replaceitem block ~4 ~1 ~2 slot.container 14 emerald 10
loot insert ~4 ~1 ~2 loot "rsf/cherry_grove"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~3 slot.container 1 string 13
replaceitem block ~-4 ~1 ~3 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~3 slot.container 3 arrow 23
replaceitem block ~-4 ~1 ~3 slot.container 4 ender_pearl 2
replaceitem block ~-4 ~1 ~3 slot.container 5 phantom_membrane 3
replaceitem block ~-4 ~1 ~3 slot.container 9 cherry_sapling 10
replaceitem block ~-4 ~1 ~3 slot.container 10 honey_bottle 4
replaceitem block ~-4 ~1 ~3 slot.container 11 honeycomb 7
replaceitem block ~-4 ~1 ~3 slot.container 12 golden_apple 4
replaceitem block ~-4 ~1 ~3 slot.container 13 iron_ingot 9
replaceitem block ~-4 ~1 ~3 slot.container 14 emerald 8
loot insert ~-4 ~1 ~3 loot "rsf/cherry_grove"
loot insert ~-4 ~1 ~3 loot "chests/village/village_plains_house"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
