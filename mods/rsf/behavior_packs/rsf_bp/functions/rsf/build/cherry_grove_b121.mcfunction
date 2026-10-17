# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1913/4224 | 主题内编号: b121/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·卫城廊柱王座大殿与地宫 (cherry_grove_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 calcite [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 calcite [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 cherry_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 calcite []
fill ~-6 ~-5 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-5 ~0 campfire []
setblock ~5 ~-5 ~0 campfire []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 feather 12
replaceitem block ~0 ~-3 ~4 slot.container 1 rotten_flesh 13
replaceitem block ~0 ~-3 ~4 slot.container 2 bone 14
replaceitem block ~0 ~-3 ~4 slot.container 3 string 15
replaceitem block ~0 ~-3 ~4 slot.container 4 gunpowder 6
replaceitem block ~0 ~-3 ~4 slot.container 5 arrow 17
replaceitem block ~0 ~-3 ~4 slot.container 9 cherry_sapling 5
replaceitem block ~0 ~-3 ~4 slot.container 10 honey_bottle 6
replaceitem block ~0 ~-3 ~4 slot.container 11 honeycomb 9
replaceitem block ~0 ~-3 ~4 slot.container 12 golden_apple 6
replaceitem block ~0 ~-3 ~4 slot.container 13 iron_ingot 11
replaceitem block ~0 ~-3 ~4 slot.container 14 emerald 10
loot insert ~0 ~-3 ~4 loot "rsf/cherry_grove"
loot insert ~0 ~-3 ~4 loot "chests/village/village_plains_house"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 feather 10
replaceitem block ~0 ~-3 ~-4 slot.container 1 rotten_flesh 11
replaceitem block ~0 ~-3 ~-4 slot.container 2 bone 12
replaceitem block ~0 ~-3 ~-4 slot.container 3 string 13
replaceitem block ~0 ~-3 ~-4 slot.container 4 gunpowder 12
replaceitem block ~0 ~-3 ~-4 slot.container 5 arrow 23
replaceitem block ~0 ~-3 ~-4 slot.container 9 cherry_sapling 4
replaceitem block ~0 ~-3 ~-4 slot.container 10 honey_bottle 5
replaceitem block ~0 ~-3 ~-4 slot.container 11 honeycomb 8
replaceitem block ~0 ~-3 ~-4 slot.container 12 golden_apple 5
replaceitem block ~0 ~-3 ~-4 slot.container 13 iron_ingot 10
replaceitem block ~0 ~-3 ~-4 slot.container 14 emerald 9
loot insert ~0 ~-3 ~-4 loot "rsf/cherry_grove"
loot insert ~0 ~-3 ~-4 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-7 ~1 ~-1 ~7 ~7 ~6 calcite []
fill ~-6 ~1 ~0 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~7 ~-6 cherry_log []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 cherry_log []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 cherry_log []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 cherry_log []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 cherry_log []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 cherry_log []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 cherry_log []
fill ~7 ~1 ~-6 ~7 ~7 ~-6 cherry_log []
fill ~-7 ~7 ~-6 ~7 ~7 ~-1 cherry_planks []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~8 ~-7 ~-8 ~8 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~8 ~8 ~-7 ~8 ~8 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-7 ~9 ~-6 ~-7 ~9 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~9 ~-6 ~7 ~9 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-6 ~6 ~9 ~6 cherry_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 cherry_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~3 ~-8 cherry_log []
setblock ~-9 ~4 ~-8 campfire []
fill ~-9 ~0 ~8 ~-9 ~3 ~8 cherry_log []
setblock ~-9 ~4 ~8 campfire []
fill ~9 ~0 ~-8 ~9 ~3 ~-8 cherry_log []
setblock ~9 ~4 ~-8 campfire []
fill ~9 ~0 ~8 ~9 ~3 ~8 cherry_log []
setblock ~9 ~4 ~8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-2 ~0 ~-9 ~-2 ~5 ~-9 cherry_log []
fill ~2 ~0 ~-9 ~2 ~5 ~-9 cherry_log []
fill ~-3 ~5 ~-9 ~3 ~5 ~-9 cherry_slab []
fill ~-2 ~4 ~-9 ~2 ~4 ~-9 stripped_cherry_log []
setblock ~2 ~6 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 bone 9
replaceitem block ~6 ~1 ~4 slot.container 1 string 10
replaceitem block ~6 ~1 ~4 slot.container 2 gunpowder 9
replaceitem block ~6 ~1 ~4 slot.container 3 arrow 20
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 7
replaceitem block ~6 ~1 ~4 slot.container 5 phantom_membrane 8
replaceitem block ~6 ~1 ~4 slot.container 9 lantern 6
replaceitem block ~6 ~1 ~4 slot.container 10 cherry_log 19
replaceitem block ~6 ~1 ~4 slot.container 11 cherry_sapling 8
replaceitem block ~6 ~1 ~4 slot.container 12 honey_bottle 9
replaceitem block ~6 ~1 ~4 slot.container 13 honeycomb 12
replaceitem block ~6 ~1 ~4 slot.container 14 golden_apple 2
loot insert ~6 ~1 ~4 loot "rsf/cherry_grove"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 gunpowder 12
replaceitem block ~-6 ~1 ~5 slot.container 1 arrow 23
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 2
replaceitem block ~-6 ~1 ~5 slot.container 3 phantom_membrane 3
replaceitem block ~-6 ~1 ~5 slot.container 4 feather 10
replaceitem block ~-6 ~1 ~5 slot.container 5 rotten_flesh 11
replaceitem block ~-6 ~1 ~5 slot.container 9 lantern 4
replaceitem block ~-6 ~1 ~5 slot.container 10 cherry_log 17
replaceitem block ~-6 ~1 ~5 slot.container 11 cherry_sapling 6
replaceitem block ~-6 ~1 ~5 slot.container 12 honey_bottle 7
replaceitem block ~-6 ~1 ~5 slot.container 13 honeycomb 10
replaceitem block ~-6 ~1 ~5 slot.container 14 golden_apple 7
loot insert ~-6 ~1 ~5 loot "rsf/cherry_grove"
loot insert ~-6 ~1 ~5 loot "chests/village/village_plains_house"
summon allay ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
