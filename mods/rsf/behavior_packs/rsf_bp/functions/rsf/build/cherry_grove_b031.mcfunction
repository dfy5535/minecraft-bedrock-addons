# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1823/4224 | 主题内编号: b031/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·阶梯圣火烽火台 (cherry_grove_tower_ziggurat_fire)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cherry_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cherry_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cherry_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 calcite []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 quartz_block []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 gunpowder 6
replaceitem block ~4 ~-2 ~3 slot.container 1 arrow 17
replaceitem block ~4 ~-2 ~3 slot.container 2 ender_pearl 4
replaceitem block ~4 ~-2 ~3 slot.container 3 phantom_membrane 5
replaceitem block ~4 ~-2 ~3 slot.container 4 feather 12
replaceitem block ~4 ~-2 ~3 slot.container 5 rotten_flesh 13
replaceitem block ~4 ~-2 ~3 slot.container 9 honeycomb 12
replaceitem block ~4 ~-2 ~3 slot.container 10 golden_apple 2
replaceitem block ~4 ~-2 ~3 slot.container 11 iron_ingot 7
replaceitem block ~4 ~-2 ~3 slot.container 12 emerald 6
replaceitem block ~4 ~-2 ~3 slot.container 13 amethyst_shard 9
replaceitem block ~4 ~-2 ~3 slot.container 14 bow 1
loot insert ~4 ~-2 ~3 loot "rsf/cherry_grove"
loot insert ~4 ~-2 ~3 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 cherry_planks []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 stone_bricks []
fill ~-4 ~5 ~-3 ~4 ~8 ~3 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 cherry_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~8 ~-5 ~-6 ~10 ~-5 cherry_log []
setblock ~-6 ~11 ~-5 lantern []
fill ~-6 ~8 ~5 ~-6 ~10 ~5 cherry_log []
setblock ~-6 ~11 ~5 lantern []
fill ~6 ~8 ~-5 ~6 ~10 ~-5 cherry_log []
setblock ~6 ~11 ~-5 lantern []
fill ~6 ~8 ~5 ~6 ~10 ~5 cherry_log []
setblock ~6 ~11 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~3 ~-7 cherry_log []
setblock ~-8 ~4 ~-7 lantern []
fill ~-8 ~0 ~7 ~-8 ~3 ~7 cherry_log []
setblock ~-8 ~4 ~7 lantern []
fill ~8 ~0 ~-7 ~8 ~3 ~-7 cherry_log []
setblock ~8 ~4 ~-7 lantern []
fill ~8 ~0 ~7 ~8 ~3 ~7 cherry_log []
setblock ~8 ~4 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~-2 ~0 ~-8 ~-2 ~5 ~-8 cherry_log []
fill ~2 ~0 ~-8 ~2 ~5 ~-8 cherry_log []
fill ~-3 ~5 ~-8 ~3 ~5 ~-8 cherry_slab []
fill ~-2 ~4 ~-8 ~2 ~4 ~-8 stripped_cherry_log []
setblock ~1 ~6 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 feather 15
replaceitem block ~5 ~1 ~3 slot.container 1 rotten_flesh 8
replaceitem block ~5 ~1 ~3 slot.container 2 bone 9
replaceitem block ~5 ~1 ~3 slot.container 3 string 10
replaceitem block ~5 ~1 ~3 slot.container 4 gunpowder 9
replaceitem block ~5 ~1 ~3 slot.container 5 arrow 20
replaceitem block ~5 ~1 ~3 slot.container 9 lantern 7
replaceitem block ~5 ~1 ~3 slot.container 10 cherry_log 20
replaceitem block ~5 ~1 ~3 slot.container 11 cherry_sapling 9
replaceitem block ~5 ~1 ~3 slot.container 12 honey_bottle 10
replaceitem block ~5 ~1 ~3 slot.container 13 honeycomb 6
replaceitem block ~5 ~1 ~3 slot.container 14 golden_apple 3
loot insert ~5 ~1 ~3 loot "rsf/cherry_grove"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 1 string 13
replaceitem block ~-5 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 3 arrow 23
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 2
replaceitem block ~-5 ~1 ~4 slot.container 5 phantom_membrane 3
replaceitem block ~-5 ~1 ~4 slot.container 9 lantern 5
replaceitem block ~-5 ~1 ~4 slot.container 10 cherry_log 18
replaceitem block ~-5 ~1 ~4 slot.container 11 cherry_sapling 7
replaceitem block ~-5 ~1 ~4 slot.container 12 honey_bottle 8
replaceitem block ~-5 ~1 ~4 slot.container 13 honeycomb 11
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 8
loot insert ~-5 ~1 ~4 loot "rsf/cherry_grove"
loot insert ~-5 ~1 ~4 loot "chests/village/village_plains_house"
summon allay ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-2 ~0
