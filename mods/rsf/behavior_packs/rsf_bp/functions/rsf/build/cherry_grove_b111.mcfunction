# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1903/4224 | 主题内编号: b111/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·地下禁忌书库与炼药室 (cherry_grove_arcane_sunken_archive)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cherry_planks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cherry_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cherry_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 calcite []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 quartz_block []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cherry_planks []
fill ~-5 ~-5 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-5 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-5 ~0 lantern []
setblock ~4 ~-5 ~0 lantern []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 ender_pearl 4
replaceitem block ~0 ~-3 ~3 slot.container 1 phantom_membrane 5
replaceitem block ~0 ~-3 ~3 slot.container 2 feather 12
replaceitem block ~0 ~-3 ~3 slot.container 3 rotten_flesh 13
replaceitem block ~0 ~-3 ~3 slot.container 4 bone 14
replaceitem block ~0 ~-3 ~3 slot.container 5 string 15
replaceitem block ~0 ~-3 ~3 slot.container 9 cherry_sapling 9
replaceitem block ~0 ~-3 ~3 slot.container 10 honey_bottle 10
replaceitem block ~0 ~-3 ~3 slot.container 11 honeycomb 6
replaceitem block ~0 ~-3 ~3 slot.container 12 golden_apple 3
replaceitem block ~0 ~-3 ~3 slot.container 13 iron_ingot 8
replaceitem block ~0 ~-3 ~3 slot.container 14 emerald 7
loot insert ~0 ~-3 ~3 loot "rsf/cherry_grove"
loot insert ~0 ~-3 ~3 loot "chests/village/village_plains_house"
setblock ~0 ~-3 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-3 slot.container 0 ender_pearl 2
replaceitem block ~0 ~-3 ~-3 slot.container 1 phantom_membrane 3
replaceitem block ~0 ~-3 ~-3 slot.container 2 feather 10
replaceitem block ~0 ~-3 ~-3 slot.container 3 rotten_flesh 11
replaceitem block ~0 ~-3 ~-3 slot.container 4 bone 12
replaceitem block ~0 ~-3 ~-3 slot.container 5 string 13
replaceitem block ~0 ~-3 ~-3 slot.container 9 cherry_sapling 8
replaceitem block ~0 ~-3 ~-3 slot.container 10 honey_bottle 9
replaceitem block ~0 ~-3 ~-3 slot.container 11 honeycomb 12
replaceitem block ~0 ~-3 ~-3 slot.container 12 golden_apple 2
replaceitem block ~0 ~-3 ~-3 slot.container 13 iron_ingot 7
replaceitem block ~0 ~-3 ~-3 slot.container 14 emerald 6
loot insert ~0 ~-3 ~-3 loot "rsf/cherry_grove"
loot insert ~0 ~-3 ~-3 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 cherry_planks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 stone_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 stone_bricks []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 stone_bricks []
fill ~-1 ~8 ~-1 ~1 ~8 ~1 chiseled_stone_bricks []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cherry_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~-2 ~0 ~-7 ~-2 ~5 ~-7 cherry_log []
fill ~2 ~0 ~-7 ~2 ~5 ~-7 cherry_log []
fill ~-3 ~5 ~-7 ~3 ~5 ~-7 cherry_slab []
fill ~-2 ~4 ~-7 ~2 ~4 ~-7 stripped_cherry_log []
setblock ~-3 ~6 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 feather 15
replaceitem block ~5 ~1 ~3 slot.container 1 rotten_flesh 8
replaceitem block ~5 ~1 ~3 slot.container 2 bone 9
replaceitem block ~5 ~1 ~3 slot.container 3 string 10
replaceitem block ~5 ~1 ~3 slot.container 4 gunpowder 9
replaceitem block ~5 ~1 ~3 slot.container 5 arrow 20
replaceitem block ~5 ~1 ~3 slot.container 9 lantern 10
replaceitem block ~5 ~1 ~3 slot.container 10 cherry_log 16
replaceitem block ~5 ~1 ~3 slot.container 11 cherry_sapling 5
replaceitem block ~5 ~1 ~3 slot.container 12 honey_bottle 6
replaceitem block ~5 ~1 ~3 slot.container 13 honeycomb 9
replaceitem block ~5 ~1 ~3 slot.container 14 golden_apple 6
loot insert ~5 ~1 ~3 loot "rsf/cherry_grove"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 1 string 13
replaceitem block ~-5 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 3 arrow 23
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 2
replaceitem block ~-5 ~1 ~4 slot.container 5 phantom_membrane 3
replaceitem block ~-5 ~1 ~4 slot.container 9 lantern 8
replaceitem block ~-5 ~1 ~4 slot.container 10 cherry_log 21
replaceitem block ~-5 ~1 ~4 slot.container 11 cherry_sapling 10
replaceitem block ~-5 ~1 ~4 slot.container 12 honey_bottle 4
replaceitem block ~-5 ~1 ~4 slot.container 13 honeycomb 7
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 4
loot insert ~-5 ~1 ~4 loot "rsf/cherry_grove"
loot insert ~-5 ~1 ~4 loot "chests/village/village_plains_house"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
